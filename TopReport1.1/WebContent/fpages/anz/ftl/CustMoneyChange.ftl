<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="�ͻ��ʲ��仯�ſ�">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="CustMoneyChange" init="false" submitMode="current">
      		<table width="1000px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="�ͻ��ʲ��仯�ſ���ѯ" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      				<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="Month,cnum,crum,solId,cmrm,changeMoney,changeRate" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 
				
      		</table>
      	</@CommonQueryMacro.CommonQuery>
      </td>
   </tr>
   </table>
<script language="javascript">

</script>
</@CommonQueryMacro.page>