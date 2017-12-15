<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��ʱ�������µ���">
<@CommonQueryMacro.CommonQuery id="ImportBadFile" init="false" submitMode="all" navigate="false">
<table width="800px">
	<tr>
		<td>
			<@CommonQueryMacro.Interface id="interface" label="��ʱ��������ļ����µ���" btnNm="ȷ��" colNm=8/>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" fieldStr="select[40],fileNameFull,fileName"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<span id="message" >ע�⣺�����Ʊ�ļ��������������ֹ�����!����ϵ�Ƽ���Ա��</span>
		</td>
	</tr>
</table>
<span id="button-tools" style="padding-center:10px"><@CommonQueryMacro.Button id= "btImport"/>&nbsp;<span id="message" >�ȵ��[ȷ��],����ļ��б�</span></span>
</@CommonQueryMacro.CommonQuery>

<script language="javascript"> 
var op = "${RequestParameters["op"]?default('')}"; 
$('#ImportBadFile_interface_dataset_btnSubmit').after($('#button-tools'));
$(function(){
});

function initCallGetter_post() {
	btImport.disable(true);
}

function ImportBadFile_dataset_flushDataPost(dataset) {
	btImport.disable(dataset.length == 0);
	
	var record = dataset.firstUnit;
	while(record) {
		record = record.nextUnit;
	}
	
}

var int;
function btImport_onClickCheck(button) {
	var rec = ImportBadFile_dataset.firstUnit;
	var f = false;
	while(rec) {
		if (rec.getValue('select')) {
			f = true;
			//break;
		}
		rec = rec.nextUnit;
	}
	if(!f) {
		alert('��ѡ��Ҫ������ļ�');
		return false;
	}
	//ImportBadFile_dataset.setValue('reImport', reImport.checked);
	btImport.disable(true);
	//funPreHook(_theme_root + "/loading.gif");
	
	//preProgress();
	//int = setInterval(progress, 100);
}
</script>
</@CommonQueryMacro.page>
