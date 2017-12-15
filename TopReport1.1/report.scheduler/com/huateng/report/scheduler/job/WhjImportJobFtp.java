package com.huateng.report.scheduler.job;

import java.util.Date;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.huateng.ebank.monitor.globalInfo.service.GlobalInfoService;
import com.huateng.report.common.service.ReportCommonService;
import com.huateng.report.imports.batch.WhjImportJobTaskFtp;
import com.huateng.report.utils.ReportEnum;
import com.huateng.report.utils.ReportUtils;

import resource.bean.report.ReportJobConfig;
import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;


/**
 * 生成定时任务
 */
public class WhjImportJobFtp implements Job {
	private Logger log = Logger.getLogger(this.getClass());

	public static final String BOP_IMPORT_ISFIN = "BOP_IMPORT_ISFIN";

	public void execute(JobExecutionContext context) throws JobExecutionException {
		String onOff = ReportUtils.getSysParamsValue("IMP", "TASK", "OFF");
		log.info("####tianqf####开始执行FTP同步定时任务");
		if ("ON".equalsIgnoreCase(onOff)) {
			ServletContext serContext = null;
			String result = null;
			Date startTm = null;
			Date endTm = null;
			String jobName = null;
			String jobId = null;
			String remark = "";
			try {
				serContext = (ServletContext) context.getScheduler().getContext().get("serContext");
				jobId = context.getJobDetail().getJobDataMap().getString("jobId");// 定时器主键
				ROOTDAO rootdao = ROOTDAOUtils.getROOTDAO();
				ReportJobConfig jobConfig = rootdao.query(ReportJobConfig.class, jobId);
				jobName = jobConfig.getJobName();
				boolean isdo = ReportJobUtil.isDoTaskJob(serContext, BOP_IMPORT_ISFIN, jobConfig);
				remark = jobConfig.getJobRemark();
				if (isdo) {
					startTm = new Date();
					serContext.setAttribute(BOP_IMPORT_ISFIN, false);
					log.info("==111定时ftp同步数据begin==");
					/*ImportJobTask importJobTask = new ImportJobTask();
					importJobTask.doBiz();*/
					WhjImportJobTaskFtp whjImportJobTaskFtp = new WhjImportJobTaskFtp();
					whjImportJobTaskFtp.doBiz();
					log.info("==111定时ftp同步数据end==");
					endTm = new Date();
					result = ReportEnum.REPORT_RESULT.SUCCESS.value;
					serContext.setAttribute(BOP_IMPORT_ISFIN, true);
					
				}
			} catch (Exception e) {
				e.printStackTrace();
				log.error("定时导入文件异常" + e.getMessage());
				serContext.setAttribute(BOP_IMPORT_ISFIN, true);
				result = ReportEnum.REPORT_RESULT.FAILD.value;
				remark+= ":定时导入文件异常,"+e.getMessage();
			}
			ReportCommonService.getInstance().saveJobLog(startTm, endTm, jobId, result, jobName, remark);
		}
	}
}
