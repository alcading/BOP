<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣά��">
<table width="800px" align="left">
<tr>
<td>
<@CommonQueryMacro.CommonQuery id="Management_branchManage" init="true" submitMode="current">
	<table width="100%">
		<tr>
   			<td valign="top" colspan="2">
   				<@CommonQueryMacro.Interface id="intface" label="������ѯ" colNm=4 showButton="true" />
        	</td>
        </tr>
		<tr>
   			<td>
   				<@CommonQueryMacro.PagePilot id="PagePilot"/>
   			</td>
  			
  		</tr>
  		<tr>
      		<td colspan="2">
          		<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd,-,btStatus" fieldStr="brno,brname,brclass,status,st,opr" width="100%"  readonly="true"/></br>
        	</td>
        </tr>
        <tr>
      		<td colspan="2">
      		<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="������Ϣά��"
        			  fieldStr="brno,brname,address,postno,teleno,brclass,blnUpBrcode,blnManageBrcode,brattr,otherAreaFlag" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSave"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
        			
  			</td>
  		</tr>
  		<tr>
      		<td colspan="2">
      		<@CommonQueryMacro.FloatWindow id="signWindowDet" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="������Ϣά��"
        			  fieldStr="brno,brname,address,postno,teleno,brclass,blnUpBrcodeName,blnManageBrcodeName,brattr,otherAreaFlag" colNm=4/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
        			
  			</td>
  		</tr>
  		
   </table>
</@CommonQueryMacro.CommonQuery>
</td>
</tr>
</table>
<script language="javascript">
	//��λһ����¼
	function locate(id) {
		var record = Management_branchManage_dataset.find(["brcode"],[id]);
		if (record) {
			Management_branchManage_dataset.setRecord(record); 
		}
	}
	
	function openBranchDtl(id){
		locate(id);
		Management_branchManage_dataset.setFieldReadOnly("brno", true);
		Management_branchManage_dataset.setFieldReadOnly("brname", false);
		Management_branchManage_dataset.setFieldReadOnly("address", false);
		Management_branchManage_dataset.setFieldReadOnly("postno", false);
		Management_branchManage_dataset.setFieldReadOnly("teleno", false);
		Management_branchManage_dataset.setFieldReadOnly("brclass", false);
		Management_branchManage_dataset.setFieldReadOnly("blnUpBrcode", true);
		Management_branchManage_dataset.setFieldReadOnly("blnManageBrcode", false);
		Management_branchManage_dataset.setFieldReadOnly("brattr", false);
		Management_branchManage_dataset.setFieldReadOnly("otherAreaFlag", false);
		
		subwindow_signWindow.show();
	}
	
	function openBranchDtlDetail(id){
		locate(id);
		Management_branchManage_dataset.setFieldReadOnly("brno", true);
		Management_branchManage_dataset.setFieldReadOnly("brname", true);
		Management_branchManage_dataset.setFieldReadOnly("address", true);
		Management_branchManage_dataset.setFieldReadOnly("postno", true);
		Management_branchManage_dataset.setFieldReadOnly("teleno", true);
		Management_branchManage_dataset.setFieldReadOnly("brclass", true);
		Management_branchManage_dataset.setFieldReadOnly("blnUpBrcode", true);
		Management_branchManage_dataset.setFieldReadOnly("blnManageBrcode", true);
		Management_branchManage_dataset.setFieldReadOnly("brattr", true);
		Management_branchManage_dataset.setFieldReadOnly("otherAreaFlag", true);
		subwindow_signWindowDet.show();
	}
	
	function btAdd_onClick(){
		subwindow_signWindow.show();
	}
	
	function datatable1_opr_onRefresh(cell, value, record)
	{
	
		if (record) {//�����ڼ�¼ʱ
			var lock = record.getValue("lock");
			var id = record.getValue("brcode");
			if(isTrue(lock)){
				cell.innerHTML = "<center><a href=\"Javascript:void(0);\" style=\"color:#666666\" title=\"��¼�����������ܲ���\">�޸�</a></center>";
			}else{
				cell.innerHTML="<center><a href=\"JavaScript:openBranchDtl('"+id+"')\">�޸�</a></center>";
			}
		} else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
	}

	function signWindow_floatWindow_beforeClose(subwindow){
		Management_branchManage_dataset.cancelRecord();
		return true;
	}
	function signWindow_floatWindow_beforeHide(subwindow){
		return signWindow_floatWindow_beforeClose(subwindow);
	}
	
	function Management_branchManage_dataset_afterInsert(dataset, mode){
		Management_branchManage_dataset.setValue2("status", "1");
	}
	//չʾ�Աȹ��ܵ�js
	function datatable1_brno_onRefresh(cell, value, record){
	if(record!=null){
		var sta = record.getValue("st");
		var id = record.getValue("brcode");
		var brno=record.getValue("brno");


		cell.innerHTML = "<a href=\"Javascript:showDetail('"+id+"','"+sta+"')\">"+brno+"</a>";

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
	loadPageWindows("partWin", "��������","/fpages/regonization/ftl/branchManageDetail.ftl", paramMap, "winZone");
}
	function btStatus_onClickCheck(button) {
		var status = Management_branchManage_dataset.getValue("status");
		 var lock = Management_branchManage_dataset.getValue("lock");
		if(status == '0'){
			if(confirm("ȷ�Ͻ��û�������Ϊ��Ч?")){
			    Management_branchManage_dataset.setParameter("statu", "1");
			      
				return true;
			}else{
				return false;
			}
		} else {
			if(confirm("ȷ�Ͻ��û�������Ϊ��Ч?")){
			
				Management_branchManage_dataset.setParameter("statu", "0");
				
				return true;
			}else{
				return false;
			}
		}
	}
	function btStatus_postSubmit(button) {
		alert("���óɹ�");
        Management_branchManage_dataset.flushData(Management_branchManage_dataset.pageIndex);
	}
    function Management_branchManage_dataset_afterScroll(dataset){
		 
		 
		 
		 var  v_brcode = Management_branchManage_dataset.getValue("brcode");
		 var  v_brclass = Management_branchManage_dataset.getValue("brclass");
		  //���ݿ��еļ�¼��
		  if ( v_brcode!="" ){
		    Management_branchManage_dataset.setFieldReadOnly("brno",true);
		    Management_branchManage_dataset.setFieldReadOnly("brname",false);
		  }else{
		    Management_branchManage_dataset.setFieldReadOnly("brno",false);
		    Management_branchManage_dataset.setFieldReadOnly("brname",false);
		  }
		  if ( v_brclass =="1" ){
		  	Management_branchManage_dataset.setFieldReadOnly("blnUpBrcode",true);
		  }else{
		  	Management_branchManage_dataset.setFieldReadOnly("blnUpBrcode",false);
		  }
		  return true;
		  
		  var lock = Management_branchManage_dataset.getValue("lock");
		  if(isTrue(lock)){
		  	btStatus.disable(true);
		  }else{
		  	btStatus.disable(false);
		  }
		  
	}
	function Management_branchManage_dataset_afterChange(dataset,field){
			if(field.name=="postno"){
			v_postno=Management_branchManage_dataset.getValue("postno");
				if(isNaN(v_postno)){
					alert("�ֶΡ��������롿����Ϊ����");
					Management_branchManage_dataset.setValue2("postno","");
					return false;
				}else if( v_postno.indexOf('-') != -1){
					alert("�ֶΡ��������롿����Ϊ����");
					Management_branchManage_dataset.setValue2("postno","");
					return false;
				}else if(v_postno.length<6&&v_postno.length!=0){
					alert("�ֶΡ��������롿����Ϊ6λ");
					Management_branchManage_dataset.setValue2("postno","");
					return false;
				}
				return true;
			}
			if(field.name=="teleno"){
				var v_teleno = Management_branchManage_dataset.getValue("teleno");
	    		var validChar = "0123456789-";
 				for (var i = 0; i < v_teleno.length; i++){
  				var c = v_teleno.charAt(i);
  				if ( validChar.indexOf(c) == -1){
  				alert("�ֶΡ���ϵ�绰��ֻ�ܰ���-������");
  				Management_branchManage_dataset.setValue2("teleno","");
  				return false;
  			}
 		}
			}
		}

	function btnAdd_onClick(button){
		var  v_brcode = Management_branchManage_dataset.getValue("brcode");
		//���ݿ��еļ�¼��
		if (v_brcode!=""  ){
			Management_branchManage_dataset.setFieldReadOnly("brno",true);
			Management_branchManage_dataset.setFieldReadOnly("brname",false);
		}else{
			Management_branchManage_dataset.setFieldReadOnly("brno",false);
			Management_branchManage_dataset.setFieldReadOnly("brname",false);
		}
		
		Management_branchManage_dataset.setFieldReadOnly("address", false);
		Management_branchManage_dataset.setFieldReadOnly("postno", false);
		Management_branchManage_dataset.setFieldReadOnly("teleno", false);
		Management_branchManage_dataset.setFieldReadOnly("brclass", false);
		Management_branchManage_dataset.setFieldReadOnly("blnUpBrcode", false);
		Management_branchManage_dataset.setFieldReadOnly("blnManageBrcode", false);
		Management_branchManage_dataset.setFieldReadOnly("brattr", false);
		Management_branchManage_dataset.setFieldReadOnly("otherAreaFlag", false);
	}

	  //function btnAdd_onClickCheck(button)
      //{
       // return checkValue();
       //}

      function btSave_postSubmit(button)
      {
			button.url="#";
        	//alert("����ɹ�");
        	subwindow_signWindow.hide();
        	Management_branchManage_dataset.flushData(Management_branchManage_dataset.pageIndex);
      }

      function btSave_onClickCheck(button)
      {
		    return checkValue();
      }

      function checkValue()
		{
			if(Management_branchManage_dataset.getValue("blnUpBrcode")==""&&Management_branchManage_dataset.getValue("brclass")!="1")
			{
				alert("�ֶ�[�ϼ�����]��ӦΪ�ա�");
	 	 		return false;
			}

			if(Management_branchManage_dataset.getValue("brclass")=="")
			{
				alert("�ֶ�[��������]��ӦΪ�ա�");
	 	 		return false;
			}
			return true;
		}

	/* function brclass_DropDown_onSelect(dropDown,record,editor)
	{
	   var brclass  = record.getValue("data").trim();
	   var length  = Management_branchManage_dataset.length;
		var flag = true;
	   if(length>1&&brclass=="1"){
	   		alert("ֻ����һ������!");
	   		flag = false;
	   }
		if(!flag){
			return false;
		}

	   return true;
	} */
	//ȥ��ҳ�桰�������С��ֶΣ�����ѡ�С��ϼ��������ֶ�ʱ���Զ������������С���ֵ
	function blnUpBrcode_DropDown_onSelect(dropDown,record,editor)
	{
	   var blnUpBrcode  = record.getValue("brcode").trim();
	   Management_branchManage_dataset.setValue2("blnBranchBrcode",blnUpBrcode);
	   return true;

	}

</script>
</@CommonQueryMacro.page>