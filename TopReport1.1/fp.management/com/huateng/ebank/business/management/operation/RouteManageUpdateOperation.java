package com.huateng.ebank.business.management.operation;


import com.huateng.common.log.HtLog;
import com.huateng.common.log.HtLogFactory;
import com.huateng.ebank.business.common.ErrorCode;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.operation.BaseOperation;
import com.huateng.ebank.framework.operation.OperationContext;
import com.huateng.ebank.framework.util.ExceptionUtil;
import com.huateng.report.utils.ReportUtils;
import resource.bean.pub.WhjBranchInfo;
import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;

public class RouteManageUpdateOperation extends BaseOperation {
	private static final HtLog htlog=HtLogFactory.getLogger(RouteManageUpdateOperation.class);
	public static final String ID = "RouteManageUpdateOperation";
	public static final String CMD = "CMD";
	public static final String CMD_INSERT = "CMD_INSERT";
	public static final String CMD_UPDATE = "CMD_UPDATE";
	public static final String CMD_DELETE = "CMD_DELETE";
	public static final String IN_PARAM = "IN_PARAM";
	private ROOTDAO rootDao ;

	@Override
	public void beforeProc(OperationContext context) throws CommonException {
		// TODO Auto-generated method stub

	}
	
	public void execute(OperationContext context) throws CommonException {
		String cmd = (String)context.getAttribute(CMD);
		WhjBranchInfo wbi = (WhjBranchInfo) context.getAttribute(IN_PARAM);
		if(CMD_INSERT.equalsIgnoreCase(cmd)){
			savaRoute(wbi);

		}else if(CMD_UPDATE.equalsIgnoreCase(cmd)){
			updateRoute( wbi);
		}
		else if(CMD_DELETE.equalsIgnoreCase(cmd)){
			deleteRoute( wbi);
		 }	
	}

	@Override
	public void afterProc(OperationContext context) throws CommonException {
		// TODO Auto-generated method stub
	}
	
	
	public void savaRoute(WhjBranchInfo wbi) throws CommonException {
		rootDao = ROOTDAOUtils.getROOTDAO();
		if(isExists(wbi.getId())){
			ExceptionUtil.throwCommonException("新增机构路由已存在",ErrorCode.ERROR_CODE_DUP_INSERT);
		}
		try {
			wbi.setId(ReportUtils.getUUID());
			rootDao.save(wbi);
		} catch (Exception e) {
			// TODO: handle exception
			htlog.error("insert WHJ_BRANCH_INFO error ");
			ExceptionUtil.throwCommonException("保存WhjBranchInfo实体类失败记录已存在");
		}
	}
	
	public void updateRoute(WhjBranchInfo wbi) throws CommonException{
		rootDao = ROOTDAOUtils.getROOTDAO();
		try {
			rootDao.update(wbi);
		} catch (Exception e) {
			// TODO: handle exception
			ExceptionUtil.throwCommonException("更新WhjBranchInfo失败记录不存在");
		}
	}
	
    public void deleteRoute(WhjBranchInfo wbi) throws CommonException{
		
		rootDao = ROOTDAOUtils.getROOTDAO();		
		try {
			rootDao.delete(wbi);

		} catch (Exception e) {
			// TODO: handle exception
			ExceptionUtil.throwCommonException("删除WhjBranchInfo实体类不存在");
		}
	}

	private Boolean isExists(String id) {
		rootDao = ROOTDAOUtils.getROOTDAO();
		WhjBranchInfo wbi;
		try {
			wbi = rootDao.query(WhjBranchInfo.class,id);
			if(wbi ==null){
				return false;
			}
		} catch (CommonException e) {
			// TODO Auto-generated catch block
			htlog.info(this.getClass().getName()+"判断实体是否重复出错");
			e.printStackTrace();
		}
		
		return true;
	}
}
