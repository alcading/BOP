package com.huateng.report.dataquery.getter;

import com.huateng.common.err.Module;
import com.huateng.common.err.Rescode;
import com.huateng.commquery.result.Result;
import com.huateng.commquery.result.ResultMng;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.business.common.PageQueryResult;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.report.common.ReportConstant;
import com.huateng.ebank.framework.web.commQuery.BaseGetter;
import com.huateng.exception.AppException;
import com.huateng.report.dataquery.service.WhjXfService;


/**
 * @Description: 境外银行卡交易提现明细查询
 * @Package: com.huateng.ebank.business.custadmin.getter
 * @Company: Shanghai Huateng Software Systems Co., Ltd.
 */
public class WhjXfQueryGetter extends BaseGetter {

	@Override
	public Result call() throws AppException {
		try {
			
			this.setValue2DataBus(ReportConstant.QUERY_LOG_BUSI_NAME, "银行卡境外消费明细查询");
			
			PageQueryResult pageResult = getData();
			ResultMng.fillResultByList(getCommonQueryBean(),
					getCommQueryServletRequest(), pageResult.getQueryResult(),
					getResult());
			result.setContent(pageResult.getQueryResult());
			result.getPage().setTotalPage(
					pageResult.getPageCount(getResult().getPage()
							.getEveryPage()));
			result.init();
			return result;
		} catch (CommonException e) {
			throw new AppException(Module.SYSTEM_MODULE,
					Rescode.DEFAULT_RESCODE, e.getMessage());
		} catch (AppException appEx) {
			throw appEx;
		} catch (Exception ex) {
			throw new AppException(Module.SYSTEM_MODULE,
					Rescode.DEFAULT_RESCODE, ex.getMessage(), ex);
		}
	}

	private PageQueryResult getData() throws CommonException {
		int pageIndex = getResult().getPage().getCurrentPage();
		int pageSize = getResult().getPage().getEveryPage();


		String acctno = (String) getCommQueryServletRequest().getParameterMap().get("acctno");
		String personName = (String) getCommQueryServletRequest().getParameterMap().get("personName");
		String startDate = (String) getCommQueryServletRequest().getParameterMap().get("startDate");
		
		GlobalInfo info = GlobalInfo.getCurrentInstance();
		String brno = info.getBrno();
		
		WhjXfService whjXfService = WhjXfService.getInstance();
		return whjXfService.queryWhjXf(pageIndex, pageSize,acctno, personName,startDate,brno);
	}

}
