/*
 * Created on 2010-08-02
 *
 * To change the template for this generated file go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
package com.huateng.service.pub;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.math.NumberUtils;
import org.apache.commons.pool.ObjectPool;
import org.apache.log4j.Logger;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
import cn.cncc.cjdp.common.utils.StringUtils;

import com.huateng.common.CommonFunction;
import com.huateng.commquery.common.CommonQueryConstants;
import com.huateng.commquery.config.CommonQueryUtil;
import com.huateng.commquery.config.bean.CommonQueryField;
import com.huateng.commquery.config.bean.base.ICommonQueryBean;
import com.huateng.commquery.config.bean.base.ICommonQueryField;
import com.huateng.commquery.process.FieldValueProcess;
import com.huateng.commquery.process.call.BaseCallGetterProcess;
import com.huateng.commquery.result.FieldData;
import com.huateng.commquery.result.Result;
import com.huateng.commquery.result.RowData;
import com.huateng.commquery.result.qryExp.ExportPool;
import com.huateng.commquery.result.qryExp.IQueryExport;
import com.huateng.commquery.result.qryExp.csv.CSVExport;
import com.huateng.ebank.business.common.ConfigReader;
import com.huateng.ebank.business.common.DAOUtils;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.business.common.PageQueryCondition;
import com.huateng.ebank.business.common.PageQueryResult;
import com.huateng.ebank.entity.dao.mng.TBLCSFileExportTskDAO;
import com.huateng.ebank.entity.data.mng.TblCSFileExportTskInf;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.ExceptionUtil;
import com.huateng.ebank.framework.web.struts.QueryExportForm;
import com.huateng.exception.AppException;
import com.huateng.exception.DomainException;
import com.huateng.util.SystemDictionaryUnit;

import freemarker.template.TemplateModelException;

/**
 * @author Administrator 批量查询结果导出 - 处理类，负责获取DAO处理对象，并进行业务处理 To change the
 *         template for this generated type comment go to
 *         Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
public class QryExpService {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger
			.getLogger(QryExpService.class);
	/**
	 * 以分页的方式，获取数据记录集
	 * @param count
	 * @return
	 */
	public List getProcTsk(int count,String tskStatu){
		// 获取DAO处理对象，负责增删查改操作
		TBLCSFileExportTskDAO expTskDAO = DAOUtils.getExportTskDAO();
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(TblCSFileExportTskInf.class);
		detachedCriteria.addOrder(Order.asc(TblCSFileExportTskInf.PROP_TSK_START_TMS));
		if(tskStatu !=null && tskStatu.trim().length()>0){
			detachedCriteria.add(Restrictions.eq(TblCSFileExportTskInf.PROP_TSK_STAT, tskStatu.trim()));
		}
		return expTskDAO.findByCriteria(detachedCriteria, count, 1);
	}
	/**
	 * 获取用户相关的任务
	 * @param userId 用户ID
	 * @param tskStatu 任务状态
	 * @return
	 */
	public List getUserTsk(String owner,String tskStatu){
		// 获取DAO处理对象，负责增删查改操作
		TBLCSFileExportTskDAO expTskDAO = DAOUtils.getExportTskDAO();
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(TblCSFileExportTskInf.class);
		if(owner !=null && owner.trim().length()>0){
			detachedCriteria.add(Restrictions.eq(TblCSFileExportTskInf.PROP_TSK_OWNER, owner.trim()));
		}
		if(tskStatu !=null && tskStatu.trim().length()>0){
			detachedCriteria.add(Restrictions.eq(TblCSFileExportTskInf.PROP_TSK_STAT, tskStatu.trim()));
		}
		return expTskDAO.findByCriteria(detachedCriteria);
	}
	/**
	 * 删除任务信息
	 * @param tskInf
	 */
	public void delTsk(TblCSFileExportTskInf tskInf){
		// 获取DAO处理对象，负责增删查改操作
		TBLCSFileExportTskDAO expTskDAO = DAOUtils.getExportTskDAO();
		expTskDAO.delete(tskInf);
	}

	public void updTskInf(TblCSFileExportTskInf tskInf){
		// 获取DAO处理对象，负责增删查改操作
		TBLCSFileExportTskDAO expTskDAO = DAOUtils.getExportTskDAO();
		expTskDAO.update(tskInf);
	}
	/**
	 * 批量任务处理过程 - 根据任务信息生成文件
	 * @param procSize
	 * 		每次处理的任务数量
	 */
	public void expTskProcess(int procSize,String ownerName)throws CommonException{
		Long beginTime = System.nanoTime();
		// 获取本次需要处理的任务信息列表 - 每次处理procSize条，状态为0表示初始状态
		//String ownerName = "server1";//暂时写死，需要从通用方法中获取
		TBLCSFileExportTskDAO expTskDAO = DAOUtils.getExportTskDAO();
		expTskDAO.getForUpdate(procSize,ownerName);
		//logger.info(">>批量查询打印锁定记录用时"+((float)(System.nanoTime()-beginTime)/1000000000)+"秒");

		Long beginTime1 = System.nanoTime();
		//获取执行中的
		PageQueryResult resultFirst = null;
		String hqlStr = "select po from TblCSFileExportTskInf po where tskOwner ='"+ ownerName +"' and tskStat = '1' order by tskStartTms ";
		PageQueryCondition pqc = new PageQueryCondition();
		pqc.setPageIndex(1);
		pqc.setPageSize(procSize);
		pqc.setQueryString(hqlStr);
		resultFirst = DAOUtils.getHQLDAO().pageQueryByQLWithCount(pqc);
		//logger.info(">>批量查询打印查询已锁定记录用时"+((float)(System.nanoTime()-beginTime1)/1000000000)+"秒");

		Long beginTime2 = System.nanoTime();
		List tskList = resultFirst.getQueryResult();
		//需放置到线程池中执行
		if (tskList != null) {
			Iterator iterator = tskList.iterator();
			while (iterator.hasNext()) {
				TblCSFileExportTskInf tskInf = (TblCSFileExportTskInf)((Object[])iterator.next())[0];
				Long beginTime3 = System.nanoTime();
				QryExpThreadPoolExecutor.addTask(tskInf);
				//logger.info(">>批量查询打印查询线程池执行用时"+((float)(System.nanoTime()-beginTime2)/1000000000)+"秒");
			}
		}
		//logger.info(">>批量查询打印查询put入线程池用时"+((float)(System.nanoTime()-beginTime2)/1000000000)+"秒");
	}
	/**
	 * 通用查询结果-批量导出数据到文件 处理过程： 获取DAO - 检查 - 组装对象 - 插入数据库
	 *
	 * @param params
	 *            请求参数
	 * @param proClassName
	 *            处理类：getterclassname
	 * @return TblCSFileExportTskInf
	 */
	public TblCSFileExportTskInf saveExpTskInf(Map params, String proClassName)
			throws CommonException {
		if (logger.isDebugEnabled()) {
			logger.debug("saveExpTskInf( ) - start"); //$NON-NLS-1$
		}
		try {
			/** 进行参数检查 **/
			if (proClassName == null || "".equals(proClassName.trim())) {
				// TODO 错误码需要重新定义
				ExceptionUtil.throwCommonException("没有找到相应的getter类", "");
			}
			// 获取DAO处理对象，负责增删查改操作
			TBLCSFileExportTskDAO expTskDAO = DAOUtils.getExportTskDAO();
			// 获取字段
			TblCSFileExportTskInf expTsk = new TblCSFileExportTskInf();
			// 执行类
			expTsk.setTskRunClass("01");
			// 任务结束时间
			expTsk.setTskEndTms("-");
			// 文件名
			expTsk.setExpFileNm((String) params
					.get(QueryExportForm.P_FILE_NAME));
			// 文件大小
			expTsk.setExpFileSize(0l);
			// 任务名称 CQID
			expTsk.setTskNm((String) params
					.get(CommonQueryConstants.COMMON_QUERY_ID));
			//任务描述
			expTsk.setTaskDesc((String)params.get(QueryExportForm.P_EXP_DESC));

			// 请求参数
			Iterator iter = params.keySet().iterator();
			StringBuffer paramStr = new StringBuffer();
			while (iter.hasNext()) {
				String key = (String) iter.next();
				Object val = params.get(key);
				if(val instanceof java.lang.String){
					paramStr.append(key);
					paramStr.append(":");
					paramStr.append((String)val);
					paramStr.append(";");
				}else{
					System.out.println("can not process type ="+val.getClass().getName());
				}
			}
			//压缩-编码
			String param = compressString(paramStr.toString());
			String[] paramList = splitStrWithLenLimit(param, 2000);
			if(paramList.length > 2) throw new CommonException("传入参数过长");
			if(paramList.length == 0) throw new CommonException("传入参数为空");


			expTsk.setTskParam1(paramList[0]);
			if(paramList.length == 2) expTsk.setTskParam2(paramList[1]);
			//System.out.println("paramStr="+paramStr.toString());

			// 记录数
			expTsk.setExpRcdNum(0l);
			// 发起人
			expTsk.setTskStartOp(GlobalInfo.getCurrentInstance().getTlrno());
			// 开始时间
			SimpleDateFormat dataFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			String startTime = dataFormat.format(new Date());
			expTsk.setTskStartTms(startTime);
			// 状态
			expTsk.setTskStat("0");
			// 主键ID
			dataFormat = new SimpleDateFormat("HHmmss");
			expTsk.setId(UUID.randomUUID().toString());
			// 将批量任务信息存入数据库
			expTskDAO.save(expTsk);
			return expTsk;
		} catch (CommonException e) {
			ExceptionUtil
					.throwCommonException(e.getErrMessage(), e.getKey(), e);
		}
		if (logger.isDebugEnabled()) {
			logger.debug("saveExpTskInf() - end"); //$NON-NLS-1$
		}
		return null;
	}

	/**
	 * 写文件头信息
	 *
	 * @throws IOException
	 */
	public void wirtHead(String[] expClsId, LinkedHashMap<?, ?> fieldsMap, IQueryExport export, String encoding, Map userParams) throws IOException {
		// List<String[]>
		List colsStr = new ArrayList();
		// 定义文件头信息
		String[] headDesc = new String[expClsId.length];
		for (int i = 0; i < expClsId.length; i++) {
			if (fieldsMap.containsKey(expClsId[i])) {
				CommonQueryField field = (CommonQueryField) fieldsMap.get(expClsId[i]);
				String desc = field.getAnyValue("desc");
				headDesc[i] = new String(desc.getBytes(), encoding);
			} else {
				// 如果描述未找到，默认是字段名
				headDesc[i] = expClsId[i];
			}
		}
		if (userParams.containsKey("PageQryExp_title")) {
			colsStr.add(new String[]{"TITLE", String.valueOf(Math.max(headDesc.length-1, 0)), (String) userParams.get("PageQryExp_title")});
		}
		colsStr.add(headDesc);
		// 将头信息写入文件
		export.writeHead(colsStr);
	}

	/**
	 * TODO 写文件尾信息,未实现
	 */
	public void wirtTail(String[] tailStr, LinkedHashMap<?, ?> fieldsMap, IQueryExport export, String encoding) throws IOException {

	}

	/**
	 * 写入文件内容
	 *
	 * @throws AppException
	 * @throws TemplateModelException
	 */
	public void wirtDetail(QueryExportForm form, ICommonQueryBean commonQueryBean, IQueryExport export, Map userParams)
			throws IOException, AppException, TemplateModelException {
		// 需要导出的字段
		String[] fileIds = form.getColumnSort().split(",");
		// 开始页
		int startPage = Integer.parseInt(form.getStartPage());
		// 结束页
		int endPage = Integer.parseInt(form.getEndPage());
		// 用户自定义的参数
		Map otherParams = null;
		if (userParams != null && (!userParams.isEmpty())) {
			otherParams = userParams;
		} else {
			otherParams = new HashMap();
		}

		////////////////////////////////////////////////////// zhaozhiguo begin
		boolean hasMore = true;//是否还有数据
		int everyPage = Integer.parseInt(form.getEveryPage());//XML中定义的pageSize
		long maxsize = everyPage * (endPage - startPage + 1L);//最大可能下载记录数
		long sumsize = 0L;
        //已导出笔数与导出的总笔数
        otherParams.put("exp_cur_num","0");
        otherParams.put("exp_sum_num","0");
		if(form.isExpAll()) {//批量下载
			logger.info("=========批量导出========");
			int perfetch = Integer.parseInt((String) otherParams.get("perfetch"));//每页读取条数
			String tmpEveryPage = String.valueOf(Math.min(maxsize, perfetch));//总记录数与每页读取数最小值
			otherParams.put(CommonQueryConstants.PAGE_EVERYPAGE, tmpEveryPage);
            logger.debug("=========每页读取条数======"+perfetch);
            logger.debug("=========实际读取条数======"+tmpEveryPage);
			
		} else {
            logger.info("=========联机导出========");
            int maxpage = Integer.parseInt(form.getMaxpage());//联机最大支持页
            endPage = Math.min(startPage+maxpage-1, endPage);
            logger.debug("=========最大支持页======"+maxpage);
            logger.debug("=========实际导出页======"+endPage);
            
		}
		//////////////////////////////////////////////////////zhaozhiguo end
		
		for (int currentPage = startPage; currentPage <= endPage && hasMore; currentPage++) {
			// 每次调用，设置不同的页码
			otherParams.put(CommonQueryConstants.PAGE_NEXTPAGE, String.valueOf(currentPage));
			// 调用XML中定义的getterclassname属性
			Result result = BaseCallGetterProcess.processSync(commonQueryBean.getId(), form.getRequest(), form.getResponse(),
					otherParams);
			List data = result.getData();
			//zhaozhiguo
			//如果取得的当前页数数据无空或小于分页大小,则说明已无数据
			if (data.isEmpty() || data.size() < everyPage) {
				hasMore = false;
			}
			List qryData = new ArrayList();
			for (int i = 0; i < data.size(); i++) {
				//zhaozhiguo
				//取得的数据总条数 大于 批量下载指定的总条数(结束页-起始页+1)*分页大小,刚说明数据已经取够了
				if (++sumsize > maxsize) {
					hasMore = false;
					break;
				}
				// 获取行数据
				RowData row = (RowData) data.get(i);
				String[] rowData = new String[fileIds.length];
				for (int j = 0; j < fileIds.length; j++) {
					FieldData field = row.getField(fileIds[j]);
					if (field == null) {
						rowData[j] = " ";
					} else {
						rowData[j] = new String(field.toString().getBytes(), form.getFileEnCode());
						ICommonQueryField fBean = commonQueryBean.getField(fileIds[j]);
						String translated = fBean.getAnyValue(CommonQueryConstants.FIELD_TRANSLATED);
						String paramMethod = fBean.getAnyValue(CommonQueryConstants.FIELD_METHOD);
						// XML配置中的method已在BaseCallGetterProcess.processSync中做完，如果translated不为空，则需要转换
						if (translated != null && translated.trim().length() > 0) {
							// 现只对LIST和DATA_DIC进行处理
							List args = new ArrayList();
							if (translated.toUpperCase().startsWith("LIST")) {
								// 例如：LIST:0,男;1,女
								String[] trans = translated.split(":");
								if (trans[1] != null) {
									String[] ops = trans[1].split(";");
									for (int x = 0; x < ops.length; x++) {
										if (ops[x] != null && (!"".equals(ops[x].trim()))) {
											String[] vals = ops[x].split(",");
											if (vals.length == 2) {
												if (vals[0].trim().equalsIgnoreCase(rowData[j])) {
													rowData[j] = vals[1].trim();
												}
											}
										}
									}
								}
							}
							/**mod by abudula at 2010-8-31 start**/
							else if (translated.toUpperCase().startsWith("CQ:")){
								//先不处理
							}
							else{
								//目前DATA_DIC写死的
								if(translated.toUpperCase().startsWith("DATA_DIC")){
									String[]  trans= translated.split("\\.");
									String translatedValue = SystemDictionaryUnit.getFieldDesc(trans[0],trans[1],rowData[j]);
									if (translatedValue != null) {
										rowData[j] = translatedValue;
									}
								}

							}
						}

						//对method 方法起作用
						if(paramMethod != null &&
								paramMethod.trim().length()!=0 &&
								!paramMethod.equalsIgnoreCase(CommonQueryConstants.ELEMENT_METHOD_NONE)){
								rowData[j] = FieldValueProcess.process(form.getRequest(),fBean,rowData[j]);
						}
						/**mod by abudula at 2010-8-31 end**/
					}
					/* modify by shen_antonio 2011-8-3 JIRA: BMSA-28 begin 
					 * for csv data format.*/
					/* modify by shen_antonio 2011-12-28 JIRA: FPP-7 begin .*/
					if(export instanceof CSVExport){
						ICommonQueryField fBean = commonQueryBean.getField(fileIds[j]);
						String dataType = fBean.getAnyValue(CommonQueryConstants.FIELD_DATATYPE);
						if(StringUtils.isEmpty(dataType) || StringUtils.equalsIgnoreCase(dataType, "string")){
							if(NumberUtils.isNumber(rowData[j]) ){
								BigDecimal bd = NumberUtils.createBigDecimal(rowData[j]).abs();
								if(bd.scale()>6 || bd.precision() > 11){
									rowData[j] = "=\"" + rowData[j] + "\"";//String datatype Value format for csv display
								}else{
									//ignore;
								}
							}else{
								//ignore;
							}
						}else{
							//ignore
						}
					}else{
						//ignore
					}
					/* modify by shen_antonio 2011-12-28 JIRA: FPP-7 end.*/
					/* mdify by shen_antonio 2011-8-3 JIRA: BMSA-28 end .*/
				}
				// 向结果中添加转换后的行数据
				qryData.add(rowData);
			}
			// 将数据写入输出流
			export.writeDetails(qryData);
			String num = String.valueOf(Long.valueOf((String) otherParams.get("exp_cur_num")) + qryData.size());
	        otherParams.put("exp_cur_num", num);
			otherParams.put("exp_sum_num", num);
		}
	}

	/**
	 * 批量查询下载生成文件
	 * @param tskList 待处理任务列表，已update 状态和owner
	 */
	public void genExportBatch(TblCSFileExportTskInf tskInf){
			try{
				tskInf.setTskStat("2");//先设置为正在执行
				this.updTskInf(tskInf);

				MockHttpServletRequest request = new MockHttpServletRequest();
				MockHttpServletResponse response = new MockHttpServletResponse();
				
				QueryExportForm expForm = new QueryExportForm(request, response);
				// 恢复参数，将String分解，转换成键值对
				Map params = new HashMap();
				//拼接串
				String paramStr = tskInf.getTskParam1() + (tskInf.getTskParam2()== null? "":tskInf.getTskParam2());
				
				//解压缩-解码
				paramStr = decompressString(paramStr);
				
				String[] para = paramStr.split(";");
				for (int i = 0; i < para.length; i++) {
					if (para[i] != null && (para[i].indexOf(':') != -1)) {
						String[] p = para[i].split(":");
						if (p.length == 2) {
							params.put(p[0].trim().trim(), p[1].trim().trim());
						//add by zhaozhiguo
						} else if (p.length == 1) {
							params.put(p[0].trim().trim(), "");
						}
					}

				}
				

				//构造虚拟的GlobalInfo
				GlobalInfo gd = new GlobalInfo();
				gd.setTlrno((String)params.get("global_userid"));
				gd.setBrcode((String)params.get("global_brcode"));
				gd.setBrno((String)params.get("global_brhid"));
				gd.setBrClass(((String)params.get("global_brhclass")));
				HttpSession session = request.getSession();
				gd.setSessionId(session.getId());
				session.setAttribute(GlobalInfo.KEY_GLOBAL_INFO, gd);
				
				
				// CQID
				String cqId = (String) params.get(CommonQueryConstants.COMMON_QUERY_ID);
				expForm.setCqId(cqId.trim());
				// 文件类型
				String fileType = (String) params.get(cqId+"_"+QueryExportForm.P_EXP_TYPE);
				if (fileType == null) {//参数应该是expType
					fileType = (String) params.get(QueryExportForm.P_EXP_TYPE);
				}
				if (fileType == null) {
					fileType = "CSV";
				} else {
					fileType = fileType.toUpperCase();
				}
				//下载文件是否需要压缩，默认不需要压缩
				expForm.setZipFlag(false);
				String zip = (String)params.get(cqId+"_"+QueryExportForm.P_ZIP_FLAG);
				if(zip != null && (!"".equals(zip))){
					if("1".equals(zip.trim())){expForm.setZipFlag(true);}
				}
				// 导出字段的顺序
				String els = (String) params.get(cqId+"_"+QueryExportForm.P_COL_SORT_NAME);
				expForm.setColumnSort(els);
				//批量下载
				expForm.setExpAll(true);
				expForm.setExportType(fileType);
				// 开始页码
				String startPage = (String) params.get(cqId+"_"+QueryExportForm.P_START_PAGE);
				expForm.setStartPage(startPage);
				// 结束页码
				String endPage = (String) params.get(cqId+"_"+QueryExportForm.P_END_PAGE);
				expForm.setEndPage(endPage);
				
				//zhaozhiguo每页大小
				String everyPage = (String) params.get(CommonQueryConstants.PAGE_EVERYPAGE);
				expForm.setEveryPage(everyPage);
				
				// 文件名，包含完整的路径
				String fileName = tskInf.getExpFileNm();

				File file = new File(fileName);
				String folderPath = file.getParent() ;
				CommonFunction.mkDir(folderPath);

				// 文件输出流
				FileOutputStream out;
				out = new FileOutputStream(fileName);
				expForm.setFileName(fileName);
				// 查询结果导出处理
				genExport(expForm, out, params);
				//更改批量任务的状态为已完成 0:初始状态 1:准备执行 2:正在执行 3:任务完成 4执行失败
				tskInf.setTskStat("3");
				
				//add by zhaozhiguo 设置文件大小,导出笔数
				tskInf.setExpFileSize(file.length());
				tskInf.setExpRcdNum(Long.valueOf((String) params.get("exp_cur_num")));
				tskInf.setExpRcdSumNum(Long.valueOf((String) params.get("exp_sum_num")));
				this.updTskInf(tskInf);
			} catch (Exception e) {
				// TODO 记录错误日志 -- 未实现
				e.printStackTrace();
				tskInf.setTskStat("4");
			} finally{
				//结束时间
				SimpleDateFormat dataFormat = new SimpleDateFormat("yyyyMMddHHmmss");
				String endTime = dataFormat.format(new Date());
				tskInf.setTskEndTms(endTime);
				this.updTskInf(tskInf);
			}
	}

	/**
	 * 通用下载处理方法
	 *
	 * @param form
	 *            接收到的参数
	 * @param outStream
	 *            输出流，如果为空，则默认取response的输出流,不为空时一定是文件输出流
	 * @throws AppException
	 * @throws IOException
	 */
	public void genExport(QueryExportForm form, OutputStream outStream, Map userParams) throws DomainException {
		// 对象缓冲池
		ObjectPool pool = null;
		IQueryExport export = null;
		// 导出的字段信息
		String[] sortFields = null;
		// 文件输出流
		OutputStream out = outStream;
		try {
			HttpServletResponse response = form.getResponse();
			HttpServletRequest request = form.getRequest();
			// CommonQueryBean
			ICommonQueryBean commonQueryBean = CommonQueryUtil.getCommonQueryBean(form.getCqId());
			// 设置输出编码
			String encoding = commonQueryBean.getPageExpConf("encoding");
			form.setFileEnCode(getAnyValueDefault(encoding, "UTF-8"));
			// 取得配置文件中的字段信息
			LinkedHashMap<?, ?> fieldsMap = commonQueryBean.getFields();
			// 判断生成类型文件、编码
			String type = getAnyValueDefault(form.getExportType(), "csv").toLowerCase();
			

			//设置联机最大支持页数
			String maxpage = commonQueryBean.getPageExpConf("maxpage");
			form.setMaxpage(getAnyValueDefault(maxpage, ConfigReader.getProperty("PageQryExp_maxpage")));
			

			// 输出流，默认取response中的输出流
			if (out == null) {
				out = response.getOutputStream();
			}
			// 下载文件是否需要压缩
			if (form.isZipFlag()) {
				// 压缩文件response头部信息
				response.setContentType("application/zip; " + "charset=" + form.getFileEnCode().toUpperCase());
				//支持Https
				response.setHeader("Pragma","public");
				String disFileName = getAnyValueDefault(form.getFileName(), "qryExpZip");
				disFileName = new String(disFileName.getBytes("GBK"), "8859_1");
				response.setHeader("Content-disposition", "attachment;filename=" + disFileName
						+ ".zip");
				out = new ZipOutputStream(out);
				String fileName = getAnyValueDefault(form.getFileName(), "downloadFile");
				/*
				if(fileName.indexOf(File.separator) != -1){fileName = fileName.substring(fileName.indexOf(File.separator)+1);}
				if(fileName.indexOf(".")!= -1){
					fileName = fileName.substring(0,fileName.indexOf("."));
				}
				*/
				//Zip后的文件名中文乱码,写死压缩的文件名
				fileName = "downloadFile";
				((ZipOutputStream) out).putNextEntry(new ZipEntry(fileName + "." + type));
			} else {
				// 非压缩文件response头部信息
				response.setContentType("application/" + type + "; " + "charset=" + form.getFileEnCode().toUpperCase());
				//支持Https
				response.setHeader("Pragma","public");
				String disFileName = getAnyValueDefault(form.getFileName(), "qryExpZip");
				disFileName = new String(disFileName.getBytes("GBK"), "8859_1");
				response.setHeader("Content-disposition", "attachment;filename="
						+ disFileName + "." + type);
			}
			/*设置IE特殊的扩展头 保证可以直接打开*/
			response.setHeader("Cache-Control", "must-revalidate, post-check=0, pre-check=0");
			// 根据文件下载类型获取连接池
			pool = ExportPool.getExportPool(type.toUpperCase());
			// 获取导出对象
			export = (IQueryExport) (pool.borrowObject());
			// 设置输出流
			export.setOutPutStream(out);

			// 输出字段的排序和选择的限制
			String columnSort = form.getColumnSort();
			// 没有字段，默认展现值和Fields 一样
			if (columnSort == null || columnSort.length() < 1) {
				columnSort = commonQueryBean.toFieldString();
				form.setColumnSort(columnSort);
			}
			sortFields = columnSort.split(",");
			// ------写文件头信息
			wirtHead(sortFields, fieldsMap, export, form.getFileEnCode(), userParams);
			// 写文件体
			wirtDetail(form, commonQueryBean, export, userParams);
			// TODO 写文件尾， 未实现
			wirtTail(null, null, null, form.getFileEnCode());
			// 手动关闭 关闭输出流- 清理对象
			export.clear();
		} catch (Exception e) {
			e.printStackTrace();
			throw new DomainException("",e);
		} finally {
			try {
				if (null != export) {
					// 返回使用的对象到连接池中
					pool.returnObject(export);
				}
			} catch (Exception e) {
				// ignored
			}

		}
	}

	/**
	 * 字符串处理
	 *
	 * @param value
	 * @param defaultValue
	 * @return
	 */
	public static String getAnyValueDefault(String value, String defaultValue) {

		if (value != null && !"".equals(value)) {
			return value;
		} else {
			return defaultValue;
		}
	}

	/**
	 * 拆分字符串为几个子串，每个字串的字节长不能超过maxLen
	 * @param inputStr 出入值
	 * @param maxLen 每个拆分后的值最大长度(字节长)
	 * @return
	 */
	public String[] splitStrWithLenLimit(String inputStr,int maxLen){
		int byteLen = maxLen/2;//
		if(byteLen == 0) byteLen = 1;//

		int inputLen = inputStr.length();
		int dealNum = inputLen%byteLen == 0? inputLen/byteLen: inputLen/byteLen+1;

		String[] resultArray = new String[dealNum];//return array
		for(int index = 0 ;index< dealNum-1;index++){
			resultArray[index] = inputStr.substring(byteLen*index, byteLen*(index+1));
		}

		resultArray[dealNum-1] = inputStr.substring(byteLen*(dealNum-1),inputStr.length());//last one

		return resultArray;
	}

	private String compressString(String input) {
		ByteArrayOutputStream baos = null;
		GZIPOutputStream gzip = null;
		try {
			baos = new ByteArrayOutputStream();
			gzip = new GZIPOutputStream(baos);
			
			gzip.write(input.getBytes());
			gzip.finish();
			byte[] bytes = baos.toByteArray();
			BASE64Encoder encoder = new BASE64Encoder();
			return encoder.encode(bytes);
		} catch (IOException e) {
			return input;
		} finally {
			try {
				if (gzip != null)
					gzip.close();
				if (baos != null)
					baos.close();
			} catch (IOException e) {
			}
		}
	}

    private String decompressString(String input) {
		BASE64Decoder decoder = new BASE64Decoder();
		ByteArrayInputStream bais = null;
		GZIPInputStream gzip = null;
		ByteArrayOutputStream baos = null;
		try {
			bais = new ByteArrayInputStream(decoder.decodeBuffer(input));
			gzip = new GZIPInputStream(bais);
			baos = new ByteArrayOutputStream();
			
			byte[] buf = new byte[1024];
			int num = -1;
			while ((num = gzip.read(buf, 0, buf.length)) != -1) {
				baos.write(buf, 0, num);
			}
			byte[] bytes = baos.toByteArray();
			return new String(bytes);
		} catch (IOException e) {
			return input;
		} finally {
			try {
				if (gzip != null)
					gzip.close();
				if (baos != null)
					baos.close();
			} catch (IOException e) {
			}
		}
	}

}

