<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="�ͻ����������۲�Ʒ��ϸ��ѯ">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="SolderDailyQueryDetail" init="true" submitMode="current">
      		<table width="600px">
      			<tr>

      			  <td>
      			   <br/>
      			  </td>
				

      			</tr>

      			<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="id,pname,amt" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 <tr>
					<td colspan="2">
					<br/>
					<br/>
						<@CommonQueryMacro.Button id= "btSee"/>&nbsp;&nbsp;
						
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