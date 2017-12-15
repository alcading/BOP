/**
 * TestStringEscapeUtils.java
 * test.com.fpportal
 *
 * Function： TODO 
 *
 *   ver     date      		author
 * ──────────────────────────────────
 *   		 2012-1-17 		shen_antonio
 *
 * Copyright (c) 2012, TNT All Rights Reserved.
*/

package test.com.fpportal;

import org.apache.commons.lang.StringEscapeUtils;

import junit.framework.TestCase;

/**
 * ClassName:TestStringEscapeUtils
 * Function: TODO ADD FUNCTION
 * Reason:	 TODO ADD REASON
 *
 * @author   shen_antonio
 * @version  
 * @since    Ver 1.1
 * @Date	 2012-1-17		上午11:01:51
 *
 * @see 	 
 */
public class TestStringEscapeUtils extends TestCase {
	
	public void testXml(){
		String str = "est&nbsp;";
		String tt = StringEscapeUtils.unescapeHtml(str);
		System.out.print("tt = " + tt);
	}

}

