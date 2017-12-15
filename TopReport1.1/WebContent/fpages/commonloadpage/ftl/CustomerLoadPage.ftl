<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="�ͻ���Ϣ">
<@CommonQueryMacro.CommonQuery id="customerLoadPage" init="true" submitMode="current" navigate="false">
	<table width="800px">
		<tr>
			<td valign="top">
				<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" colNm=4 showButton="true"/>
			</td>
		</tr>
		<tr>
			<td >
				<@CommonQueryMacro.PagePilot id="pagePilot"  maxpagelink="9" showArrow="true" pageCache="false"/>
			</td>
		</tr>	
		<tr>
			<td>
				<@CommonQueryMacro.DataTable id="dataTable1" fieldStr="id[60],orgId[60],customerType[80],customerName[60],paperType[140],paperCode[100],registrationMoney[60],corporationRepname[80],stockFlag[100]" hasFrame="true" height="240" width="800"/>
			</td>
		</tr>
		<tr>
			<td>
				<@CommonQueryMacro.Button id= "btConfirm"/>&nbsp;&nbsp;
				<@CommonQueryMacro.Button id= "btCancell"/>&nbsp;&nbsp;
			</td>
		</tr>
	</table>
</@CommonQueryMacro.CommonQuery>
<script language="javascript">
	
	//���ݴ�������loadFromType�ж����Ǹ�ҳ�����
	//ȷ��ʱ����ѡ�����Ӧ�ļ�¼���ݳ�ʼ������ҳ�����Ӧdataset����Ӧfield
	function btConfirm_onClick(button){
		var loadFromType = "${RequestParameters["loadFromType"]?default('')}";
		//if (loadFromType == "A") {
		//	//TODO
		//	A_dataset.setVlaue("Aҳ���Field", customerLoadPage_dataset.getValue("customerName"));
		//}
		win.close();
	}
	
	function btCancell_onClick(button){
		win.close();
		return false;
	}
	
</script>
</@CommonQueryMacro.page>			
