package com.huateng.ebank.business.management.getter;

import org.apache.commons.lang.StringUtils;

import com.huateng.common.err.Module;
import com.huateng.common.err.Rescode;
import com.huateng.commquery.result.Result;
import com.huateng.commquery.result.ResultMng;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.business.common.PageQueryCondition;
import com.huateng.ebank.business.common.PageQueryResult;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.report.common.ReportConstant;
import com.huateng.ebank.framework.web.commQuery.BaseGetter;
import com.huateng.exception.AppException;
import com.huateng.report.utils.ReportEnum;

import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;

public class WhjBranchInfoQueryGetter extends BaseGetter {
	@Override
	public Result call() throws AppException {
		// TODO Auto-generated method stub

		try {
			
			this.setValue2DataBus(ReportConstant.QUERY_LOG_BUSI_NAME, "路由信息维护查询");
			PageQueryResult queryResult = getData();
			ResultMng.fillResultByList(getCommonQueryBean(),
					getCommQueryServletRequest(), queryResult.getQueryResult(),
					getResult());
			result.setContent(queryResult.getQueryResult());
			result.getPage().setTotalPage(queryResult.getPageCount(getResult().getPage().getEveryPage()));

			result.init();
			return result;

		} catch (AppException appEx) {
			throw appEx;
		} catch (Exception ex) {
			throw new AppException(Module.SYSTEM_MODULE,
					Rescode.DEFAULT_RESCODE, ex.getMessage(), ex);
		}
	}
	private PageQueryResult getData() throws CommonException
		{

		   ROOTDAO rootdao = ROOTDAOUtils.getROOTDAO();
		   //
		   int pageSize = getResult().getPage().getEveryPage();
		   //页码
		   int pageIndex = getResult().getPage().getCurrentPage();

		   PageQueryCondition queryCondition = new PageQueryCondition();

		   StringBuffer hql = new StringBuffer(" from WhjBranchInfo wbi where 1=1 ");
           //查询条件
		   String rwhjjgbs = getCommQueryServletRequest().getParameter("rwhjjgbs");//外汇局机构标识
	
		   GlobalInfo info = GlobalInfo.getCurrentInstance();
		   String brno = info.getBrno();
		   if(StringUtils.isNotBlank(brno)&&!"9999".equals(brno)){
			   hql.append("and wbi.whjjgbs = '"+brno+"'" );
		   }
		   
		   if(StringUtils.isNotBlank(rwhjjgbs))
		   {
			   hql.append(" and wbi.whjjgbs like '%"+ rwhjjgbs+"%'");
		   }
		  
		   hql.append(" order by wbi.id");
		   queryCondition.setPageIndex(pageIndex);
		   queryCondition.setPageSize(pageSize);
		   queryCondition.setQueryString(hql.toString());

		   return (PageQueryResult) rootdao.pageQueryByQL(queryCondition);

		}

}
