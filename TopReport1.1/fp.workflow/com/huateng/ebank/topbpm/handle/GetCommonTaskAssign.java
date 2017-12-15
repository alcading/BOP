/**
 * GetCommonTaskAssign.java
 * com.huateng.ebank.topbpm.handle
 *
 * Function： TODO 
 *
 *   ver     date      		author
 * ──────────────────────────────────
 *   		 2011-12-18 		shen_antonio
 *
 * Copyright (c) 2011, TNT All Rights Reserved.
*/

package com.huateng.ebank.topbpm.handle;

import java.sql.Statement;
import java.util.Map;

import com.huateng.common.DataFormat;
import com.huateng.ebank.business.common.GlobalInfo;
import com.huateng.ebank.business.workflow.WorkFlowParamService;
import com.huateng.ebank.business.workflow.WorkFlowServiceHelper;
import com.huateng.ebank.business.workflow.WorkflowConstant;
import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.topbpm.commonface.exception.WIException;
import com.huateng.topbpm.graph.exe.ExecutionContext;
import com.huateng.topbpm.taskmgmt.def.AssignmentHandler;
import com.huateng.topbpm.taskmgmt.exe.Assignable;

/**
 * ClassName:GetCommonTaskAssign
 * Function: TODO ADD FUNCTION
 * Reason:	 TODO ADD REASON
 *
 * @author   shen_antonio
 * @version  
 * @since    Ver 1.1
 * @Date	 2011-12-18		下午11:38:21
 *
 * @see 	 
 */
public class GetCommonTaskAssign implements AssignmentHandler {

	public void assign(Assignable arg0, ExecutionContext arg1) throws Exception {

		// TODO Auto-generated method stub
		System.out.println("---------------Task Enter---------------");
		Statement statement = null;
		try{
			Map map = arg1.getTaskInstance().getVariables();
			long taskId = arg1.getTaskInstance().getId();
			String procName = arg1.getProcessDefinition().getName();
			String nodeName = arg1.getNode().getName();
			long procInsId = arg1.getProcessInstance().getId();
			map.put("TASKID", Long.toString(taskId));
			map.put("PROC_NAME", procName);
			map.put("TASK_NAME", nodeName);
			map.put("PROC_INS_ID", Long.toString(procInsId));


			Map resultmap = WorkFlowParamService.getInstance().getCommonTaskAssign(map);
			//记录当前分配岗位	Added by UU_Wu 2009-9-22
			arg1.getTaskInstance().setVariable(WorkflowConstant.WORKFLOW_ATTRIBUTE_ROLEID,
					resultmap.get(WorkflowConstant.WORKFLOW_ATTRIBUTE_ROLEID));
			//记录当前分配机构 Added by UU_Wu 2009-9-27
			arg1.getTaskInstance().setVariable(WorkflowConstant.WORKFLOW_ATTRIBUTE_CURRBRHID,
					resultmap.get(WorkflowConstant.WORKFLOW_ATTRIBUTE_CURRBRHID));
			String[] arr =  (String[]) resultmap.get("OPRNO_ARR");
			/* modify by shen_antonio 20100714 jira:BMS-2809 begin .*/
			if(arr.length == 1){
				arg1.getTaskInstance().setPooledActors(arr);
				map.put("OPRNO_ARR", arr[0]);
			}
			else if(arr.length ==0){
				arg1.getTaskInstance().setPooledActors(new String[]{WorkFlowServiceHelper.TASKASSIGN_NONE3});
				map.put("OPRNO_ARR", WorkflowConstant.WORKFLOW_ASSIGN_NONE);
				WIException wex = new WIException("任务分配错误，没有合适的人员执行一下一个任务");
				throw(wex);
			}
			/* modify by shen_antonio 20100714 jira:BMS-2809 end.*/
			else{
				arg1.getTaskInstance().setPooledActors(arr);
				map.put("OPRNO_ARR", WorkFlowParamService.getInstance().transArrayToString(arr));
			}
			String roletype = "";
			map.put("ROLETYPE", roletype);
			WorkFlowParamService.getInstance().OprWorkFlowAppInfo(map);
			WorkFlowParamService.getInstance().initInsertWorkFlowTaskInfo(map);

			System.out.println("---------------Before TaskLeave---------------");
			System.out.println("nextNode = " + arg1.getNode().getName());
			System.out.println("nextTlrnoList = " + arg1.getTaskInstance().getPooledActors() );
			//node

//			List transList = arg1.getNode().getLeavingTransitionsList();


		}catch(CommonException cex){
			if(DataFormat.isEmpty(arg1.getTaskInstance().getActorId())
					&&arg1.getTaskInstance().getPooledActors().isEmpty()){
				arg1.getTaskInstance().setActorId(WorkFlowServiceHelper.TASKASSIGN_NONE3);
				GlobalInfo globalData = GlobalInfo.getCurrentInstanceWithoutException();

				//把分配结果存入全局变量
				if(globalData!=null){
					globalData.setAssignedOprid(WorkFlowServiceHelper.TASKASSIGN_NONE3);
				}
			}

			throw new WIException(cex.getErrMessage());
		}catch(WIException wex){
			throw wex;
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

}

