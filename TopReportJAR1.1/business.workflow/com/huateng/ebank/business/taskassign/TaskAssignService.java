/**
 *
 */
package com.huateng.ebank.business.taskassign;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import resource.dao.pub.TlrWorkloadDAO;

import com.huateng.ebank.business.common.DAOUtils;
import com.huateng.ebank.business.common.ErrorCode;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.business.common.SystemConstant;
import com.huateng.ebank.business.taskassign.bean.TaskAssignInfoBean;
import com.huateng.ebank.business.taskassign.bean.TaskFinishBean;
import com.huateng.ebank.business.workflow.WorkFlowConstants;
import com.huateng.ebank.business.workflow.WorkFlowParamService;
import com.huateng.ebank.entity.dao.workflow.WorkflowTaskPoolDAO;
import com.huateng.ebank.entity.data.TlrWorkload;
import com.huateng.ebank.entity.data.workflow.TaskAssignInfo;
import com.huateng.ebank.entity.data.workflow.WorkflowTaskPool;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.ApplicationContextUtils;
import com.huateng.ebank.framework.util.ExceptionUtil;

/**
 * Title: TaskAssignService
 * Description: 任务分配服务
 * 本service不再使用,只是改成编译通过
 * Copyright: Copyright (c) 2008
 * Company: Shanghai Huateng Software Systems Co., Ltd.
 * @author shen_antonio
 * @version 1.1, 2008-3-13
 */
public class TaskAssignService {

	/** memeber variable: Log　log. */
	private static Log log = LogFactory.getLog(TaskAssignService.class);


	/** memeber variable: TaskAssignService　single. */
	private static TaskAssignService single;

	/**
	 * Default constructor
	 */
	protected TaskAssignService() {
	}

	/**
	 * get instance.
	 * @return
	 */
	public synchronized static TaskAssignService getInstance() {
		/*
		if (null == single) {
			single = new TaskAssignService();
		}
		return single;
		*/
		return (TaskAssignService)ApplicationContextUtils.getBean("TaskAssignService");
	}

	/**
	 * 获得待分配任务的操作员
	 * 描述：支持三种工作流分配模式
	 * 处理过程:
	 * 		检查出入操作员列表不能为空
	 * 		根据是否有休假制度标志，判断是否需要查询操作员休假表，把处于生产状态的操作员列表取出
	 *		查询TLR_WORKLOAD表获取操作员的剩余工作量
	 *      找出工作量最小的人员集合，随机抽取
	 * @param tlrnoList 操作员号列表(当为分配到岗位模式时(只有需要存放岗位编号）
	 * @param workType 工作类型(01-贷前 02-贷后)
	 * @param assignMode 工作分配模式(0-分配到岗位，1-分配到人(按工作两分配),2-完全随机分配)
	 * @param isWorkType 是否根据工作类型统分析
	 * @param isLv 是否有请假制度
	 * @return 指派到任务的操作员号
	 */
	public  String getAssignToTlrno(List<String> tlrnoList, String workType,String assignMode,boolean isWorkType,
			boolean isLv) throws CommonException {
		try {
			if (StringUtils.equals(assignMode,
					SystemConstant.TASK_ASSIGN_MODE_O)) {
				return tlrnoList.get(0);
			} else if (StringUtils.equals(assignMode,
					SystemConstant.TASK_ASSIGN_MODE_2)) {
				// 随机分配
				int rand = RandomUtils.nextInt(tlrnoList.size());
				String disTlrno = (String)tlrnoList.get(rand);
				return disTlrno;
			} else if (StringUtils.equals(assignMode,
					SystemConstant.TASK_ASSIGN_MODE_1)) {
				TlrWorkloadDAO tlrWorkloadDAO = DAOUtils.getTlrWorkloadDAO();
				List<String> disTlrnoList = new ArrayList<String>();
				// 检查出入操作员列表不能为空
				if (tlrnoList.isEmpty()) {
					// yjw 增加log
					log.info("待分配任务任务人员名单为空");
					ExceptionUtil.throwCommonException("待分配任务任务人员名单为空",
							ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
				}
				//yjw 2010-03-26 修改,不在这里检查是否休假,在查询出操作员列表的时候就应该排除休假的操作员
				//TlrLvdayService tlrLvdayService = TlrLvdayService.getInstance();
				// 判断是否有休假制度，把处于生产状态的操作员列表取出
//				if (isLv) {
//					for (String tlrno : tlrnoList) {
//						if (!tlrLvdayService.isTlrLv(tlrno)) {
//							disTlrnoList.add(tlrno);
//						} else {
//							log.info("可分配操作员[" + tlrno + "]已休假,任务分配排除该操作员");
//						}
//					}
//				} else {
//					disTlrnoList = tlrnoList;
//				}
				disTlrnoList = tlrnoList;
				// 检查出入操作员列表不能为空
				if (disTlrnoList.isEmpty()) {
					log.info("全部待分配任务的操作员已休假,没有找到可分配任务的操作员");
					ExceptionUtil.throwCommonException("全部待分配任务的操作员已休假",
							ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
				}
				// 检查是否为退回的任务,如果能够找到原任务处理员,并且该操作员在disTlrnoList列表中,那么直接返回给该操作员
//				String origTlrno = "";
//				if (wfTaskAssignBean != null && !DataFormat.trim(wfTaskAssignBean.getProsId()).equals("")) {
//					origTlrno = DataFormat.trim(getOrigTlrno(wfTaskAssignBean));
//				}
//				if (!origTlrno.equals("") && disTlrnoList.contains(origTlrno)) {
//					log.info("任务分配给原操作员 : " + origTlrno);
//					return origTlrno;
//				}
				// 根据TLR_WORKLOAD表中的信息，摘选出输入工作量最小的
				String trlStr = ArrayUtils.toString(disTlrnoList.toArray())
						.replace('{', '\'').replace('}', '\'').replaceAll(",",
								"','");
				String hsql = "po.tlrno in (" + trlStr + ")";
				if (isWorkType) {
					hsql += " and po.workType ='" + workType + "'";
				}
				hsql +=" and po.restWl < po.maxWl ";//剩余工作量必须小于阀值 add by kangbyron
				hsql += " order by restWl";
				List<TlrWorkload> tlrWorkloadList = tlrWorkloadDAO
						.queryByCondition(hsql);
				long min_rest_wl = 0;

//				if (disTlrnoList.size() > tlrWorkloadList.size()) {
//					// 有部分操作员没有分配过任务的情况
//					List<String> removeList = new ArrayList<String>();
//					for (TlrWorkload tlrWorkload : tlrWorkloadList) {
//						removeList.add(tlrWorkload.getTlrno());
//					}
//					disTlrnoList.removeAll(removeList);
//				} else {
				if(tlrWorkloadList.size()==0){//没有可分配的操作员都达到了审批阀值,暂时报错,后续加入待审批池
					log.info("没有找到可分配任务的操作员,分给任务池");
					return "任务池";
				}else{
					// 最小剩余工作量
					List<String> minTlrnoList = new ArrayList<String>();
					min_rest_wl = tlrWorkloadList.get(0).getRestWl();
					for (TlrWorkload tlrWorkload : tlrWorkloadList) {
						if (tlrWorkload.getRestWl() == min_rest_wl) {
							minTlrnoList.add(tlrWorkload.getTlrno().trim());
						} else {
							break;
						}
					}
					disTlrnoList = minTlrnoList;
				}
				// 随机分配
				Random random = new Random(System.currentTimeMillis());
				int rand = random.nextInt(disTlrnoList.size());
				String disTlrno = disTlrnoList.get(rand).trim();
				return disTlrno;
			} else {
				ExceptionUtil.throwCommonException("任务分配模式不支持" + assignMode,
						ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
				return null;
			}
		} catch (CommonException commEx) {
			throw commEx;
		} catch (Exception ex) {
			ExceptionUtil.throwCommonException(ex.getMessage(),
					ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
			return null;
		}
	}

	/**
	 * 分配任务
	 * 处理过程:
	 * 		在流程启动后，将纪录TASK_ASSIGN_INFO(任务分配表)
	 *      更新TLR_WL_HS(操作员每日工作量统计表),ASSIGN_WI加1
	 *      更新TLR_WORKLOAD(操作员工作量汇总表)
	 *      判断如下：分配任务模式为分配到岗位的情况下，需要纪录TASK_ASSIGN_INFO表
	 *              分配任务模式为分配到人（按任务量分配）情况下，需要纪录TASK_ASSIGN_INFO(新纪录插入)，TLR_WL_HS(ASSIGN_WI加1)，TLR_WORKLOAD(REST_WI加1)
	 *              分配任务模式为分配到人（随机分配）情况下，需要纪录TASK_ASSIGN_INFO(新纪录插入)，TLR_WL_HS(ASSIGN_WI加1)，TLR_WORKLOAD(REST_WI加1)
	 * @param taskAssignInfoBean
	 * @throws CommonException
	 */
	public  void assignTask(TaskAssignInfoBean taskAssignInfoBean)throws CommonException{
//		TaskAssignInfoDAO taskAssignInfoDAO = DAOUtils.getTaskAssignInfoDAO();
//		TlrWlHsDAO tlrWlHsDAO = DAOUtils.getTlrWlHsDAO();
//		TlrWorkloadDAO tlrWorkloadDAO = DAOUtils.getTlrWorkloadDAO();
		TaskAssignInfo taskAssignInfo = new TaskAssignInfo();
		if( StringUtils.equals(taskAssignInfoBean.getWorkType(),WorkFlowConstants.TASK_WORK_TYPE_99)
			|| StringUtils.isEmpty(taskAssignInfoBean.getWorkType())
				){
			ExceptionUtil.throwCommonException("任务类型不能为99和空",
					ErrorCode.ERROR_CODE_TASK_ASSIGN_ERROR);
		}
		try {
			BeanUtils.copyProperties(taskAssignInfo, taskAssignInfoBean);
		} catch (Exception ex) {
			ExceptionUtil.throwCommonException("对象赋值失败",
					ErrorCode.ERROR_CODE_TASK_ASSIGN_ERROR);
		}
		//纪录TASK_ASSIGN_INFO
		taskAssignInfo.setStartTime(new Timestamp(GlobalInfo.getCurrentInstance().getTxtime().getTime()));
//		taskAssignInfoDAO.insert(taskAssignInfo);
		//分配到岗位模式
		if( StringUtils.equals(taskAssignInfoBean.getAssignMode(),WorkFlowConstants.TASK_ASSIGN_MODE_O) ){
			return;
		}else if( StringUtils.equals(taskAssignInfoBean.getAssignMode(),WorkFlowConstants.TASK_ASSIGN_MODE_1)
				|| StringUtils.equals(taskAssignInfoBean.getAssignMode(),WorkFlowConstants.TASK_ASSIGN_MODE_2) ){
			//记录TLR_WL_HS表该操作员当天是否有纪录
			insertOrUpdateTlrWlHs(
					taskAssignInfoBean.getTlrno(),
					taskAssignInfoBean.getBrcode(),
					taskAssignInfoBean.getWorkType(),
					GlobalInfo.getCurrentInstance().getTxdate(),
					taskAssignInfoBean.getAssignMode(), false);
			//记录TLR_WORKLOAD表该操作员工作量统计表
			insertOrUpdateTlrWorkload(taskAssignInfoBean.getTlrno(),
					taskAssignInfoBean.getBrcode(),
					taskAssignInfoBean.getWorkType(),
					taskAssignInfoBean.getAssignMode(),
					false,false);
		}else{
			ExceptionUtil.throwCommonException("任务分配模式不支持"+taskAssignInfoBean.getAssignMode(),
					ErrorCode.ERROR_CODE_TASK_ASSIGN_ERROR);
		}
	}

	/**
	 * 完成任务操作
	 * 处理过程:
	 * 	      根据不同的工作流任务分配模式来操作：
	 * 		  分配任务模式为分配到岗位的情况下：需要更新TASK_ASSIGN_INFO表(将所有status为0的记录，更新end_time;
	 *                                   更新或者插入TLR_WL_HS表记录，ASSIGN_WL字段加1，WORKLOAN字段加1;
	 *                                   更新或者插入TLR_WORKLOAD表记录，TODAY_WL，WTD_WL，MTD_WL，YTD_WL加1
	 *        分配模式为分配到人的情况下：需要更新TASK_ASSIGN_INFO表(将所有status为0的记录，更新end_time;
	 *                               更新操作员的TLR_WL_HS表记录，WORKLOAN字段加1;
	 *                               更新TLR_WORKLOAD表记录，TODAY_WL，WTD_WL，MTD_WL，YTD_WL加1，REST_WL减去一
	 * @param taskFinishBean
	 * @throws CommonException
	 */
	public  void doFinishTask(TaskFinishBean taskFinishBean)throws CommonException{
//		if( StringUtils.equals(taskFinishBean.getWorkType(),SystemConstant.TASK_WORK_TYPE_99)
//				|| StringUtils.isEmpty(taskFinishBean.getWorkType())
//					){
//				ExceptionUtil.throwCommonException("任务类型不能为99和空",
//					ErrorCode.ERROR_CODE_TASK_ASSIGN_DOFINISH_ERROR);
//		}
		if( StringUtils.isEmpty(taskFinishBean.getWorkType())){
				ExceptionUtil.throwCommonException("任务类型不能为空",
						ErrorCode.ERROR_CODE_TASK_ASSIGN_DOFINISH_ERROR);
		}
//		TaskAssignInfoDAO taskAssignInfoDAO = DAOUtils.getTaskAssignInfoDAO();

		//强件模式
		if( StringUtils.equals(taskFinishBean.getAssignMode(), WorkFlowConstants.TASK_ASSIGN_MODE_O)){
			//更新TASK_ASSIGN_INFO
			List taskAssignInfoList = new ArrayList();
//			taskAssignInfoDAO.queryByCondition(
//					"po.status = ? and po.procInsId = ? and po.taskId = ?",
//					new Object[]{SystemConstant.TASK_ASSIGN_STATUS_0,taskFinishBean.getProcessId(),taskFinishBean.getTaskId()});
			if( taskAssignInfoList.isEmpty() ){
				if( log.isWarnEnabled() )
					log.warn("proc_ins_id = " + taskFinishBean.getProcessId() + " , task_id = " + taskFinishBean.getTaskId() + "no exist in TASK_ASSING_INFO");
			}else if( taskAssignInfoList.size() == 1){
				TaskAssignInfo taskAssignInfo = (TaskAssignInfo)taskAssignInfoList.get(0);
				taskAssignInfo.setEndTime(new Timestamp(GlobalInfo.getCurrentInstance().getTxtime().getTime()));
//				taskAssignInfoDAO.update(taskAssignInfo);
			}else{
				ExceptionUtil.throwCommonException("重复出现" + "proc_ins_id = " + taskFinishBean.getProcessId() +
							" , task_id = " + taskFinishBean.getTaskId() + "任务",
						ErrorCode.ERROR_CODE_TASK_ASSIGN_DOFINISH_ERROR);
			}
		}else if( StringUtils.equals(taskFinishBean.getAssignMode(),WorkFlowConstants.TASK_ASSIGN_MODE_1) ||
				StringUtils.equals(taskFinishBean.getAssignMode(),WorkFlowConstants.TASK_ASSIGN_MODE_2 )){
			List taskAssignInfoList = new ArrayList();//taskAssignInfoDAO.queryByCondition("po.tlrno = ? and po.status = ? and po.procInsId = ? and po.taskId = ?",
//					new Object[]{taskFinishBean.getTlrno(),SystemConstant.TASK_ASSIGN_STATUS_0,taskFinishBean.getProcessId(),taskFinishBean.getTaskId()});
			if( taskAssignInfoList.isEmpty() ){
				log.error("proc_ins_id = " + taskFinishBean.getProcessId() + " , task_id = " + taskFinishBean.getTaskId() + "no exist in TASK_ASSING_INFO");
				/*目前不报错误
				ExceptionUtil.throwCommonException("没有该操作员[" + taskFinishBean.getTlrno() + " proc_ins_id = " + taskFinishBean.getProcessId() +
						" , task_id = " + taskFinishBean.getTaskId() + "的安排任务",ErrorCode.ERROR_CODE_TASK_ASSIGN_DOFINISH_ERROR);
						*/
			}else if( taskAssignInfoList.size() == 1){
				TaskAssignInfo taskAssignInfo = (TaskAssignInfo)taskAssignInfoList.get(0);
				taskAssignInfo.setEndTime(GlobalInfo.getCurrentInstance().getTxdate());
//				taskAssignInfoDAO.update(taskAssignInfo);
			}else{
				ExceptionUtil.throwCommonException("重复出现" + "proc_ins_id = " + taskFinishBean.getProcessId() +
							" , task_id = " + taskFinishBean.getTaskId() + "任务",
						ErrorCode.ERROR_CODE_TASK_ASSIGN_DOFINISH_ERROR);
			}
		}else{
			ExceptionUtil.throwCommonException("任务分配模式不支持" + taskFinishBean.getAssignMode(),
					ErrorCode.ERROR_CODE_TASK_ASSIGN_DOFINISH_ERROR);
		}
		//记录TLR_WL_HS表该操作员当天是否有纪录
		insertOrUpdateTlrWlHs( taskFinishBean.getTlrno(),
				taskFinishBean.getBrcode(), taskFinishBean.getWorkType(),
				GlobalInfo.getCurrentInstance().getTxdate(),
				taskFinishBean.getAssignMode(), true);
		//记录TLR_WORKLOAD表该操作员工作量统计表
		insertOrUpdateTlrWorkload(taskFinishBean.getTlrno(),
				taskFinishBean.getBrcode(), taskFinishBean.getWorkType(),
				taskFinishBean.getAssignMode(), true,false);
	}

	/**
	 * 移交任务给制定的操作员
	 * 处理过程：
	 * 			修改TASK_ASSIGN_INFO表中相关记录STATUS为1(无效),插入一条新记录ASSIGN_TYPE为1(人工指派)
	 * 			修改TLR_WORDLOAN表对应操作员记录,REST_WL减1
	 *          插入或更新新操作员对应TLR_WL_HS表记录
	 *          插入或更新新操作员对应TLR_WORKLOAD表记录
	 * @param procInsId 实例号
	 * @param taskId 任务号
	 * @param tlrno 任务分配操作员
	 * @param brcode 任务分配操作员的机构号
	 * @throws CommomException: 1.没有指定proc_ins_id和task_id的有效任务存在
	 * 							2.有多个proc_ins_id和task_id的有效任务存在
	 * 							3.该指定任务已经完成
	 */
	public  void forwardTask(String procInsId,String taskId,String tlrno,String brcode)throws CommonException{
//		TaskAssignInfoDAO taskAssignInfoDAO = DAOUtils.getTaskAssignInfoDAO();
		TaskAssignInfo taskAssignInfo = null;
		//查询对应任务分配记录
		try{
		List taskAssignInfoList =new ArrayList();// taskAssignInfoDAO.queryByPITI(procInsId, taskId, SystemConstant.TASK_ASSIGN_STATUS_0);
		if( taskAssignInfoList.isEmpty() ){
			ExceptionUtil.throwCommonException("没有有效任务分配记录[proc_ins_id = " + procInsId +" , task_id = " + taskId + "]任务",
				ErrorCode.ERROR_CODE_TASK_FORWARD_ERROR);
		}else if( taskAssignInfoList.size() > 1){
			ExceptionUtil.throwCommonException("有多个有效任务分配记录[proc_ins_id = " + procInsId +" , task_id = " + taskId + "]任务",
					ErrorCode.ERROR_CODE_TASK_FORWARD_ERROR);
		}else{
			//更新原分配记录
			taskAssignInfo = (TaskAssignInfo)taskAssignInfoList.get(0);
			if( taskAssignInfo.getEndTime()!= null){
				ExceptionUtil.throwCommonException("该[proc_ins_id = " + procInsId +" , task_id = " + taskId + "]任务已在" + taskAssignInfo.getEndTime() + "完成",
						ErrorCode.ERROR_CODE_TASK_FORWARD_ERROR);
			}
			taskAssignInfo.setStatus(WorkFlowConstants.TASK_ASSGIN_STATUS_1);
			taskAssignInfo.setEndTime(new Timestamp(GlobalInfo.getCurrentInstance().getTxtime().getTime()));
//			taskAssignInfoDAO.update(taskAssignInfo);
			//更新原TLR_WORDLOAD记录，当任务分配模式位非强件方式时,更新指定操作员的记录
			if( !StringUtils.equals(taskAssignInfo.getAssignMode(), WorkFlowConstants.TASK_ASSIGN_MODE_O) ){
				insertOrUpdateTlrWorkload(taskAssignInfo.getTlrno(), taskAssignInfo.getBrcode(), taskAssignInfo.getWorkType(),
						WorkFlowConstants.TASK_ASSIGN_MODE_1, true, true);
			}
			//装载新任务分配记录
			TaskAssignInfo nTaskAssignInfo = new TaskAssignInfo();
			nTaskAssignInfo.setProcInsId(procInsId);
			nTaskAssignInfo.setTaskId(taskId);
			nTaskAssignInfo.setTlrno(tlrno);
			nTaskAssignInfo.setBrcode(brcode);
			nTaskAssignInfo.setTaskDesc(taskAssignInfo.getTaskDesc());
			nTaskAssignInfo.setWorkType(taskAssignInfo.getWorkType());
			nTaskAssignInfo.setAssignType(WorkFlowConstants.TASK_ASSIGN_TYPE_1);
			nTaskAssignInfo.setAssign(GlobalInfo.getCurrentInstance().getTlrno());
			nTaskAssignInfo.setAssignMode(WorkFlowConstants.TASK_ASSIGN_MODE_1);
			nTaskAssignInfo.setStartTime(new Timestamp(GlobalInfo.getCurrentInstance().getTxtime().getTime()));
			nTaskAssignInfo.setStatus(WorkFlowConstants.TASK_ASSIGN_STATUS_0);
			nTaskAssignInfo.setEndTime(null);
//			taskAssignInfoDAO.insert(nTaskAssignInfo);
			//插入新分配任务的TLR_WL_HS表
			insertOrUpdateTlrWlHs(tlrno, brcode, taskAssignInfo.getWorkType(), nTaskAssignInfo.getStartTime(), WorkFlowConstants.TASK_ASSIGN_MODE_1, false);
			//插入新分配任务的TLR_WORKLOAD表
			insertOrUpdateTlrWorkload( tlrno,brcode,taskAssignInfo.getWorkType(),WorkFlowConstants.TASK_ASSIGN_MODE_1,false,true);
		}
		}catch(CommonException cex){
			throw cex;
		}catch(Exception ex){
			ExceptionUtil.throwCommonException(ex.getLocalizedMessage(),ErrorCode.ERROR_CODE_TASK_FORWARD_ERROR);
		}
	}

	/**
	 * 结束操作员任务实例时，结束操作员任务分配记录
	 * 处理流程如下:
	 * 				修改TASK_ASSIGN_INFO表中相关记录STATUS为2(无效,任务被删除)
	 * 				修改TLR_WORDLOAN表对应操作员记录,REST_WL减1
	 * @param procInsId 任务实例号
	 * @throws CommonException
	 */
	public void endProcTask(String procInsId)throws CommonException{
		try{
//		TaskAssignInfoDAO taskAssignInfoDAO = DAOUtils.getTaskAssignInfoDAO();
		List taskAssignInfoList = new ArrayList();//taskAssignInfoDAO.queryByPI(procInsId, SystemConstant.TASK_ASSIGN_STATUS_0);
		TaskAssignInfo taskAssignInfo;
		for( int i=0;i<taskAssignInfoList.size();i++ ){
			taskAssignInfo = (TaskAssignInfo)taskAssignInfoList.get(i);
			//更新原TLR_WORDLOAD记录，当任务分配模式位非强件方式时,更新指定操作员的记录
			if( !StringUtils.equals(taskAssignInfo.getAssignMode(), WorkFlowConstants.TASK_ASSIGN_MODE_O) ){
				insertOrUpdateTlrWorkload(taskAssignInfo.getTlrno(), taskAssignInfo.getBrcode(), taskAssignInfo.getWorkType(),
						WorkFlowConstants.TASK_ASSIGN_MODE_1, true, true);
			}
			taskAssignInfo.setStatus(WorkFlowConstants.TASK_ASSGIN_STATUS_2);
			taskAssignInfo.setEndTime(new Timestamp(GlobalInfo.getCurrentInstance().getTxtime().getTime()));
//			taskAssignInfoDAO.update(taskAssignInfo);
		}
		}catch(CommonException cex){
			throw cex;
		}catch(Exception ex){
			ExceptionUtil.throwCommonException(ex.getLocalizedMessage(),ErrorCode.ERROR_CODE_TASK_ENDPROCTASK);
		}
	}


	/**
	 * 移交指定操作员所有指定工作类型的任务
	 * @param oTlrno 原操作员号
	 * @param workType 指定工作类型（可以为空，默认为所有工作）
	 * @param tlrno 移交给予操作员号
	 * @param brcode 移交给予操作员的机构号
	 * @throws CommonException
	 */
	public  List forwardTask(String oTlrno,String tlrno,String brcode)throws CommonException{
//		TaskAssignInfoDAO taskAssignInfoDAO = DAOUtils.getTaskAssignInfoDAO();
		List taskAssignInfoList = new ArrayList();//taskAssignInfoDAO.queryByTlrno(oTlrno,null,SystemConstant.TASK_ASSIGN_STATUS_0);
		TaskAssignInfo taskAssignInfo;
		for(int i=0;i<taskAssignInfoList.size();i++){
			taskAssignInfo = (TaskAssignInfo)taskAssignInfoList.get(i);
			//执行批量移交
			forwardTask(taskAssignInfo.getProcInsId(), taskAssignInfo.getTaskId(),tlrno, brcode);
		}
		return taskAssignInfoList;
	}


	/**
	 * 查询制定日志任务类型操作员的任务信息，然后进行更新或者插入操作
	 * @param tlrno
	 * @param brcode
	 * @param workType
	 * @param assignMode
	 * @param endFlag 工作完成标志
	 * @param forward 工作移交标志
	 * @throws CommonException
	 */
	public  void insertOrUpdateTlrWorkload(String tlrno,String brcode,String workType,String assignMode,boolean endFlag,boolean forward)throws CommonException{
		TlrWorkloadDAO tlrWorkloadDAO = DAOUtils.getTlrWorkloadDAO();
		TlrWorkload tlrWorkload = tlrWorkloadDAO.query(tlrno);
		// 移交工作：移出者记录操作
		if (forward && endFlag) {
			tlrWorkload.setRestWl(Math.max(tlrWorkload.getRestWl() - 1, 0));
			// 移交工作：移入之记录操作
		} else if (forward && !endFlag) {
			tlrWorkload.setRestWl(tlrWorkload.getRestWl() + 1);
		} else {
			if (!endFlag) {
				//分配工作
				tlrWorkload.setRestWl(tlrWorkload.getRestWl() + 1);
			} else {
				//完成工作
				tlrWorkload.setTodayWl(tlrWorkload.getTodayWl() + 1);
				tlrWorkload.setWtdWl(tlrWorkload.getWtdWl() + 1);
				tlrWorkload.setMtdWl(tlrWorkload.getMtdWl() + 1);
				tlrWorkload.setYtdWl(tlrWorkload.getYtdWl() + 1);
				tlrWorkload.setLtdWl(tlrWorkload.getLtdWl() + 1);
				tlrWorkload.setRestWl(Math.max(tlrWorkload.getRestWl() - 1,
						0));
			}
		}
		tlrWorkloadDAO.update(tlrWorkload);

	}


	/**
	 * 查询制定日志任务类型操作员的任务信息，然后进行更新或者插入操作
	 * @param tlrno 操作员号
	 * @param brcode 机构号
	 * @param worktype 工作类型
	 * @param workDate 工作日期
	 * @param assignMode 工作安排方式
	 * @param endFlag 是否完成任务
	 * @throws CommonException
	 */
	protected  void insertOrUpdateTlrWlHs(String tlrno,String brcode,String workType,Date workDate,String assignMode,boolean endFlag)throws CommonException{
//		TlrWlHsDAO tlrWlHsDAO = DAOUtils.getTlrWlHsDAO();
		List tlrWlHsList = new ArrayList();//tlrWlHsDAO.queryByCondition("po.tlrno = ? and po.workType = ? and po.workDate = ?", new Object[]{tlrno,workType,workDate});
		if( tlrWlHsList.isEmpty() ){
//			TlrWlHs tlrWlHs = new TlrWlHs();
//			tlrWlHs.setAssignWl(1);
//			tlrWlHs.setBrcode(brcode);
//			tlrWlHs.setTlrno(tlrno);
//			tlrWlHs.setWorkDate(workDate);
//			tlrWlHs.setWorkType(workType);
//			if( endFlag && StringUtils.equals( assignMode,SystemConstant.TASK_ASSIGN_MODE_O )){
//				tlrWlHs.setWorkloan(1);
//			}else{
//				tlrWlHs.setWorkloan(0);
//			}
//			tlrWlHsDAO.insert(tlrWlHs);
		}else if( tlrWlHsList.size() == 1){
//			TlrWlHs tlrWlHs = (TlrWlHs)tlrWlHsList.get(0);
//			if( endFlag ){
//				tlrWlHs.setWorkloan(tlrWlHs.getWorkloan() + 1);
//			}else{
//				tlrWlHs.setAssignWl(tlrWlHs.getAssignWl() + 1);
//			}
//			tlrWlHsDAO.update(tlrWlHs);
		}else{
			ExceptionUtil.throwCommonException(ErrorCode.ERROR_CODE_IU_TLR_WL_HS_ERROR);
		}
	}

	/* add by kangbyron 2011-2-25 广州个贷用 begin */
	/**
	 * 获得待分配任务的操作员
	 * 描述：支持三种工作流分配模式
	 * 处理过程:
	 * 		检查出入操作员列表不能为空
	 * 		根据是否有休假制度标志，判断是否需要查询操作员休假表，把处于生产状态的操作员列表取出
	 *		查询TLR_WORKLOAD表获取操作员的剩余工作量
	 *      找出工作量最小的人员集合，随机抽取
	 * @param tlrnoList 操作员号列表(当为分配到岗位模式时(只有需要存放岗位编号）
	 * @param workType 工作类型(01-贷前 02-贷后)
	 * @param assignMode 工作分配模式(0-分配到岗位，1-分配到人(按工作两分配),2-完全随机分配)
	 * @param isWorkType 是否根据工作类型统分析
	 * @param isLv 是否有请假制度
	 * @param map 流程信息MAP
	 * @return 指派到任务的操作员号
	 */
	public  String getAssignToTlrnoGZ(List<String> tlrnoList, String workType,String assignMode,boolean isWorkType,
			boolean isLv, Map map) throws CommonException {
		try {
			WorkflowTaskPoolDAO taskPoolDAO = DAOUtils.getWorkflowTaskPoolDAO();
			if (StringUtils.equals(assignMode,
					SystemConstant.TASK_ASSIGN_MODE_O)) {
				return tlrnoList.get(0);
			} else if (StringUtils.equals(assignMode,
					SystemConstant.TASK_ASSIGN_MODE_2)) {
				// 随机分配
				int rand = RandomUtils.nextInt(tlrnoList.size());
				String disTlrno = (String)tlrnoList.get(rand);
				return disTlrno;
			} else if (StringUtils.equals(assignMode,
					SystemConstant.TASK_ASSIGN_MODE_1)) {
				TlrWorkloadDAO tlrWorkloadDAO = DAOUtils.getTlrWorkloadDAO();
				List<String> disTlrnoList = new ArrayList<String>();
				// 检查出入操作员列表不能为空
				if (tlrnoList.isEmpty()) {
					// yjw 增加log
					log.info("待分配任务任务人员名单为空");
					ExceptionUtil.throwCommonException("待分配任务任务人员名单为空",
							ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
				}
				//yjw 2010-03-26 修改,不在这里检查是否休假,在查询出操作员列表的时候就应该排除休假的操作员
				//TlrLvdayService tlrLvdayService = TlrLvdayService.getInstance();
				// 判断是否有休假制度，把处于生产状态的操作员列表取出
//				if (isLv) {
//					for (String tlrno : tlrnoList) {
//						if (!tlrLvdayService.isTlrLv(tlrno)) {
//							disTlrnoList.add(tlrno);
//						} else {
//							log.info("可分配操作员[" + tlrno + "]已休假,任务分配排除该操作员");
//						}
//					}
//				} else {
//					disTlrnoList = tlrnoList;
//				}
				disTlrnoList = tlrnoList;
				// 检查出入操作员列表不能为空
				if (disTlrnoList.isEmpty()) {
					log.info("全部待分配任务的操作员已休假,没有找到可分配任务的操作员");
					ExceptionUtil.throwCommonException("全部待分配任务的操作员已休假",
							ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
				}
				// 检查是否为退回的任务,如果能够找到原任务处理员,并且该操作员在disTlrnoList列表中,那么直接返回给该操作员
//				String origTlrno = "";
//				if (wfTaskAssignBean != null && !DataFormat.trim(wfTaskAssignBean.getProsId()).equals("")) {
//					origTlrno = DataFormat.trim(getOrigTlrno(wfTaskAssignBean));
//				}
//				if (!origTlrno.equals("") && disTlrnoList.contains(origTlrno)) {
//					log.info("任务分配给原操作员 : " + origTlrno);
//					return origTlrno;
//				}
				// 根据TLR_WORKLOAD表中的信息，摘选出输入工作量最小的
				String trlStr = ArrayUtils.toString(disTlrnoList.toArray())
						.replace('{', '\'').replace('}', '\'').replaceAll(",",
								"','");
				String hsql = "po.tlrno in (" + trlStr + ")";
				if (isWorkType) {
					hsql += " and po.workType ='" + workType + "'";
				}
				hsql +=" and po.restWl < po.maxWl ";//剩余工作量必须小于阀值 add by kangbyron
				hsql += " order by restWl";
				List<TlrWorkload> tlrWorkloadList = tlrWorkloadDAO
						.queryByCondition(hsql);
				long min_rest_wl = 0;

//				if (disTlrnoList.size() > tlrWorkloadList.size()) {
//					// 有部分操作员没有分配过任务的情况
//					List<String> removeList = new ArrayList<String>();
//					for (TlrWorkload tlrWorkload : tlrWorkloadList) {
//						removeList.add(tlrWorkload.getTlrno());
//					}
//					disTlrnoList.removeAll(removeList);
//				} else {
				if(tlrWorkloadList.size()==0){//没有可分配的操作员都达到了审批阀值,暂时报错,后续加入待审批池
					log.info("没有找到可分配任务的操作员,分给任务池");
					//插工作流任务池表
					WorkflowTaskPool pool = new WorkflowTaskPool();
					pool.setAppno((String)map.get("APPNO"));
					pool.setApptype((String)map.get("APPTYPE"));
					pool.setAssignFlag(SystemConstant.TASKPOOL_UNASSIGN);
					pool.setContractno((String)map.get("CONTRACTNO"));
					pool.setInsertTime(new Timestamp(System.currentTimeMillis()));//时间戳
					pool.setProcessTemplate((String)map.get("PROC_NAME"));
					pool.setProcInsId((String)map.get("PROC_INS_ID"));
					pool.setTaskId((String)map.get("TASKID"));
					pool.setTaskName((String)map.get("TASK_NAME"));
					pool.setTimestamps(new Timestamp(System.currentTimeMillis()));//时间戳
					pool.setTlrnoList(WorkFlowParamService.getInstance().transListToString(tlrnoList));
					taskPoolDAO.insert(pool);
					return "任务池";
				}else{
					// 最小剩余工作量
					List<String> minTlrnoList = new ArrayList<String>();
					min_rest_wl = tlrWorkloadList.get(0).getRestWl();
					for (TlrWorkload tlrWorkload : tlrWorkloadList) {
						if (tlrWorkload.getRestWl() == min_rest_wl) {
							minTlrnoList.add(tlrWorkload.getTlrno().trim());
						} else {
							break;
						}
					}
					disTlrnoList = minTlrnoList;
				}
				// 随机分配
				Random random = new Random(System.currentTimeMillis());
				int rand = random.nextInt(disTlrnoList.size());
				String disTlrno = disTlrnoList.get(rand).trim();

				//记录TLR_WORKLOAD表该操作员工作量统计表
				insertOrUpdateTlrWorkload(disTlrno,
						null,
						null,
						SystemConstant.TASK_ASSIGN_MODE_1,
						false,false);
				return disTlrno;
			} else {
				ExceptionUtil.throwCommonException("任务分配模式不支持" + assignMode,
						ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
				return null;
			}
		} catch (CommonException commEx) {
			throw commEx;
		} catch (Exception ex) {
			ExceptionUtil.throwCommonException(ex.getMessage(),
					ErrorCode.ERROR_CODE_TASK_GET_ASSIGN_TLRNO_ERROR);
			return null;
		}
	}
	/* add by kangbyron 2011-2-25 广州个贷用 end */
}
