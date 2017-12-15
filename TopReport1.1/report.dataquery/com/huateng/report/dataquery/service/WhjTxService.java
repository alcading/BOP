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
import resource.dao.base.HQLDAO;

/**
 * @author Administrator
 *
 *         To change the template for this generated type comment go to
 *         Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
public class WhjTxService {

	/**
	 * get instance.
	 *
	 * @return
	 */
	public synchronized static WhjTxService getInstance() {
		return (WhjTxService) ApplicationContextUtils.getBean(WhjTxService.class.getName());
	}

	public WhjTxService() {
	}

	public PageQueryResult queryWhjTx(int pageIndex, int pageSize, String acctno,String personName, 
			String startDate, String brno)
			throws CommonException {
		StringBuffer sb = new StringBuffer("");
		List<Object> list = new ArrayList<Object>();
		sb.append("select tx from WhjTx tx where 1=1");
		if (!DataFormat.isEmpty(brno)&&!"9999".equals(brno)) {
			sb.append(" and tx.bankCode = ? ");
			list.add(brno);
		}
		if (!DataFormat.isEmpty(acctno)) {
			sb.append(" and tx.acctno = ? ");
			list.add(acctno);
		}
		if (!DataFormat.isEmpty(personName)) {
			sb.append(" and tx.personName = ? ");
			list.add(personName);
		}
		if (!DataFormat.isEmpty(startDate)) {
			sb.append(" and tx.bizDealTime like  '%");
			sb.append(startDate);
			sb.append("%'");
		}
		
		sb.append(" order by tx.bizDealTime  ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		PageQueryCondition queryCondition = new PageQueryCondition();
		queryCondition.setQueryString(sb.toString());
		queryCondition.setPageIndex(pageIndex);
		queryCondition.setPageSize(pageSize);
		queryCondition.setObjArray(list.toArray());
		PageQueryResult pageQueryResult = hqldao.pageQueryByQL(queryCondition);
		return pageQueryResult;
	}

	public List<WhjTx> queryTx(String brno,String rq) {
		
		StringBuffer sb = new StringBuffer("");
		List<WhjTx> list = new ArrayList<WhjTx>();
		sb.append("select tx from WhjTx tx where 1=1");
		if (!DataFormat.isEmpty(brno)&&!"9999".equals(brno)) {
			sb.append(" and tx.bankCode = '" + brno+"'");
		}
		if (!DataFormat.isEmpty(rq)) {
			sb.append(" and tx.bizDealTime like  '%");
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
