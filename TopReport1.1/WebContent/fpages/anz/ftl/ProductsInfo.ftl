<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="���²�Ʒ��Ϣά��">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="ProductsInfo" init="true" submitMode="current">
      		<table width="1000px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="���²�Ʒ��Ϣ��ѯ" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      			<tr>

      			  <td>
      			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
      			  </td>

      			</tr>

      			<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" paginationbar="btNew" fieldStr="id,pname,termType,term,lowLimit,highLimit,status,effectDate,expireDate,lastUpdt,opr" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 <tr>
		      		<td colspan="2">
		      		<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="��Ʒ��Ϣά��"
		        			  fieldStr="id,pname,termType,term,lowLimit,highLimit,status,effectDate" colNm=4/>
		        			 </br>
		      				<@CommonQueryMacro.Button id= "btSave"/>
		      			</div>
		     		 </@CommonQueryMacro.FloatWindow>

		  			</td>
  				</tr>
      			 <tr style="display:none">
					<td colspan="2">
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

	function btNew_onClick(){
		subwindow_signWindow.show();
		ProductsInfo_dataset.setFieldReadOnly("id", false);
	}

	function btSave_postSubmit(button){
		alert("����ɹ���");
	}

	//��ϵͳˢ�µ�Ԫ�������ʱ������
	function datatable1_opr_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			
				cell.innerHTML="<center><a href=\"JavaScript:doModify('"+value+"')\">�޸�</a> &nbsp; <a href=\"JavaScript:doDelete('"+value+"')\">ɾ��</a></center>";
			
		} else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
	}

	//��λһ����¼
	function locate(id) {

		var record = ProductsInfo_dataset.find(["id"],[id]);
		if (record) {
			ProductsInfo_dataset.setRecord(record);
		}
	}

	//�޸�
	function doModify(id) {
		locate(id);
	ProductsInfo_dataset.setFieldReadOnly("id", true);
		subwindow_signWindow.show();
	}

	//ɾ��
	function doDelete(id) {
		locate(id);

		if(confirm('�Ƿ�ɾ����ǰ��¼'))
		{
			btDel.click();
		}
	}

function btSave_postSubmit(button) {
		alert("����ɹ�");
		subwindow_signWindow.close();
		ProductsInfo_dataset.flushData(ProductsInfo_dataset.pageIndex);
	}
function btDel_postSubmit(button) {
		alert("ɾ���ɹ�");
		ProductsInfo_dataset.flushData(ProductsInfo_dataset.pageIndex);
	}

	function signWindow_floatWindow_beforeClose(subwindow){
		 ProductsInfo_dataset.cancelRecord();
		 return true;
	}

</script>
</@CommonQueryMacro.page>