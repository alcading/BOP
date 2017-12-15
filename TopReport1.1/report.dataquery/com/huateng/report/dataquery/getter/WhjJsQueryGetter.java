package com.huateng.report.dataquery.getter;

import java.text.SimpleDateFormat;

import org.apache.log4j.Logger;

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
import com.huateng.report.dataquery.service.WhjJsService;

/**
 * @Description: 境外银行卡交易提现明细查询
 * @Package: com.huateng.ebank.business.custadmin.getter
 * @Company: Shanghai Huateng Software Systems Co., Ltd.
 */
public class WhjJsQueryGetter extends BaseGetter {

	private static final Logger logger = Logger.getLogger(WhjJsQueryGetter.class);

	@Override
	public Result call() throws AppException {
		try {

			this.setValue2DataBus(ReportConstant.QUERY_LOG_BUSI_NAME, "反馈格式错误信息");

			PageQueryResult pageResult = getData();
			ResultMng.fillResultByList(getCommonQueryBean(), getCommQueryServletRequest(), pageResult.getQueryResult(),
					getResult());
			result.setContent(pageResult.getQueryResult());
			result.getPage().setTotalPage(pageResult.getPageCount(getResult().getPage().getEveryPage()));
			result.init();
			return result;
		} catch (CommonException e) {
			throw new AppException(Module.SYSTEM_MODULE, Rescode.DEFAULT_RESCODE, e.getMessage());
		} catch (AppException appEx) {
			throw appEx;
		} catch (Exception ex) {
			throw new AppException(Module.SYSTEM_MODULE, Rescode.DEFAULT_RESCODE, ex.getMessage(), ex);
		}
	}

	private PageQueryResult getData() throws CommonException {
		int pageIndex = getResult().getPage().getCurrentPage();
		int pageSize = getResult().getPage().getEveryPage();

		String jgbs = (String) getCommQueryServletRequest().getParameterMap().get("jgbs");
		String rq = (String) getCommQueryServletRequest().getParameterMap().get("startDate");
		if (!"".equals(rq) && rq != null) {
			String year = rq.substring(0, 4);
			String month = rq.substring(5, 7);
			String day = rq.substring(8, 10);
			rq = year + month + day;
		}
		GlobalInfo info = GlobalInfo.getCurrentInstance();
		String brno = info.getBrno();
		logger.debug(rq);

		WhjJsService whjJsService = WhjJsService.getInstance();
		return whjJsService.queryWhjJs(pageIndex, pageSize, jgbs, rq, brno);
	}

}
