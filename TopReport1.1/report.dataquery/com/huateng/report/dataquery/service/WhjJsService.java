/*
 * Created on 2004-10-12
 *
 * To change the template for this generated file go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
package com.huateng.report.dataquery.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.log4j.Logger;

import resource.bean.pub.TlrLoginLog;
import resource.dao.base.HQLDAO;

import com.huateng.ebank.business.common.BaseDAOUtils;
import com.huateng.ebank.business.common.ErrorCode;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.business.common.PageQueryCondition;
import com.huateng.ebank.business.common.PageQueryResult;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.ApplicationContextUtils;
import com.huateng.ebank.framework.util.DataFormat;
import com.huateng.ebank.framework.util.DateUtil;
import com.huateng.ebank.framework.util.ExceptionUtil;

/**
 * @author Administrator
 *
 *         To change the template for this generated type comment go to
 *         Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
public class WhjJsService {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(WhjJsService.class);

	/**
	 * get instance.
	 *
	 * @return
	 */
	public synchronized static WhjJsService getInstance() {
		return (WhjJsService) ApplicationContextUtils.getBean(WhjJsService.class.getName());
	}

	public WhjJsService() {
	}

	public PageQueryResult queryWhjJs(int pageIndex, int pageSize, String jgbs,String rq, 
			String brno)
			throws CommonException {
		StringBuffer sb = new StringBuffer("");
		List<Object> list = new ArrayList<Object>();
		sb.append("select gs from WhjFkGs gs where 1=1");
		if (!DataFormat.isEmpty(brno)&&!"9999".equals(brno)) {
			sb.append(" and gs.jgbs = ? ");
			list.add(brno);
		}
		if (!DataFormat.isEmpty(jgbs)) {
			sb.append(" and gs.jgbs = ? ");
			list.add(jgbs);
		}

		if (!DataFormat.isEmpty(rq)) {
			sb.append(" and gs.rq = ? ");
//			logger.debug(startDate);
			list.add(rq);
		}

		
		sb.append(" order by gs.rq desc ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		PageQueryCondition queryCondition = new PageQueryCondition();
		queryCondition.setQueryString(sb.toString());
		queryCondition.setPageIndex(pageIndex);
		queryCondition.setPageSize(pageSize);
		queryCondition.setObjArray(list.toArray());
		PageQueryResult pageQueryResult = hqldao.pageQueryByQL(queryCondition);
		return pageQueryResult;
	}
	
	public PageQueryResult queryWhjWgjy(int pageIndex, int pageSize, String rq) throws CommonException {
		StringBuffer sb = new StringBuffer("");
		List<Object> list = new ArrayList<Object>();
		sb.append("select tx from WhjWgjy tx where 1=1");
		
//		if (!DataFormat.isEmpty(rq)) {
//			sb.append(" and tx.rq =  ? ");
//			sb.append(rq);
//		}
		
		sb.append(" order by tx.rq  desc ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		PageQueryCondition queryCondition = new PageQueryCondition();
		queryCondition.setQueryString(sb.toString());
		queryCondition.setPageIndex(pageIndex);
		queryCondition.setPageSize(pageSize);
		queryCondition.setObjArray(list.toArray());
		PageQueryResult pageQueryResult = hqldao.pageQueryByQL(queryCondition);
		return pageQueryResult;
	}

}
