<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="home">
<@CommonQueryMacro.PortalWin id="poralwin1" cookied="true">
   <@CommonQueryMacro.PortalGroup width="70%">
	   <@CommonQueryMacro.Portal id="a0" title="�ٶ�һ��1" height="340" url="/login/welcome.jsp">
	   </@CommonQueryMacro.Portal>
   </@CommonQueryMacro.PortalGroup>
   <@CommonQueryMacro.PortalGroup width="30%">
	   <@CommonQueryMacro.Portal id="a1" title="��ӭ2" height="200" url="/login/welcome.jsp">
	   </@CommonQueryMacro.Portal>
	   <@CommonQueryMacro.Portal id="a2" title="����3" height="200" include="true" collapsible="false" url="/login/welcome.jsp">
	   </@CommonQueryMacro.Portal>
   </@CommonQueryMacro.PortalGroup>
   <@CommonQueryMacro.PortalGroup width="30%">
	   <@CommonQueryMacro.Portal id="a3" title="��ӭ4" height="200" url="/login/welcome.jsp">
	   </@CommonQueryMacro.Portal>
	   <@CommonQueryMacro.Portal id="a4" title="����5" height="200" include="true" collapsible="false" url="/login/welcome.jsp">
	   </@CommonQueryMacro.Portal>
   </@CommonQueryMacro.PortalGroup>
</@CommonQueryMacro.PortalWin>
<script>
	
	var panels = [
		{id:'p1',title:'Tutorials',height:200,collapsible:false,draggable:false,href:'/login/welcome.jsp'},
		{id:'p2',title:'Clock',height:400,url:'/login/welcome.jsp'},
		{id:'p3',title:'PropertyGrid',height:200,url:'/login/welcome.jsp'}
	];
	//$('#poralwin1').portal('addPanels',panels);
</script>
</@CommonQueryMacro.page>
