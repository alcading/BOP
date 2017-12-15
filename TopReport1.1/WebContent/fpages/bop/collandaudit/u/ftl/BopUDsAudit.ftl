<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="������Ϣ">
	<@CommonQueryMacro.CommonQuery id="BopUDsAudit" init="false" submitMode="selected" navigate="false" >
		<table align="left">
			<tr>
				<td>
					<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
				</td>
			</tr>
			<tr>
  			  	<td>
  			    	<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9" pageCache="false" showArrow="true"/>
  			  	</td>
  			</tr>
  			<tr>
		      	<td>
					<@CommonQueryMacro.DataTable id ="datatable1" hasFrame="true" fieldStr="select[40],recStatus[80],approveStatus[80],repStatus[80],custcode,custname,industrycode,attrcode,countrycode,istaxfree,taxfreecode,rptmethod" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>
      		</tr>
      		<tr>
		    	<td>
		    		<@CommonQueryMacro.Button id="btAudit"/>
		    	</td>
		    </tr>
		    <tr>
		    	<td>
		    		<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
		      			<div align="center">
		      				<@CommonQueryMacro.Group id="group1" label="�����Ϣ" fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
							</br>
		      				<center>
		      					<@CommonQueryMacro.Button id= "btAuditSave"/>&nbsp;&nbsp;
		      					<@CommonQueryMacro.Button id= "btBack"/>
		      				</center>
		      			</div>
		     		</@CommonQueryMacro.FloatWindow>
		    	</td>
			</tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
	<script language="JavaScript">

		function initCallGetter_post(){
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			BopUDsAudit_interface_dataset.setValue("qworkDateStart", currentDate);
			BopUDsAudit_interface_dataset.setValue("qworkDateEnd", currentDate);
		}

		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_custcode_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>";
			} else {//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		function btAuditSave_onClickCheck(){

		   	var approveStatusChoose = BopUDsAudit_dataset.getValue("approveStatusChoose");
		   	var approveResultChoose = BopUDsAudit_dataset.getValue("approveResultChoose");
		   	if (!approveStatusChoose.length > 0) {
		   		alert("��ѡ����˽����");
		   		return false;
		   	}
		   	if (approveStatusChoose == "02" && approveResultChoose.length < 1) {
		   		alert("��˽����ͨ�������˵��������д��");
		   		return false;
		   	}
		   	BopUDsAudit_dataset.setParameter("approveStatusChoose",approveStatusChoose);
		   	BopUDsAudit_dataset.setParameter("approveResultChoose",approveResultChoose);
			subwindow_aditADSubWindow.hide();
		}

		function btAuditSave_postSubmit(button){
			alert("����ɹ�");
			BopUDsAudit_dataset.flushData(1);
		}

		function btAudit_onClick(){
			var hasSelected = false;
			var hasAudit = false;
			var record = BopUDsAudit_dataset.getFirstRecord();
			while(record){
				var v_selected = record.getValue("select");
				var v_approveStatus = record.getValue("approveStatus");
				if( v_selected == true ){
					hasSelected=true;
					if (v_approveStatus != "00") {
						hasAudit = true;
					}
				}
				record = record.getNextRecord();
		   	}
		   	if (!hasSelected) {
		   		alert("��ѡ����Ӧ�ļ�¼��");
		   		return false;
		   	}
		   	if (hasAudit) {
		   		if(!confirm("��ѡ��¼��������˼�¼��ȷ�������������")) {
					return false;
				}
		   	}
			subwindow_aditADSubWindow.show();
		}

		function btBack_onClick(){
			subwindow_aditADSubWindow.hide();
		}

		//��ϸ��Ϣ
		function doDetail(id){
			showWin("��ϸ","${contextPath}/fpages/bop/collandaudit/u/ftl/BopUDsCollectionInfo.ftl?id=" + id + "&op=detail","window","",window);
		}
	</script>
</@CommonQueryMacro.page>