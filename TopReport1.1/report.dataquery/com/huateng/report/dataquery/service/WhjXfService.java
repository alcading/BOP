/*
 * Created on 2004-10-12
 *
 * To change the template for this generated file go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
package com.huateng.report.dataquery.service;

import java.util.ArrayList;
import java.util.List;

import com.huateng.ebank.business.common.BaseDAOUtils;
import com.huateng.ebank.business.common.PageQueryCondition;
import com.huateng.ebank.business.common.PageQueryResult;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.ApplicationContextUtils;
import com.huateng.ebank.framework.util.DataFormat;

import resource.bean.pub.WhjTx;
import resource.bean.pub.WhjXf;
import resource.dao.base.HQLDAO;

/**
 * @author Administrator
 *
 *         To change the template for this generated type comment go to
 *         Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
public class WhjXfService {
	/**
	 * get instance.
	 *
	 * @return
	 */
	public synchronized static WhjXfService getInstance() {
		return (WhjXfService) ApplicationContextUtils.getBean(WhjXfService.class.getName());
	}

	public WhjXfService() {
	}

	public PageQueryResult queryWhjXf(int pageIndex, int pageSize, String acctno, String personName, String startDate,
			String brno) throws CommonException {
		StringBuffer sb = new StringBuffer("");
		List<Object> list = new ArrayList<Object>();
		sb.append("select xf from WhjXf xf where 1=1");
		if (!DataFormat.isEmpty(brno) && !"9999".equals(brno)) {
			sb.append(" and xf.bankCode = ? ");
			list.add(brno);
		}
		if (!DataFormat.isEmpty(acctno)) {
			sb.append(" and xf.acctno = ? ");
			list.add(acctno);
		}
		if (!DataFormat.isEmpty(personName)) {
			sb.append(" and xf.personName = ? ");
			list.add(personName);
		}
		if (!DataFormat.isEmpty(startDate)) {
			sb.append(" and xf.bizDealTime like  '%");
			sb.append(startDate);
			sb.append("%'");
		}

		sb.append(" order by xf.bizDealTime  ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		PageQueryCondition queryCondition = new PageQueryCondition();
		queryCondition.setQueryString(sb.toString());
		queryCondition.setPageIndex(pageIndex);
		queryCondition.setPageSize(pageSize);
		queryCondition.setObjArray(list.toArray());
		PageQueryResult pageQueryResult = hqldao.pageQueryByQL(queryCondition);
		return pageQueryResult;
	}

	public PageQueryResult queryWhjSend(int pageIndex, int pageSize, String startDate, String brno)
			throws CommonException {
		StringBuffer sb = new StringBuffer("");
		List<Object> list = new ArrayList<Object>();
		sb.append("select sd from WhjSend sd where 1=1");
		if (!DataFormat.isEmpty(brno) && !"9999".equals(brno)) {
			sb.append(" and sd.bankCode = ? ");
			list.add(brno);
		}
		if (!DataFormat.isEmpty(startDate)) {
			sb.append(" and sd.scsj like  '%");
			sb.append(startDate);
			sb.append("%'");
		}

		sb.append(" order by sd.scsj  ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		PageQueryCondition queryCondition = new PageQueryCondition();
		queryCondition.setQueryString(sb.toString());
		queryCondition.setPageIndex(pageIndex);
		queryCondition.setPageSize(pageSize);
		queryCondition.setObjArray(list.toArray());
		PageQueryResult pageQueryResult = hqldao.pageQueryByQL(queryCondition);
		return pageQueryResult;
	}

	public List<WhjXf> queryXf(String brno,String rq) {
		
		StringBuffer sb = new StringBuffer("");
		List<WhjXf> list = new ArrayList<WhjXf>();
		sb.append("select xf from WhjXf xf where 1=1");
		if (!DataFormat.isEmpty(brno)&&!"9999".equals(brno)) {
			sb.append(" and xf.bankCode = '" + brno+"'");
		}
		if (!DataFormat.isEmpty(rq)) {
			sb.append(" and xf.bizDealTime like  '%");
			sb.append(rq);
			sb.append("%'");
		}
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
