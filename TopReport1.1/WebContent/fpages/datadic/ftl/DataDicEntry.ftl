<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="DataDicEntry.title">
<table align="left"><tr><td>
<@CommonQueryMacro.CommonQuery id="DataDicEntry" init="false" submitMode="current">
<table width="800px">
	<tr>
		<td colspan="2">
			<@CommonQueryMacro.Interface id="interface" label="DataDicEntry.interface.interface.label" />
		</td>
	</tr>
	<tr>
		<td><@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" showArrow="true" pageCache="false"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btNew,-,btCopyNew" fieldStr="dataTypeNo[80],dataTypeName[150],dataNo[80],dataName,opr[80]"  width="100%" hasFrame="true" height="100%" readonly="true"/>
		</td>
	</tr>
	<tr style="display:none">
		<td>
			
			<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btMod"/>&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<td>
			<span id="size"> </span>&nbsp;&nbsp;<span id="show"> </span>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
</td></tr><tr><td>
<#include "/fpages/datadic/ftl/DataDicDetail.ftl">
</td></tr></table>
<script language="JavaScript">

//datasetˢ�������ݺ󴥷�
function DataDicEntry_dataset_flushDataPost(dataset) {
	//TODO
	document.getElementById("size").innerHTML="��ҳ��¼��:"+dataset.length;
}
//����¼�������󡢼���ǰ��¼�ı�󴥷� 
function DataDicEntry_dataset_afterScroll(dataset) {
	//TODO
	document.getElementById("show").innerHTML="�ֵ����ͱ��:"+dataset.getValue("dataTypeNo");
}
//��ϵͳˢ�µ�Ԫ�������ʱ������ 
function datatable1_opr_onRefresh(cell,value,record) {
	if (record) {//�����ڼ�¼ʱ
		cell.innerHTML="<a href='JavaScript:doModify("+value+")'><@bean.message key="DataDicEntry.button.btMod" /></a> &nbsp; <a href='JavaScript:doDelete("+value+")'><@bean.message key="DataDicEntry.button.btDel" /></a>";
	} else {//�������ڼ�¼ʱ
		cell.innerHTML="&nbsp;";
	}
}
function datatable1_datatypeno_onRefresh(cell,value,record) {
	if (record) {//�����ڼ�¼ʱ
		cell.innerHTML="<a href='JavaScript:showDetail("+record.getValue('id')+")'>"+value+"</a>";
	} else {//�������ڼ�¼ʱ
		cell.innerHTML="&nbsp;";
	}
}
function showDetail(id) {
	locate(id);
	DataDicInfo_dataset.setValue('dataTypeNo',DataDicEntry_dataset.getValue('dataTypeNo'));
	DataDicInfo_dataset.setValue('dataTypeName',DataDicEntry_dataset.getValue('dataTypeName'));
	DataDicInfo_dataset.setFieldReadOnly('dataTypeNo',true);
	DataDicInfo_dataset.setFieldReadOnly('dataTypeName',true);
	subwindow_datadicdetailFW.show();
	
}
//��λһ����¼
function locate(id) {
	var record = DataDicEntry_dataset.find(["id"],[id]);
	if (record) {
		DataDicEntry_dataset.setRecord(record); 
	}
}

//�޸�
function doModify(id) {
	locate(id);
	window.document.getElementById('btMod').click();
}

function doModify_postSubmit(button) {
	DataDicEntry_dataset.flushData(DataDicEntry_dataset.pageIndex);
}

//ɾ��
function doDelete(id) {
	locate(id);
	window.document.getElementById('btDel').click();
}

function btDel_onClickCheck(button) {
	return confirm("ȷ��ɾ�������ݣ�");
}
//ɾ������
function btDel_postSubmit(button) {
	DataDicEntry_dataset.flushData(DataDicEntry_dataset.pageIndex);
}

function btCopyNew_onClickCheck(button) {
	if (DataDicEntry_dataset.length==0) {
		alert("�޷�����");
		return false;
	}
	return true;
}
function btDel_needCheck(button) {
	return false;
}
function datatable1_dataTypeNo_onHeaderClick(table,cell) {
	//alert(cell)
}


function _dataset_sort(dataset, fields) {
	dataset.sortFields = fields;
	var firstChar = fields.substring(0, 1);
	var ascend = 'asc';
	if ('-' == firstChar) {
		fields = fields.substring(1);
		ascend = 'desc';
	}
	if ('+' == firstChar) {
		fields = fields.substring(1);
		ascend = 'asc';
	}
	var f = dataset.getField(fields);
	var column = f.varname;//����ʹ�õ���XML��field��varname����,��Ҫ��CommonQueryTagMacro.ftl��
	if (column) {
		dataset.setParameter('orderby', column);
		dataset.setParameter('ascend', ascend);
		dataset.flushData(dataset.pageIndex);
	}
}
function datatable1_onDbClick(table,record) {
	//alert(record)
}
</script>
</@CommonQueryMacro.page>