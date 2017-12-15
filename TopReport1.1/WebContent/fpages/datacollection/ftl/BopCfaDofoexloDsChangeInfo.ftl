<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�䶯��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopCfaDofoexloDsTabs" navigate="false" currentTab="BopCfaDofoexloDsChangeInfo">
		<@CommonQueryMacro.CommonQuery id="BopCfaDofoexloDsChangeInfo" init="false" submitMode="current" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>
				<tr>
					<td valign="top">
						<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
					</td>
	    		</tr>
	    		<tr>
	    			<td colspan="2">
						<@CommonQueryMacro.DataTable id ="BopCfaDofoexloDsChangeInfoTable" paginationbar="btAdd" hasFrame="true"
							fieldStr="opr[100],filler2[100]workDate[100],actiontype,recStatus[70],approveStatus[70],repStatus[70],dofoexlocode[130],buscode[130],changeno,loanopenbalan,changedate[100],withcurrence[150],withamount[100],settamount[100],useofunds[90]" readonly="true" hasFrame="true" width="900" height="260"/>
	      			</td>
	    		</tr>
	   			<tr style="display:none">
					<td>
						<@CommonQueryMacro.Button id= "btMod"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btSave"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btDelete"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btDetail"/>&nbsp;&nbsp;
					</td>
				</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">
		
		function initCallGetter_post() {
			<#assign workdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()?default('')>
			BopCfaDofoexloDsChangeInfo_interface_dataset.setValue("qstartDate", "${workdate}");
			BopCfaDofoexloDsChangeInfo_interface_dataset.setValue("qendDate", "${workdate}");
		}
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function BopCfaDofoexloDsChangeInfoTable_opr_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				var actiontype = record.getValue("actiontype");
				var repStatus = record.getValue("repStatus");
				if (("01" == recStatus || "02" == recStatus) && ("D" != actiontype || ("D" == actiontype && "01" != repStatus))) {
					cell.innerHTML = "<center><a href=\"JavaScript:doModify('"+id+"')\">�޸�</a>&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">ɾ��</a></center>";
				} else {
					cell.innerHTML ="<center><a title='�ü�¼״̬�����޸�' style='color:#999999'>�޸�</a>&nbsp;<a title='�ü�¼״̬����ɾ��' style='color:#999999'>ɾ��</a></center>";
				}
			} else {
				//�������ڼ�¼ʱ
		 		cell.innerHTML="&nbsp;";
			}
		}

		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function BopCfaDofoexloDsChangeInfoTable_filler2_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				cell.innerHTML = "<center><a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
			} else {
				//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//ɾ��
		function doDelete(id){
			showWin("�䶯��Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BopCfaDofoexloDsChangeInfoAdd.ftl?op=del&id=" + id,"report","flushPage()");
		}

		//����
		function btNewClick(){
			showWin("�䶯��Ϣ����","${contextPath}/fpages/datacollection/ftl/BopCfaDofoexloDsChangeInfoAdd.ftl?op=new","report","flushPage()");
		}

		//��ѯ
		function doDetail(id){
			showWin("�䶯��Ϣ��ѯ","${contextPath}/fpages/datacollection/ftl/BopCfaDofoexloDsChangeInfoAdd.ftl?op=detail&id="+id,"report","flushPage()");
		}

		//�޸�
		function doModify(id){
			showWin("�䶯��Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BopCfaDofoexloDsChangeInfoAdd.ftl?op=mod&id=" + id,"report","flushPage()");
		}

		//ˢ������
		function flushPage(){
			BopCfaDofoexloDsChangeInfo_dataset.flushData(1);
		}

	</script>
</@CommonQueryMacro.page>