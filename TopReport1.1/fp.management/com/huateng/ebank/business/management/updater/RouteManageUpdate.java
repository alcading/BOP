package com.huateng.ebank.business.management.updater;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huateng.commquery.result.MultiUpdateResultBean;
import com.huateng.commquery.result.UpdateResultBean;
import com.huateng.commquery.result.UpdateReturnBean;
import com.huateng.ebank.business.management.operation.RouteManageUpdateOperation;
import com.huateng.ebank.framework.operation.OPCaller;
import com.huateng.ebank.framework.operation.OperationContext;
import com.huateng.ebank.framework.web.commQuery.BaseUpdate;
import com.huateng.exception.AppException;

import resource.bean.pub.WhjBranchInfo;
import resource.bean.report.SysCurrency;

public class RouteManageUpdate extends BaseUpdate {

	private static final String DATASET_ID="RouteManageEntry";
	@Override
	public UpdateReturnBean saveOrUpdate(MultiUpdateResultBean multiUpdateResultBean,
			HttpServletRequest request, HttpServletResponse respone)
			throws AppException {

		UpdateReturnBean updateReturnBean = new UpdateReturnBean();
		UpdateResultBean updateResultBean = multiUpdateResultBean.getUpdateResultBeanByID(DATASET_ID);

		WhjBranchInfo wbi = new WhjBranchInfo();
		OperationContext oc = new OperationContext();

		if(updateResultBean.hasNext())
		{
			Map map = updateResultBean.next();
			switch (updateResultBean.getRecodeState())
			{
			case UpdateResultBean.INSERT:
				oc.setAttribute(RouteManageUpdateOperation.CMD, RouteManageUpdateOperation.CMD_INSERT);
				mapToObject(wbi,map);
				break;
			case UpdateResultBean.MODIFY:
				oc.setAttribute(RouteManageUpdateOperation.CMD, RouteManageUpdateOperation.CMD_UPDATE);
				mapToObject(wbi,map);
				break;
			case UpdateResultBean.DELETE:
				oc.setAttribute(RouteManageUpdateOperation.CMD, RouteManageUpdateOperation.CMD_DELETE);
				mapToObject(wbi, map);
				break;
			default :
				break;

			}
		}
		oc.setAttribute(RouteManageUpdateOperation.IN_PARAM, wbi);
		OPCaller.call(RouteManageUpdateOperation.ID, oc);
		return updateReturnBean;
	}

}
