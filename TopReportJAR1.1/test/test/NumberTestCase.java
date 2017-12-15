/**
 * NumberTestCase.java
 * test
 *
 * Function： TODO 
 *
 *   ver     date      		author
 * ──────────────────────────────────
 *   		 2011-12-28 		shen_antonio
 *
 * Copyright (c) 2011, TNT All Rights Reserved.
*/

package test;

import java.math.BigDecimal;

import junit.framework.Assert;
import junit.framework.TestCase;

import org.apache.commons.lang.math.NumberUtils;

/**
 * ClassName:NumberTestCase
 * Function: TODO ADD FUNCTION
 * Reason:	 TODO ADD REASON
 *
 * @author   shen_antonio
 * @version  
 * @since    Ver 1.1
 * @Date	 2011-12-28		上午4:56:47
 *
 * @see 	 
 */
public class NumberTestCase extends TestCase {

	public void testNumber(){
		String s = "0.9999999";
		if(NumberUtils.isNumber(s)){
			BigDecimal bd = NumberUtils.createBigDecimal(s).abs();
			if(bd.scale()>6 || bd.precision() > 11){
				s = "=\"" + s + "\"";//String datatype Value format for csv display
				System.out.print("s=" + s);
			}else{
				Assert.fail();
			}
		}else{
			Assert.fail();
		}
	}
}

