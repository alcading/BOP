<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign st="${RequestParameters['st']}" />
<@CommonQueryMacro.page title="������Ƽ�ά��">
<#if st=="2">
	<@CommonQueryMacro.CommonQuery id="BiMonthExchangeRateDetail" init="true" submitMode="all" navigate="false">
	<table align="left">
	      <tr valign="top">
	  			<td valign="top">
	  			<FIELDSET name='group6' style="padding: 6px;">
					<LEGEND>������Ƽ�ά����ϸ��Ϣ</LEGEND>
					<table frame=void width="100%" class="grouptable" id="detailTable">
					<tr>
					             
		                  <td nowrap class="labeltd" colspan=2>�޸�ǰ</td>
						          
						   <td nowrap class="labeltd" colspan=2>�޸ĺ�</td>
						 
						</tr>
		            	<tr>
		                  <td nowrap class="labeltd">����</td>
						  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="old_id"/></td>
						   <td nowrap class="labeltd">����</td>
						  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="id"/></td>
						</tr>
		            	<tr>
		                  <td nowrap class="labeltd">��λ</td>
						  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="old_rateUnit"/></td>
						   <td nowrap class="labeltd">��λ</td>
						  <td class="datatd" nowrap ><@CommonQueryMacro.SingleField fId="rateUnit"/></td>
						</tr>
						<tr>
		                  <td nowrap class="labeltd">����</td>
		                  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="old_yearMonth"/></td>
		                  <td nowrap class="labeltd">����</td>
		                  <td class="datatd" nowrap ><@CommonQueryMacro.SingleField fId="yearMonth"/></td>
		                </tr>
		                <tr>
		                  <td nowrap class="labeltd">�м��</td>
		                  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="old_rateMidprice"/></td>
		                   <td nowrap class="labeltd">�м��</td>
						  <td class="datatd" nowrap ><@CommonQueryMacro.SingleField fId="rateMidprice"/></td>
		                </tr>        
					</table>
					</FIELDSET>
					
			<tr valign="top">
      		   <td valign="CENTER">
					<left><@CommonQueryMacro.Button id= "btClose"/></left>
      			</td>
      		</tr> 
      		
	  			</td>
	  		</tr>
	</table>
	</@CommonQueryMacro.CommonQuery>
<#else>
	<@CommonQueryMacro.CommonQuery id="BiMonthExchangeRateDetail" init="true" submitMode="all"  navigate="false">
	<table align="left">
      <tr valign="top">
  			<td valign="center">
  			<@CommonQueryMacro.Group id ="group1" label="������Ƽ�ά����ϸ��Ϣ" fieldStr="old_id,old_rateUnit,old_yearMonth,old_rateMidprice" colNm=2/>
  			</td>
  		</tr>
  		<tr valign="top">
      		   <td valign="left">
					<left><@CommonQueryMacro.Button id= "btClose"/></left>
      			</td>
      		</tr>
	</table>
	</@CommonQueryMacro.CommonQuery>
</#if>
 <script language="javascript">
     function btClose_onClickCheck(button){
       unloadPageWindows("partWin");
       return false;
     }
</script>

</@CommonQueryMacro.page>
