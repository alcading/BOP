<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript" src="<%=request.getContextPath()%>/js/menu.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/scrollbutton.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/poslib.js"></script>

<!-- 
<link href="<%=request.getContextPath()%>/css/gz-menu.css" rel="stylesheet" type="text/css">
 -->
 <link href="<%=request.getContextPath()%>/css/menu.css" rel="stylesheet" type="text/css">
 
<link href="<%=request.getContextPath()%>/css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">

</style>
</head>
<!--  gz 
<body style="margin: 0; overflow: hidden ;background-color: #F8D0B7;" >
-->
<body style="margin: 0; overflow: hidden ;">

 <table width="100%" border="0" cellpadding="0" cellspacing="0" >
<tr>
	 <td>
		<nobr>
		<script language="javascript" >

		Menu.prototype.mouseHoverDisabled = false;
		//Menu.prototype.cssFile = "<%=request.getContextPath()%>/css/gz-menu.css";
		Menu.prototype.cssFile = "<%=request.getContextPath()%>/css/menu.css";
		var menuMain = new MenuBar();
		<%
		StringBuffer m = (StringBuffer)request.getSession().getAttribute("menu");
		%>
		Menu_buildMenu(new  Array(<%=m.toString()%>),menuMain);

		/* menuMain.add( tmp = new MenuButtonUrl( "退出",function Exit(){sExit()} ));
		menuMain.add( tmp = new MenuButtonUrl( "我的首页",function Exit(){backToWelcome()} )); */

		menuMain.write();

		function sExit()
		{
			window.open("<%=request.getContextPath()%>/logout.do", "_top");
		}


		</script>
		</nobr>
	</td>
</tr>
</table> 
</body>
</html>