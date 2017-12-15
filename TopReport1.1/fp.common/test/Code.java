package test;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.nio.charset.Charset;

public class Code {

	
	public static String codeString(String fileName) throws Exception{  
	    BufferedInputStream bin = new BufferedInputStream(  
	    new FileInputStream(fileName));  
	    int p = (bin.read() << 8) + bin.read();  
	    String code = null;  
	      
	    switch (p) {  
	        case 0xefbb:  
	            code = "UTF-8";  
	            break;  
	        case 0xfffe:  
	            code = "Unicode";  
	            break;  
	        case 0xfeff:  
	            code = "UTF-16BE";  
	            break;  
	        default:  
	            code = "GBK";  
	    }  
	      
	    return code;  
	}
	
	public static void main(String[] args) throws Exception {
		
		String fileName = "E:/home/B20170906";
		
		System.out.println(codeString(fileName));
		
		
		System.out.println(Charset.defaultCharset().name());
	}
}
