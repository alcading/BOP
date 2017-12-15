/*
 * Created on 2004-10-12
 *
 * To change the template for this generated file go to
 * Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
package com.huateng.report.imports.common;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.huateng.ebank.business.common.BaseDAOUtils;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.ApplicationContextUtils;

import resource.bean.pub.base.BaseWhjDskhb;
import resource.bean.pub.base.BaseWhjXh;
import resource.bean.report.base.BaseBiNationregion;
import resource.bean.report.base.BaseSysCurrency;
import resource.dao.base.HQLDAO;

/**
 * @author Administrator
 *
 *         To change the template for this generated type comment go to
 *         Window&gt;Preferences&gt;Java&gt;Code Generation&gt;Code and Comments
 */
public class WhjCommonService {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(WhjCommonService.class);

	/**
	 * get instance.
	 *
	 * @return
	 */
	public synchronized static WhjCommonService getInstance() {
		return (WhjCommonService) ApplicationContextUtils.getBean(WhjCommonService.class.getName());
	}

	public WhjCommonService() {
	}

	/**
	 * 查询客户信息
	 * 
	 * @param wzkh
	 * @return
	 */
	public List<BaseWhjDskhb> getWhjDskhb(String wzkh,String jgbs) {
		// logger.debug("####查询客户信息");
		StringBuffer sb = new StringBuffer("");
		List<BaseWhjDskhb> list = new ArrayList<BaseWhjDskhb>();
		sb.append("select A from WhjDskhb A,WhjDskhxxwj B,WhjTskxxdj C");
		sb.append(" where A.zjzl=B.zjzl and A.zjhm=B.zjhm and B.zhdh=C.zhdh ");
		sb.append(" and C.wzkh = '" + wzkh+"'");
		sb.append(" and C.jgbs = '" + jgbs+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	/**
	 * 查询客户信息
	 * 
	 * @param wzkh
	 * @return
	 */
	public List<BaseWhjDskhb> getWhjkh(String khh,String jgbs) {
		// logger.debug("####查询客户信息");
		StringBuffer sb = new StringBuffer("");
		List<BaseWhjDskhb> list = new ArrayList<BaseWhjDskhb>();
		sb.append("select A from WhjDskhb A,WhjDskhxxwj B");
		sb.append(" where A.zjzl=B.zjzl and A.zjhm=B.zjhm ");
		sb.append(" and B.zhdh = '" + khh+"'");
		sb.append(" and B.zdyhh = '" + jgbs+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}

		return list;
	}

	/**
	 * 查询币种信息
	 * 
	 * @param bz
	 * @return
	 */
	public List<BaseSysCurrency> getSysCurrency(String bz) {
		// logger.debug("####查询币种信息");
		StringBuffer sb = new StringBuffer("");
		List<BaseSysCurrency> list = new ArrayList<BaseSysCurrency>();
		sb.append("select A from SysCurrency A ");
		sb.append(" where  A.filler1 = '" + bz+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}

		return list;
	}

	/**
	 * 查询国家地区信息
	 * 
	 * @param c
	 * @return
	 */
	public List<BaseBiNationregion> getBiNationregionList(String c) {

		// logger.debug("####查询国家地区信息");
		StringBuffer sb = new StringBuffer("");
		List<BaseBiNationregion> list = new ArrayList<BaseBiNationregion>();
		sb.append("select A from BiNationregion A ");
		sb.append(" where  A.chinaShortName = '" + c+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<BaseWhjXh> getSxh(String jgbs,String rq,String lb) {
		
		StringBuffer sb = new StringBuffer("");
		List<BaseWhjXh> list = new ArrayList<BaseWhjXh>();
		sb.append("select A from WhjXh A ");
		sb.append(" where  A.jgbs = '" +jgbs+"'");
		sb.append(" and A.rq =  '" +rq+"'");
		sb.append(" and A.lb =  '" +lb+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			list = hqldao.queryByQL2List(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}

		return list;
	}

	public void delDskhb(String jgbs) {

		StringBuffer sb = new StringBuffer("");
		sb.append(" from WhjDskhb A ");
		sb.append(" where A.zdyhh =  '" +jgbs+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			hqldao.delete(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}
	}

	public void delDskhxxwj(String jgbs) {

		StringBuffer sb = new StringBuffer("");
		sb.append(" from WhjDskhxxwj A ");
		sb.append(" where A.zdyhh =  '" +jgbs+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			hqldao.delete(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}
	}

	public void delTskxxdjb(String jgbs) {

		StringBuffer sb = new StringBuffer("");
		sb.append(" from WhjTskxxdj A ");
		sb.append(" where A.jgbs =  '" +jgbs+"'");
		HQLDAO hqldao = BaseDAOUtils.getHQLDAO();
		try {
			hqldao.delete(sb.toString());
		} catch (CommonException e) {
			e.printStackTrace();
		}
	}

}
