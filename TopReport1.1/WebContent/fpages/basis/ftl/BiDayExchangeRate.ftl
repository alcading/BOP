<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="BiDayExchangeRate.title">
<@CommonQueryMacro.CommonQuery id="BiDayExchangeRate" init="false" submitMode="current" navigate="false">
<table align="left" width="800px">
   <tr>
      	<td colspan="2">
      	   <@CommonQueryMacro.Interface id="interface" label="������Ƽ�ά����ѯ" />
      	</td>
	</tr>
	<tr>
		<td><@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" showArrow="true" pageCache="false"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btAdd" fieldStr="id,rateUnit,rateDate,rateMidprice,st,opr"  width="100%" readonly="true" hasFrame="true"/>
		</td>
	</tr>
	<tr>
      	<td colspan="2">
      		<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="���Ƽ�ά��"
        			  fieldStr="id,rateUnit,rateDate,rateMidprice" colNm=4/>
        			<br/>
        			<@CommonQueryMacro.Button id="btModOrAdd" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      			</div>
     		</@CommonQueryMacro.FloatWindow>
     		
  		</td>
  	</tr>
	<tr style="display:none">
		<td><@CommonQueryMacro.Button id="btDel" /></td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">
	//��λһ�м�¼
	function locate(id) {
		var record = BiDayExchangeRate_dataset.find(["id"],[id]);
		if(record) {
			BiDayExchangeRate_dataset.setRecord(record);
		}
	}
	//ϵͳˢ�µ�Ԫ��
	function datatable1_opr_onRefresh(cell,value,record) {
		if(record) {
			var id = record.getValue("id");
			var lock = record.getValue("lock");
			if(isTrue(lock)){
			
			cell.innerHTML = "<center><a href=\"Javascript:void(0);\" style=\"color:#666666\" title=\"��¼�����������ܲ���\"><@bean.message key="BiDayExchangeRate.button.btMod" /></a> &nbsp; <a href=\"Javascript:void(0);\" style=\"color:#666666\" title=\"��¼�����������ܲ���\"><@bean.message key="BiDayExchangeRate.button.btDel" /></a></center>";
			
			}
			else{
			cell.innerHTML = "<center><a href=\"JavaScript:openModifyWindow('"+id+"')\"><@bean.message key='BiDayExchangeRate.button.btMod' /></a> &nbsp; <a href=\"JavaScript:doDel('"+id+"')\"><@bean.message key='BiDayExchangeRate.button.btDel'/></a></center>";
			}
			
			
		}else{
			cell.innerHTML = "";
		}
			
		
		
	}
	
	function btAdd_onClick(button) {
			btNewClick();
	}
	//ȡ������
	function btCancel_onClickCheck(button) {
		//�رո�������
		subwindow_signWindow.close();
	}
	//�ظ�������,�ͷ�dataset
	function signWindow_floatWindow_beforeClose(subwindow) {
		BiDayExchangeRate_dataset.cancelRecord();
		return true;
	}
	function signWindow_floatWindow_beforeHide(subwindow) {
		return signWindow_floatWindow_beforeClose(subwindow);
	}
//����ȷ��
function btModOrAdd_onClickCheck(button){
	var id = BiDayExchangeRate_dataset.getValue("id");
	if(id == null || "" == id ) {
			alert("���ֲ���Ϊ��");
			return false;
		}
	return true;
}
	

	
	
	//չʾ�Աȹ��ܵ�js
	function datatable1_id_onRefresh(cell, value, record){
	if(record!=null){
		var sta = record.getValue("st");
		var id=record.getValue("id");
	
	     
		cell.innerHTML = "<a href=\"Javascript:showDetail('"+id+"','"+sta+"')\">"+id+"</a>";
	
	} else {
		cell.innerHTML = ""
	}
}


function showDetail(id,sta){

	var paramMap = new Map();
	paramMap.put("id",id);
	paramMap.put("st",sta);
	paramMap.put("action","detail");
	paramMap.put("flag","0");
	loadPageWindows("partWin", "������Ƽ���ϸ��Ϣ","/fpages/basis/ftl/BiDayExchangeRateDetail.ftl", paramMap, "winZone");
}


	//��������
	function btNewClick() {
	    BiDayExchangeRate_dataset.insertRecord("end");
		BiDayExchangeRate_dataset.setValue("id","");
		BiDayExchangeRate_dataset.setValue("rateUnit","");
		BiDayExchangeRate_dataset.setValue("rateDate","");
		BiDayExchangeRate_dataset.setValue("rateMidprice","");
		subwindow_signWindow.show();
	}
	//�޸Ĺ���
	function openModifyWindow(id) {
		locate(id);
		BiDayExchangeRate_dataset.setFieldReadOnly("id",true);
		BiDayExchangeRate_dataset.setFieldReadOnly("rateUnit",false);
		BiDayExchangeRate_dataset.setFieldReadOnly("rateDate",false);
		BiDayExchangeRate_dataset.setFieldReadOnly("rateMidprice",false);
		subwindow_signWindow.show();
	}
 
	function doDel(id) {
		locate(id);
		btDel.click();
		
	}

	function btDel_onClickCheck(button) {
		return confirm("ȷ��ɾ��������¼��");
	}
	function btDel_postSubmit(button) {
			alert("ɾ����¼�ɹ�");
		button.url="#";
		//ˢ�µ�ǰҳ
		flushCurrentPage();
	}
	//�����ˢ�µ�ǰҳ
	function btModOrAdd_postSubmit(button) {
		button.url="#";
		subwindow_signWindow.close();
		flushCurrentPage();
	}
	//ˢ�µ�ǰҳ
	function flushCurrentPage() {
		BiDayExchangeRate_dataset.flushData(BiDayExchangeRate_dataset.pageIndex);
	}
</script>
</@CommonQueryMacro.page>