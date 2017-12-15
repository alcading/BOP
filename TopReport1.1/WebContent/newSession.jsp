<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ page contentType="text/html;charset=utf-8" language="java"%>
<html>
  <head>
<script>
      function openNewSessionIE8NoMerge() {
        // This opens a new session window for windows with IE8, unfortually there is a Active X security warning.     
        <% String distURL =  request.getRequestURL().toString() + "custlogin.do?userName=99999999&passWord=huateng123"; %> 
        if(isIE7Abort()){
        try{
        		var WshShell = new ActiveXObject("WScript.Shell");
			WshShell.Run("iexplore.exe -nomerge " + "<%=distURL%>");
			window.close();
			} catch (e) {
				alert("无法启动Excel!\n\n" + e.message
						+ "\n\n如果您确信您的电脑中已经安装了Excel，"
						+ "那么请调整IE的安全级别(安全级 - 低)。\n\n具体操作：\n\n"
						+ "工具 → Internet选项 → 安全 → 受信任的站点 → 拉动安全级至(低) \n\n"
						+ "然后把本网址添加到受信任的站点中，保存后退出系统，再次登陆。");
				window.location.href  = "";
				return false;
			}
		} else {
		 	window.location.href  = "<%=distURL%>";
		}
	}

	function isIE7Abort() {
		var browser = navigator.appName
		var b_version = navigator.appVersion
		var version = b_version.split(";");
		var trim_Version = version[1].replace(/[ ]/g, "");
		if (browser == "Microsoft Internet Explorer"
				&& trim_Version == "MSIE6.0") {
			return false;
		} else if (browser == "Microsoft Internet Explorer"
				&& trim_Version == "MSIE7.0") {
			return true;
		} else if (browser == "Microsoft Internet Explorer"
				&& trim_Version == "MSIE8.0") {
			return true;
		} else if (browser == "Microsoft Internet Explorer"
				&& trim_Version == "MSIE9.0") {
			return true;
		}
	}
</script>
</head>
  <body onload="openNewSessionIE8NoMerge()">
  </body>
</html>