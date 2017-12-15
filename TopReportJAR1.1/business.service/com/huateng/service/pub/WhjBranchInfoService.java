/*
 * Created on 2004-10-12
 *
 * To change the template for this generated file go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
package com.huateng.service.pub;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.log4j.Logger;

import resource.bean.pub.TlrLoginLog;
import resource.bean.pub.base.BaseWhjBranchInfo;
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
public class WhjBranchInfoService {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(WhjBranchInfoService.class);

	/**
	 * get instance.
	 *
	 * @return
	 */
	public synchronized static WhjBranchInfoService getInstance() {
		return (WhjBranchInfoService) ApplicationContextUtils.getBean(WhjBranchInfoService.class.getName());
	}

	public WhjBranchInfoService() {
	}

	public PageQueryResult queryWhjBranchInfo(int pageIndex, int pageSize, String acctno,String personName, 
			String startDate, String endDate,String brno)
			throws CommonException {
		StringBuffer sb = new StringBuffer("");
		List<Object> list = new ArrayList<Object>();
		sb.append("select tx from WhjBranchInfo tx where 1=1");
		
		sb.append(" order by tx.id desc ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		PageQueryCondition queryCondition = new PageQueryCondition();
		queryCondition.setQueryString(sb.toString());
		queryCondition.setPageIndex(pageIndex);
		queryCondition.setPageSize(pageSize);
		queryCondition.setObjArray(list.toArray());
		PageQueryResult pageQueryResult = hqldao.pageQueryByQL(queryCondition);
		return pageQueryResult;
	}

	public List<BaseWhjBranchInfo> getWhjBranchInfo(){
		StringBuffer sb = new StringBuffer("");
		List<BaseWhjBranchInfo> list = new ArrayList<BaseWhjBranchInfo>();
		sb.append("select tx from WhjBranchInfo tx where 1=1  and tx.zt = 1 ");
		sb.append(" order by tx.id desc ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<BaseWhjBranchInfo> getWhjBranchInfo(String brno){
		StringBuffer sb = new StringBuffer("");
		List<BaseWhjBranchInfo> list = new ArrayList<BaseWhjBranchInfo>();
		sb.append("select tx from WhjBranchInfo tx where 1=1");
		sb.append(" and tx.whjjgbs = "+brno);
		sb.append(" order by tx.id desc ");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
