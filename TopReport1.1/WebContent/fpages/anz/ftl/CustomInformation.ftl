<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="���¿ͻ���Ϣ��ѯ">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="CustomInformation" init="false" submitMode="current">
      		<table width="1000px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="�ͻ�������Ϣ��ѯ" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      			<tr>

      			  <td>
      			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
      			  </td>
					<td align="right" style="display:none">
	    				<a href="javascript:btNewClick();"> ����</a>
	       			</td>

      			</tr>
      				<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="id,crum,solId,cloc,mobilePhoneNumber,idno,zipCode,address,cmrm" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 <tr style="display:none">
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btMod"/>&nbsp;&nbsp;
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