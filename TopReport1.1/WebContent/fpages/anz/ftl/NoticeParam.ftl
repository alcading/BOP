<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro >
<@CommonQueryMacro.page title="���ۼ�Ч����ά��">
   <table align="left">
   <tr>
      <td>
      	<@CommonQueryMacro.CommonQuery id="NoticeParam" init="true" submitMode="current">
      		<table width="1000px">


			<tr>
   			<td valign="top" colspan="2">
   			<@CommonQueryMacro.Interface id="interface" label="���ۼ�Ч����ά����ѯ" colNm=4 showButton="true" />
        	</td>
       		 </tr>
      			<tr>

      			  <td>
      			    <@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
      			  </td>
					<td align="right">
	    				<a href="javascript:btNewClick();"> ����</a>
	       			</td>

      			</tr>

      			<tr>
      			  <td colspan="2">
      			     <@CommonQueryMacro.DataTable id="datatable1" fieldStr="noticeName,noticeValue,noticeAmt,noticeTotperi,noticeFlg,createdt,updt,opr" width="100%" hasFrame="true" readonly="true" />
      			  </td>
      			 </tr>
      			 <tr>
		      		<td colspan="2">
		      		<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="���ۼ�Ч����ά��"
		        			  fieldStr="noticeName,noticeValue,noticeAmt,noticeTotperi,noticeFlg" colNm=4/>
		        			 </br>
		      				<@CommonQueryMacro.Button id= "btSave"/>
		      			</div>
		     		 </@CommonQueryMacro.FloatWindow>

		  			</td>
  				</tr>
      			 <tr style="display:none">
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
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

	function btNewClick(){
		subwindow_signWindow.show();
		btNew.click();
	}
	//�ж��Ƿ����������1��
	function btSave_onClickCheck(){
   	var record1 = NoticeParam_dataset.getFirstRecord();
	var chk=0;
	while(record1){
			chk+= record1.getValue("noticeValue");

		record1=record1.getNextRecord();
	}

	if (chk>1) {
	   		alert("���м�Ч��Ŀ����֮�Ͳ��ܳ���1");
	   		return false;
	   	}
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

		var record = NoticeParam_dataset.find(["id"],[id]);
		if (record) {
			NoticeParam_dataset.setRecord(record);
		}
	}

	//�޸�
	function doModify(id) {
		locate(id);

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
		NoticeParam_dataset.flushData(NoticeParam_dataset.pageIndex);
	}
function btDel_postSubmit(button) {
		alert("ɾ���ɹ�");
		NoticeParam_dataset.flushData(NoticeParam_dataset.pageIndex);
	}

	function signWindow_floatWindow_beforeClose(subwindow){
		 NoticeParam_dataset.cancelRecord();
		 return true;
	}

</script>
</@CommonQueryMacro.page>