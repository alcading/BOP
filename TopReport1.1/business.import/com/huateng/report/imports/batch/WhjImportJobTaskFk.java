package com.huateng.report.imports.batch;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.ebank.framework.util.DateUtil;
import com.huateng.report.imports.common.Constants;
import com.huateng.report.utils.ReportUtils;

import resource.bean.pub.WhjFkGs;
import resource.bean.pub.WhjFkSj;
import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;

public class WhjImportJobTaskFk {
	private static final Logger logger = Logger.getLogger(WhjImportJobTaskFk.class);
	private String rq;
	private String rqT;
	private String yrq;

	/**
	 * 外汇报送-读取反馈文件 add by tianqf 20170815
	 * 
	 * @throws CommonException
	 */
	public void doBiz() throws CommonException {
		logger.info("####开始读取反馈文件");
		// 读取文件
		String filePath1 = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9041);
		String filePath2 = ReportUtils.getSysParamsValue(Constants.PARAM_DIR, Constants.PARAM_DIR_9042);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = DateUtil.dateToNumber(new Date());
		rq = sdf.format(new Date());
		try {
			yrq = sdf.format(DateUtil.getStartDateByDays(DateUtil.stringToDate2(date), 1));
			rqT = yrq.substring(2, 8);
		} catch (CommonException e) {
			e.printStackTrace();
		}
		boolean flag1 = readFile(filePath1);
		boolean flag2 = readFile(filePath2);
		if (flag1&&flag2) {
			logger.debug("****读取反馈信息并入库成功****");
		}

	}

	/**
	 * 读取反馈文件
	 * 
	 * @param filePath
	 * @return
	 */
	private boolean readFile(String filePath) {

		File filePss = new File(filePath);
		File[] filePs = filePss.listFiles();
		logger.debug("****6位日期为：" + rqT);
		boolean flag = false;
		for (File fileP : filePs) {

			logger.debug("****文件夹名为：" + fileP.getName());
			if (fileP.isDirectory() && fileP.exists() && fileP.getName().contains(rqT)) {
				File[] fileS = fileP.listFiles();
				for (File file : fileS) {
					if (file.isFile() && file.exists() && file.getName().contains("TT")) {
						// 读取TT文件，判断有无反馈错误信息
						flag = readTT(file);
					}
				}
				for (File file : fileS) {
					// TT文件有反馈错误信息，则读取反馈数据文件
					if (file.isFile() && file.exists() && !file.getName().contains("TT") && flag) {
						boolean f = readFile(file);
					}
				}
			}
		}

		return false;
	}

	/**
	 * 读取反馈数据文件
	 * 
	 * @param file
	 * @return
	 */
	private boolean readFile(File file) {

		String fileNameFk = file.getName();// 反馈文件名
		String fileNameFs = fileNameFk.substring(0, 25) + ".XML";// 发送文件名
		String jgdm = fileNameFs.substring(5, 17);
		String jgbs = fileNameFk.substring(11, 15);
		SAXReader reader = new SAXReader();
		Document doc;
		ROOTDAO rootDao = ROOTDAOUtils.getROOTDAO();
		try {
			doc = reader.read(file);
			Element root = doc.getRootElement();
			Element FORMATERRS = root.element("FORMATERRS");
			if (!"0".equals(FORMATERRS.getText())) {
				Element FORMATS = root.element("FORMATS");
				List<Element> childFORMATS = FORMATS.elements();
				for (Element e : childFORMATS) {
					logger.debug(e.getText());
					WhjFkGs whjFkGs = new WhjFkGs();
					whjFkGs.setId(ReportUtils.getUUID());
					whjFkGs.setFormaterrs(FORMATERRS.getText());
					whjFkGs.setFormatdDesc(e.getText());
					whjFkGs.setFilenameFs(fileNameFs);
					whjFkGs.setFilenameFk(fileNameFk);
					whjFkGs.setJgdm(jgdm);
					whjFkGs.setJgbs(jgbs);
					whjFkGs.setRq(rq);
					whjFkGs.setJlzt("1");
					rootDao.save(whjFkGs);
				}
			}
			Element TOTALRECORDS = root.element("TOTALRECORDS");
			String totalrecords = TOTALRECORDS.getText();
			Element SUCRECORDS = root.element("SUCRECORDS");
			String sucrecords = SUCRECORDS.getText();
			Element FALRECORDS = root.element("FALRECORDS");
			String falrecords = FALRECORDS.getText();
			if (!"0".equals(falrecords)) {
				Element ERRRECORDS = root.element("ERRRECORDS");
				List<Element> childERRRECORDS = ERRRECORDS.elements();
				for (Element e : childERRRECORDS) {// REC
					String bussno = e.element("BUSSNO").getText();
					logger.debug(bussno);
					List<Element> childRECS = e.elements();
					for (Element er : childRECS) {// ERRFIELDS
						//
						if ("ERRFIELDS".equals(er.getName())) {
							List<Element> childERRFIELDS = er.elements();
							for (Element ee : childERRFIELDS) {// ERR
								WhjFkSj whjFkSj = new WhjFkSj();
								whjFkSj.setId(ReportUtils.getUUID());
								whjFkSj.setBussno(bussno);

								String errfield = ee.element("ERRFIELD").getText();
								String errfieldcn = ee.element("ERRFIELDCN").getText();
								String errdesc = ee.element("ERRDESC").getText();

								whjFkSj.setErrfield(errfield);
								whjFkSj.setErrfieldcn(errfieldcn);
								whjFkSj.setErrdesc(errdesc);

								whjFkSj.setFilenameFk(fileNameFk);
								whjFkSj.setFilenameFs(fileNameFs);
								whjFkSj.setJgdm(jgdm);
								whjFkSj.setJgbs(jgbs);
								whjFkSj.setRq(rq);
								whjFkSj.setJlzt("1");
								whjFkSj.setTotalrecords(totalrecords);
								whjFkSj.setSucrecords(sucrecords);
								whjFkSj.setFalrecords(falrecords);
								rootDao.save(whjFkSj);

							}
						}
					}
				}
			}

		} catch (

		DocumentException e)

		{
			e.printStackTrace();
		} catch (

		CommonException e1)

		{
			e1.printStackTrace();
		}

		return false;

	}

	/**
	 * 读取TT文件判断有无错误反馈记录
	 * 
	 * @param file
	 * @return
	 */
	private boolean readTT(File file) {

		SAXReader reader = new SAXReader();
		String fileNameFk = file.getName();// 反馈文件名
		String fileNameFs = fileNameFk.substring(0, 25) + ".XML";// 发送文件名
		String jgdm = fileNameFs.substring(5, 17);
		String jgbs = fileNameFk.substring(11, 15);
		Document doc;
		ROOTDAO rootDao = ROOTDAOUtils.getROOTDAO();
		try {
			doc = reader.read(file);
			Element root = doc.getRootElement();
			Element FORMATERRS = (Element) root.selectSingleNode("FORMATERRS");
			// Element FORMATERRS = root.element("FORMATERRS");
			if (FORMATERRS != null) {
				if (!"0".equals(FORMATERRS.getText())) {
					Element FORMATS = root.element("FORMATS");
					List<Element> childFORMATS = FORMATS.elements();
					for (Element e : childFORMATS) {
						logger.debug(e.getText());
						WhjFkGs whjFkGs = new WhjFkGs();
						whjFkGs.setId(ReportUtils.getUUID());
						whjFkGs.setFormaterrs(FORMATERRS.getText());
						whjFkGs.setFormatdDesc(e.getText());
						whjFkGs.setFilenameFs(fileNameFs);
						whjFkGs.setFilenameFk(fileNameFk);
						whjFkGs.setJgdm(jgdm);
						whjFkGs.setJgbs(jgbs);
						whjFkGs.setRq(rq);
						whjFkGs.setJlzt("1");
						rootDao.save(whjFkGs);
					}
				}
			}
			logger.debug(root.getName());
			Element TOTALFILES = (Element) root.selectSingleNode("TOTALFILES");
			if (TOTALFILES != null) {
				String num = root.element("TOTALFILES").getText();
				logger.debug(num);
				if ("0".equals(num)) {
					// num=0,反馈无错误
					return false;
				} else {
					// num!=0,反馈有错误
					return true;
				}
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (CommonException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return false;

	}
}
