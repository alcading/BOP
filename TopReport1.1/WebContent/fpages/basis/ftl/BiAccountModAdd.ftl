<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="">
<@CommonQueryMacro.CommonQuery id="BiAccountModAdd" init="true" insertOnEmpty="true" >

	
<table>
	<tr>
		<td>
		<@CommonQueryMacro.GroupBox id="BiAccountModAdd" label="�ͻ��˻���Ϣά��" expand="true">
			<table frame=void class="grouptable" width="900px">
				<tr>
					<td rowspan="5"  align="center" nowrap class="labeltd" >��<br>��<br>��<br>��<br>��<br>Ϣ</td>
					<td align="center" nowrap class="labeltd" >�ͻ��˺� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="id"/> </td>
                    
                    <td rowspan="5"  align="center" nowrap class="labeltd" >��<br>��<br>��<br>��<br>��<br>Ϣ</td>
                    
                    <td align="center" nowrap class="labeltd" >����ʱ�� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="openTime"/> </td>
                   
				</tr>
				<tr>
				    <td align="center" nowrap class="labeltd" >�ͻ��� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="customerId"/> </td>
                    
				   
                     <td align="center" nowrap class="labeltd" >����ʱ�� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="closeTime"/> </td>
                   
				</tr>
				<tr>
				
                     <td align="center" nowrap class="labeltd" >�˺����� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="accountType"/> </td>
                    
                      <td align="center" nowrap class="labeltd" >������λ���� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="enCode"/> </td>
                   
				</tr>
				<tr>
				
				    <td align="center" nowrap class="labeltd" >���� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="accountCur"/> </td>
                    
                    
				  
                    
                    <td align="center" nowrap class="labeltd" >������λ���� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="chineseName"/> </td>
				</tr>
				<tr>
				    <td align="center" nowrap class="labeltd" >�Ƿ�NRA�˻�</td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="isnraFlag"/> </td>
				    <td align="center" nowrap class="labeltd" >�����׼����� </td>
                    <td class="datatd" ><@CommonQueryMacro.SingleField fId="fileNumber"/> </td>
                    
                   
				</tr>
				
				<tr>
                   <td colspan="2"  align="center" nowrap class="labeltd" >���������� </td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="debits"/> </td>
   
		           <td  colspan="2"   align="center" nowrap class="labeltd" >�跽������ </td>
		           <td class="datatd" ><@CommonQueryMacro.SingleField fId="credits"/>  </td>
                </tr>
                <tr>
                   <td colspan="2"  align="center" nowrap class="labeltd" >��� </td>
                   <td class="datatd" ><@CommonQueryMacro.SingleField fId="balance"/> </td>
                </tr>
			</table>
		 </@CommonQueryMacro.GroupBox>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;<@CommonQueryMacro.Button id= "btBack"/>
		</td>
	</tr>
</table>

</@CommonQueryMacro.CommonQuery>
<script language="javascript">
var op = "${RequestParameters["op"]?default('')}";
//��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ���
	function initCallGetter_post(dataset) {
	if ("new" == op) {
	} else {
		BiAccountModAdd_dataset.setFieldReadOnly("id",true);
	}
}
</script>
</@CommonQueryMacro.page>