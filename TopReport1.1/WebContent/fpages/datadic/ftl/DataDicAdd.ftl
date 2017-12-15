<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="DataDicEntry.title">
<@CommonQueryMacro.CommonQuery id="DataDicInfo" init="true" insertOnEmpty="true">
<table>
	<tr>
		<td>
			<@CommonQueryMacro.Group id ="group1" label="�����ֵ���Ϣ" fieldStr="dataTypeNo,dataTypeName,dataNo,dataName,dataNoLen" colNm=4/>
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
var op = "${RequestParameters['op']?default('')}";
//��ҳ���ʼ����֮����Ե��ø÷���ִ����Ҫ����Ĳ�
function initCallGetter_post(dataset) {
	if ("new" == op) {
		
	} else {
		DataDicInfo_dataset.setFieldReadOnly("dataTypeNo",true);
		DataDicInfo_dataset.setFieldReadOnly("dataTypeName",true);
		DataDicInfo_dataset.setFieldReadOnly("dataNoLen",true);
	}
}
function btSave_onClickCheck(button) {
	var dataNoLen = DataDicInfo_dataset.getValue("dataNoLen");
	var len = DataDicInfo_dataset.getValue("dataNo").length;
	if(len != dataNoLen) {
		alert('[�ֵ���]���Ⱥ�[�ֵ䳤��]ֵ����');
		return false;
	}
	return true;
}



</script>
</@CommonQueryMacro.page>
