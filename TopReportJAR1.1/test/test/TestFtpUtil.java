/**
 * TestFtpUtil.java
 * test
 *
 * Function： TODO 
 *
 *   ver     date      		author
 * ──────────────────────────────────
 *   		 2011-12-23 		shen_antonio
 *
 * Copyright (c) 2011, TNT All Rights Reserved.
*/

package test;

import java.util.StringTokenizer;

import junit.framework.TestCase;

import org.apache.commons.net.ftp.FTP;

import com.huateng.ebank.framework.util.ftp.FtpUtil;

/**
 * ClassName:TestFtpUtil
 * Function: TODO ADD FUNCTION
 * Reason:	 TODO ADD REASON
 *
 * @author   shen_antonio
 * @version  
 * @since    Ver 1.1
 * @Date	 2011-12-23		下午4:32:22
 *
 * @see 	 
 */
public class TestFtpUtil extends TestCase {
	
	public void testGetFile(){
		FtpUtil ftpUtil = new FtpUtil("130.252.15.37","svn","svn");
		ftpUtil.connectServer(FTP.ASCII_FILE_TYPE);
		ftpUtil.downloadFile("test/1", "/Users/shen_antonio/Documents/temp/out.txt");

        StringTokenizer stringtokenizer = new StringTokenizer("/Users/shen_antonio/Documents/temp/", "/");
        while(stringtokenizer.hasMoreElements()){
        		System.out.println(stringtokenizer.nextElement());
        }
	}

}

