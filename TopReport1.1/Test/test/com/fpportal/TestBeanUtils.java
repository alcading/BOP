/**
 * TestBeanUtils.java
 * test.com.fpportal
 *
 * Function： TODO 
 *
 *   ver     date      		author
 * ──────────────────────────────────
 *   		 2012-4-6 		shen_antonio
 *
 * Copyright (c) 2012, TNT All Rights Reserved.
*/

package test.com.fpportal;

import java.beans.PropertyDescriptor;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import junit.framework.TestCase;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.beanutils.converters.FloatConverter;
import org.apache.commons.beanutils.locale.LocaleConvertUtils;


/**
 * ClassName:TestBeanUtils
 * Function: TODO ADD FUNCTION
 * Reason:	 TODO ADD REASON
 *
 * @author   shen_antonio
 * @version  
 * @since    Ver 1.1
 * @Date	 2012-4-6		上午9:49:51
 *
 * @see 	 
 */
public class TestBeanUtils extends TestCase {

static{
	LocaleConvertUtils.register(new FloatLocaleConverter(null), Float.class,null);
	ConvertUtils.register(new FloatConverter(null), Float.TYPE);
}
	public void test() {
		 Map map = new HashMap();
		 map.put("field","17.999555");
		 FloatBean fb = new FloatBean();
		 try{
		 PropertyDescriptor descriptor = PropertyUtils.getPropertyDescriptor(fb, "field");
		 System.out.print( descriptor.getPropertyType().getName());
		 System.out.print( Float.TYPE.getName());
		 BigDecimal bd = new  BigDecimal(new String("17.9995550"));
		 //System.out.println(bd.floatValue());
		 float txt = 17.999558f;
		 System.out.println(txt);
		 System.out.println(new Float("17.999555"));
			 FloatLocaleConverter flc = new FloatLocaleConverter(null);
			 System.out.print(flc.convert(new String("17.999555")).toString());
			 //BeanUtils.copyProperties(fb, map);
			 BeanUtils.setProperty(fb,"field", new String("17.999555"));
			 System.out.print(fb.getField());
			 if(fb.getField() != 17.999555){
				 fail("fail bean copy result");
			 }
		 }catch(Exception e){
			 e.printStackTrace();
			 fail("fail bean copy");
		 }	
	}
}

