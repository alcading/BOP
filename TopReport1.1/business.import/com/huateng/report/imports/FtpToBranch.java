package com.huateng.report.imports;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Vector;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.DateUtil;
import com.huateng.report.imports.common.Constants;
import com.huateng.report.utils.ReportUtils;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.ChannelSftp.LsEntry;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpATTRS;
import com.jcraft.jsch.SftpException;

import resource.bean.pub.base.BaseWhjBranchInfo;

public class FtpToBranch implements Runnable {

	private Log logger = LogFactory.getLog(FtpToBranch.class);
	private BaseWhjBranchInfo branchInfo = null;
	private String jgbs;
	private String rq;

	public void run() {
		ftpToBranch(branchInfo);
	}

	public FtpToBranch(BaseWhjBranchInfo branchInfo) {
		this.branchInfo = branchInfo;
		this.jgbs = branchInfo.getWhjjgbs();
	}

	private void ftpToBranch(BaseWhjBranchInfo branchInfo) {

		String ip = branchInfo.getFtpip();
		String name = branchInfo.getFtpname();
		String pwd = branchInfo.getFtppwd();
		String dir = branchInfo.getFtpdir();
		String port = branchInfo.getFtpport();
		String isFtp = branchInfo.getFtpbz();// 1-ftp,0-sftp
		logger.debug("####" + jgbs + "####开始同步");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = DateUtil.dateToNumber(new Date());
		try {
			rq = sdf.format(DateUtil.getStartDateByDays(DateUtil.stringToDate2(date), 1));
		} catch (CommonException e1) {
			e1.printStackTrace();
		}
		// 远程路径
		dir = dir + "/" + rq;
		// 本地路径
		String filePath = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9001,
				"/home/report/whbs/");

		String path = filePath + branchInfo.getWhjjgbs() + "/" + rq + "/";
		if ("1".equals(isFtp)) {
			FTPClient ftpClient = new FTPClient();
			try {
				ftpClient.connect(ip);
				ftpClient.login(name, pwd);
				FTPClientConfig conf = new FTPClientConfig(FTPClientConfig.SYST_UNIX);
				ftpClient.configure(conf);

				if (!FTPReply.isPositiveCompletion(ftpClient.getReplyCode())) {
					logger.info("####" + jgbs + "####未连接到FTP,用户名或密码错误");
					ftpClient.disconnect();
				} else {
					logger.info("####" + jgbs + "####FTP链接成功。");
				}

				// 设置访问被动模式
				ftpClient.setRemoteVerificationEnabled(false);
				ftpClient.enterLocalPassiveMode();

				// Date date = new Date();
				// String rq = String.valueOf(Integer.valueOf(sdf.format(date))
				// - 1);

				ftpClient.changeWorkingDirectory(dir);
				FTPFile[] files = ftpClient.listFiles();
				logger.debug("####" + jgbs + "####读取到ftp路径" + dir + "下有" + files.length + "个文件");

				File dir1 = new File(path);
				if (dir1.exists()) {
					logger.debug("目录存在");
				} else {
					dir1.mkdirs();
				}

				for (FTPFile file : files) {

					File localFile = new File(path + file.getName());
					OutputStream ios = new FileOutputStream(localFile);
					ftpClient.retrieveFile(file.getName(), ios);
					ios.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					ftpClient.disconnect();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else if ("0".equals(isFtp)) {
			ChannelSftp sftp = null;
			Session sshSession = null;
			Channel channel = null;
			try {
				JSch jsch = new JSch();
				jsch.getSession(name, ip, Integer.valueOf(port));
				sshSession = jsch.getSession(name, ip, Integer.valueOf(port));
				logger.debug("session created!");
				sshSession.setPassword(pwd);
				sshSession.setTimeout(600000);
				Properties sshConfig = new Properties();
				sshConfig.put("StrictHostKeyChecking", "no");
				sshSession.setConfig(sshConfig);
				sshSession.connect();
				logger.debug("session connected!");
				channel = sshSession.openChannel("sftp");
				channel.connect();
				logger.debug("opening channel!");
				sftp = (ChannelSftp) channel;
				logger.debug("connected to " + ip);

				// 批量下载文件
				List<String> filenames = new ArrayList<String>();

				Vector v = sftp.ls(dir);
				if (v.size() > 0) {
					System.out.println("本次处理文件个数不为零,开始下载...fileSize=" + v.size());
					File dir1 = new File(path);
					if (dir1.exists()) {
						logger.debug("目录存在");
					} else {
						dir1.mkdirs();
					}
					Iterator it = v.iterator();
					while (it.hasNext()) {
						LsEntry entry = (LsEntry) it.next();
						String filename = entry.getFilename();
						SftpATTRS attrs = entry.getAttrs();
						if (!attrs.isDir()) {
							boolean flag = false;
							FileOutputStream fieloutput = null;

							File file = new File(path + filename);
							fieloutput = new FileOutputStream(file);
							sftp.get(dir + "/" + filename, fieloutput);

							logger.debug("===DownloadFile:" + dir + " success from sftp.");

						}
					}
				}

			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (JSchException e) {
				e.printStackTrace();
			} catch (SftpException e) {
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} finally {
				if (sftp != null) {
					sftp.quit();
				}
				if (channel != null) {
					channel.disconnect();
				}
				if (sshSession != null) {
					sshSession.disconnect();
				}
			}
		}
	}
}
