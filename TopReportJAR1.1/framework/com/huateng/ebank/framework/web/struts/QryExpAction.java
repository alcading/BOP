/**
 *
 */
package com.huateng.ebank.framework.web.struts;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.huateng.common.Code;
import com.huateng.commquery.common.CommonQueryConstants;
import com.huateng.commquery.config.CommonQueryUtil;
import com.huateng.commquery.config.bean.base.ICommonQueryBean;
import com.huateng.ebank.business.common.ConfigReader;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.operation.OperationContext;
import com.huateng.common.DataFormat;
import com.huateng.exception.AppException;
import com.huateng.exception.DomainException;
import com.huateng.service.pub.QryExpService;
import com.huateng.view.freemarker.SysDicStrMethod;

/**
 * Title: QryExpAction Description: Copyright: Copyright (c) 2010 Company:
 * Shanghai Huateng Software Systems Co., Ltd.
 * 查询结果导出处理类,继承自<com.huateng.mvc.struts.action.BaseAction>，
 * 如不满足需求，可继承QryExpAction， 并重写wirtHead、wirtDetail和wirtTail方法
 *
 * @author shen_antonio
 * @version 1.1, 2007-11-13
 */
public class QryExpAction extends com.huateng.mvc.struts.action.BaseAction {

	private static SysDicStrMethod sysDic = new SysDicStrMethod();

	/**
	 * 接受参数，处理request请求
	 */
	public ActionForward safeExecute(ActionMapping actionMapping, ActionForm actionForm, HttpServletRequest request,
			HttpServletResponse response) throws DomainException, IOException {
		QueryExportForm form = new QueryExportForm(request, response);
		//参数
		Map params = new HashMap();
		request.setCharacterEncoding("GB18030");
		form.setResponse(response);
		form.setRequest(request);
		// 获取本次下载请求对应的CQID
		String cqId = request.getParameter(CommonQueryConstants.COMMON_QUERY_ID);
		form.setCqId(Code.decode(cqId));
		// 导出的文件类型
		String expType = request.getParameter(QueryExportForm.P_EXP_TYPE);
		if (expType != null && (!"".equals(expType))) {
			form.setExportType(expType);
		}
		// form name 为cqId+导出字段的顺序
//		String els = request.getParameter(cqId+"_"+QueryExportForm.P_COL_SORT_NAME);
		String els = Code.decode(request.getParameter(cqId+"_"+QueryExportForm.P_COL_SORT_NAME));
		form.setColumnSort(els);
		// 下载文件是否需要压缩，默认不需要压缩
		form.setZipFlag(false);
		String zip = request.getParameter(cqId+"_"+QueryExportForm.P_ZIP_FLAG);
		if (zip != null && (!"".equals(zip))) {
			if ("1".equals(zip.trim())) {
				form.setZipFlag(true);
			}
		}
		// 下载开始页码
		String startPage = request.getParameter(cqId+"_"+QueryExportForm.P_START_PAGE);
		if (startPage == null || "".equals(startPage)) {
			// 默认起始页为1
			form.setStartPage("1");
		} else {
			form.setStartPage(startPage.trim());
		}
		// 下载开始页码
		String endPage = request.getParameter(cqId+"_"+QueryExportForm.P_END_PAGE);
		String pageCount = request.getParameter(QueryExportForm.P_PAGE_COUNT);
		if(endPage != null && (!"".equals(endPage.trim()))){
			form.setEndPage(endPage.trim());
		}else if(pageCount != null && (!"".equals(pageCount.trim()))){
			form.setEndPage(pageCount.trim());
		}else{
			// 默认结束页为1
			form.setEndPage("1");
		}
		//每页大小
		String pageSize = request.getParameter(CommonQueryConstants.PAGE_EVERYPAGE);
		form.setEveryPage(pageSize);

		//文件名称
		String fileName = Code.decode(request.getParameter(cqId+"_"+QueryExportForm.P_FILE_NAME));
		if (StringUtils.isBlank(fileName)) {
			ICommonQueryBean commonQueryBean = null;
			try {
				commonQueryBean = CommonQueryUtil.getCommonQueryBean(form.getCqId());
			} catch (AppException e1) {
				throw new IOException(e1.getMessage());
			}
			fileName = commonQueryBean.getPageExpConf("desc");
			if (StringUtils.isBlank(fileName)) {
				fileName = ConfigReader.getProperty("PageQryExp_filename");
			}

			String title = commonQueryBean.getPageExpConf("title");
			if (title != null) {
				params.put("PageQryExp_title", title);
			}
		}
		form.setFileName(fileName);

		// 是否全部下载 -- 批量下载
		form.setExpAll(false);
		String expAll = request.getParameter(cqId+"_"+QueryExportForm.P_EXP_ALL);
		if (expAll != null && (!"".equals(expAll))) {
			if ("1".equals(expAll.trim())) {

				//是否导出所有页
				String allPage = request.getParameter(cqId+"_"+QueryExportForm.P_ALL_PAGE);
				if ("1".equals(allPage)) {
					form.setEndPage(String.valueOf(Integer.MAX_VALUE));
				}

				// 批量下载
				form.setExpAll(true);
				String rsp = proBatch(form);
				response.getWriter().write(rsp);
				return null;
			}
		}
		// 查询结果导出处理
		QryExpService qryService = new QryExpService();
		qryService.genExport(form, null, params);
		return null;
	}

	/**
	 * 查询结果-批量下载,具体实现
	 *
	 * @param cqId
	 * @param params
	 */
	public String proBatch(QueryExportForm form) {
		OperationContext operContext = new OperationContext();
		ICommonQueryBean commonQueryBean = null;
		try {
			commonQueryBean = CommonQueryUtil.getCommonQueryBean(form.getCqId());
		} catch (AppException e1) {
			//TODO 记录错误日志，---- 未实现
			e1.printStackTrace();
		}

		//参数
		Map params = new HashMap();
		//request 参数
		Enumeration paramNms = form.getRequest().getParameterNames();
		String paramId, paramVal;
		while (paramNms.hasMoreElements()) {
			paramId = (String) paramNms.nextElement();
			paramVal = Code.decode(form.getRequest().getParameter(paramId));
			params.put(paramId, paramVal);
		}
		//CQID
		params.put(CommonQueryConstants.COMMON_QUERY_ID,form.getCqId());
		//排序后的字段名
		if(form.getColumnSort()!=null){
			//del by zhaozhiguo 重复
			//params.put(QueryExportForm.P_COL_SORT_NAME, form.getColumnSort());
		}
		//结束页码
		if(form.getEndPage()!=null){
			params.put(QueryExportForm.P_END_PAGE, form.getEndPage());
		}
		//起始页码
		if(form.getEndPage()!=null){
			params.put(QueryExportForm.P_START_PAGE, form.getStartPage());
		}
		//zhaozhiguo
		try {

			//结束页码
			params.put(form.getCqId()+"_"+QueryExportForm.P_END_PAGE, form.getEndPage());
			// XML定义的每页页数大小
			params.put(CommonQueryConstants.PAGE_EVERYPAGE, form.getEveryPage());

			// 设置批量每次读取页数大小
			String perfetch = commonQueryBean.getPageExpConf("perfetch");
			params.put("perfetch", StringUtils.isBlank(perfetch) ? ConfigReader
					.getProperty("PageQryExp_perfetch") : perfetch);

			// 获取GlobalInfo的值
			GlobalInfo gd = GlobalInfo.getCurrentInstance();
			params.put("global_userid", gd.getTlrno());
			params.put("global_brcode", gd.getBrcode());
			params.put("global_brhid", gd.getBrno());
			params.put("global_brhclass", gd.getBrClass());
		} catch (CommonException e1) {
			e1.printStackTrace();
		}


		//描述
		String desc = commonQueryBean.getPageExpConf("desc");
		if(desc == null) {
			try {
				desc = ConfigReader.getProperty("PageQryExp_filename");
			} catch (CommonException e2) {
				e2.printStackTrace();
			}
		}
		params.put(QueryExportForm.P_EXP_DESC, desc);

		//title
		String title = commonQueryBean.getPageExpConf("title");
		if (title != null) {
			params.put("PageQryExp_title", title);
		}

		//文件名
		//暂时写死，待从系统配置表中查询tmp目录
		String filePath = commonQueryBean.getPageExpConf("directory");
		try {
			filePath = StringUtils.isBlank(filePath) ? ConfigReader.getProperty("PageQryExp_directory") : filePath;
		} catch (CommonException e1) {
			e1.printStackTrace();
		}
		if(!filePath.endsWith("/") && !filePath.endsWith("\\")){filePath = filePath + File.separator;}
		
		
		File downDir = new File(filePath);
		if(!downDir.isDirectory() && !downDir.exists()){
			try {
				FileUtils.forceMkdir(downDir);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		String fileName = form.getFileName();
		//未设置取描述信息
		if(DataFormat.isEmpty(fileName)) fileName = desc;
		fileName += UUID.randomUUID().toString();

		SimpleDateFormat dataFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		if(form.isZipFlag()){
			params.put(QueryExportForm.P_FILE_NAME,filePath+ fileName +".zip");
		}else{
			params.put(QueryExportForm.P_FILE_NAME,filePath+ fileName +"."+form.getExportType());
		}



		String error = null;
		try{
			/*.保存批量信息*/
			GlobalInfo globalInfo = GlobalInfo.getCurrentInstance();
			//获取get类
			String proClassName = commonQueryBean.getAnyValue("getterclassname");
			// 批量任务
			QryExpService qryExpTskService = new QryExpService();
			//保存批量信息
			qryExpTskService.saveExpTskInf(params,proClassName);
		}catch(CommonException e){
			//TODO 记录错误日志，---- 未实现
			e.printStackTrace();
			error = e.getMessage();
		}

		String msg = "<div style='color:black;'><div style='text-decoration:none'>批量下载已成功执行！</div>";
		msg += "<div><span>文件名为:</span><span style='font-weight:bold;color:blue'>" + desc + "." + (form.isZipFlag() ? "zip" : form.getExportType()) + "</span></div></div>";
		if(error != null ) msg = "批量下载执行失败:" + error;
		StringBuffer rspStr = new StringBuffer();
		rspStr.append("<script language=\"javascript\" src=\""+form.getRequest().getContextPath()+"/templets/lib/popup_message.js\"></script>");
		rspStr.append("<script language=\"javascript\">");
		rspStr.append("var MSG1 = new POPUP_MESSAGE(\"aa\",200,120,\"消息提示：\",\"\",\"" + msg + "\");");
		rspStr.append("MSG1.rect(null,null,null,screen.height-50);");
		rspStr.append("MSG1.speed= 20;");
		rspStr.append("MSG1.step = 10;");
		rspStr.append("MSG1.show();");
		rspStr.append("POPUP_MESSAGE.prototype.oncommand=function(){window.top.doWork('999998','批量下载','/fpages/pageqryexp/ftl/mydownload.ftl');}");
		rspStr.append("</script>");
		//return "<script language=\"javascript\">alert(\""+"批量下载已成功执行！"+"\");</script>";
		return rspStr.toString();
	}

	/**
	 * 校验 request object 的 合法性, 特有类特别处理
	 *
	 * @param object
	 */
	public static void rules(Object object) throws AppException {

		if (object == null) {
			// 对象为空
			throw new AppException();
		}
		// 判断Object 实体类
		if (object instanceof QueryExportForm) {

			if (((QueryExportForm) object).getFileBody() == null || ((QueryExportForm) object).getFileBody().size() == 0) {
				// 下载文件体为空
				throw new AppException();
			}
			// String type = ((QueryExportForm)object).getExportType();

		}

	}

	@Override
	public String getTransId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean safePrivi(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return false;
	}
}
