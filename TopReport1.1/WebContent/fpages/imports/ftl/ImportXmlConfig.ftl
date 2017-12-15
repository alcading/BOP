<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="DataDicEntry.title">
<table align="left"><tr><td>
<@CommonQueryMacro.CommonQuery id="ImportXmlConfig" init="true" submitMode="allchange">
<table width="800px">
    <tr>
        <td>
 <span>�ļ���Ϊ����${RequestParameters["fileName"]}��,����Ϊ:��${RequestParameters["tableName"]}��,��XML������Ϊ: </span>
        </td>  
    </tr>
    <tr>
		<td>		
	<@CommonQueryMacro.DataTable id ="group1" fieldStr="id[50],pid[50],nodeName[30],pnodeName[30],nodeOrder[30]" width="100%" hasFrame="true" height="100%" readonly="true"/>
		</td>
	</tr>
	<tr >
		<td>
			<@CommonQueryMacro.Button id= "btNewP"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btNewC"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btMod"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btCancel"/>&nbsp;&nbsp;
			<@CommonQueryMacro.Button id= "btRow"/>&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<td>		
	<@CommonQueryMacro.Group id ="group2" label="�����ֶ�����" fieldStr="pid,nodeName,pnodeName,nodeOrder,nodeXpath,nodeProperty,nodeGetval,nodeRtval" colNm=4/>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
</td></tr>
</table>
<script language="JavaScript">
    var guid="${RequestParameters["guid"]}";
  
  function ImportXmlConfig_dataset_flushDataPost(dataset){
      if(!ImportXmlConfig_dataset.getFirstRecord()){
          fieldReadOnlyStatus(true);
      }
  }

  function ImportXmlConfig_dataset_afterScroll(dataset){
     fieldReadOnlyStatus(true);
     var record=dataset.record;
     if(record&&record.getValue("pid")){
          dataset.setParameter("idd",record.getValue("id"));
          dataset.setParameter("pNamed",record.getValue("nodeName"));
     }
  }
  function btSave_onClickCheck(button) {
  	
  	var rec = ImportXmlConfig_dataset.find(['id'],[ImportXmlConfig_dataset.getValue('pid')]);
	if(rec) {
		if (ImportXmlConfig_dataset.getValue('nodeOrder') <= rec.getValue('nodeOrder')) {
			alert('�ӽڵ�['+ImportXmlConfig_dataset.getField('nodeOrder').label+']��ֵ������ڸ��ڵ�');
			return false;
		}
	}
	return true;
  }
 function fieldReadOnlyStatus(flag){
 	ImportXmlConfig_dataset.setReadOnly(flag);
 }

 function btNewP_onClick(button){
     fieldReadOnlyStatus(false);
     var record=ImportXmlConfig_dataset.record;
     record.setValue("guid",guid);
     record.setValue("pid",'root');
 //    record.setValue("pnodeName","root");
  }
  
 function btNewC_onClick(button){
     fieldReadOnlyStatus(false);
     var record=ImportXmlConfig_dataset.record
     record.setValue("guid",guid);
     var dataset=getDatasetByID("ImportXmlConfig_dataset");
     record.setValue("pid",dataset.getParameter("idd"));
     record.setValue("pnodeName",dataset.getParameter("pNamed"));
  }
  
  function btMod_onClick(button){
     fieldReadOnlyStatus(false);
  }
 
 function btCancel_onClickCheck(button){
   //ImportXmlConfig_dataset.cancelRecord();
     ImportXmlConfig_dataset.flushData(ImportXmlConfig_dataset.pageIndex);
     return false;
  }
  
  function btSave_postSubmit(button){
     fieldReadOnlyStatus(true);  
     ImportXmlConfig_dataset.flushData(ImportXmlConfig_dataset.pageIndex);
  }
  
</script>
</@CommonQueryMacro.page>