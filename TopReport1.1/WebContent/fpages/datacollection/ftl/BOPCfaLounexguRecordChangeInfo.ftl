<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
<@CommonQueryMacro.CommonQueryTab id="BOPCfaLounexguRecordTabs" navigate="false" currentTab="BOPCfaLounexguRecordChangeInfo">
	<@CommonQueryMacro.CommonQuery id="BOPCfaLounexguRecordChangeInfo" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[70],filler2,workDate[75],actiontype[75],recStatus[75],approveStatus[75],repStatus[75],lounexgucode[80],buscode[80],changeno[80],credcurrcode[70],credwithamount[75],credrepayamount[70],picamount[70],credprinbala[75],guarantlibala[70],guperamount[70]"   hasFrame="true" width="1000" height="260" readonly="true"/>
		      	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
<script language="JavaScript">
	function initCallGetter_post() {
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		BOPCfaLounexguRecordChangeInfo_interface_dataset.setValue("workDateStart","${v_txdate}");
		BOPCfaLounexguRecordChangeInfo_interface_dataset.setValue("workDateEnd","${v_txdate}");
	}
	function datatable1_opr_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			cell.innerHTML = "<center><a href=\"JavaScript:doModify('"+id+"')\"><@bean.message key="�޸�"/></a>&nbsp;<a href=\"JavaScript:doDel('"+id+"')\">ɾ��</a></center>";
		} else {//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}
	function datatable1_filler2_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var filler2 = record.getValue("filler2");
			cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + filler2 + "</a>"
		} else {
			cell.innerHTML="&nbsp;";
		}
	}
	
		//��ϵͳˢ�µ�Ԫ�������ʱ������
	function datatable1_opr_onRefresh(cell,value,record) {
	if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var innerStr = "";
			var recStatus = record.getValue("recStatus");
			if (recStatus == "01" || recStatus == "02"   ) {
				innerStr = innerStr + "<a href=\"JavaScript:doModify('"+id+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDel('"+id+"')\">ɾ��</a>"
			} else {
				innerStr = innerStr + "<a title='�ü�¼״̬�����޸�' style='color:#999999'>�޸�</a>&nbsp;&nbsp;<a title='�ü�¼״̬����ɾ��' style='color:#999999'>ɾ��</a>";
			}
			innerStr = innerStr + "</center>";
			 
			cell.innerHTML =innerStr;
		} else {//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}
	
	function btAdd_onClick(button) {
			btNewClick();
	}
	function btNewClick(){
		 //window.location.href = "${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordChangeInfoEdit.ftl?op=new";
		 showWin("�䶯��Ϣ����","${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordChangeInfoEdit.ftl?op=new","report","flushPage()");
	}
	
	function doDel(id){
			//window.location.href = "${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordChangeInfoEdit.ftl?id=" + id+"&op=del";
			showWin("�䶯��Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordChangeInfoEdit.ftl?id=" + id+"&op=del","flushPage()");
	}
		
	function doModify(id){
		showWin("�䶯��Ϣ���޸�","${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordChangeInfoEdit.ftl?id=" + id+"&op=mod","flushPage()");
	}
	
	//��ϸ��Ϣ
	function doDetail(id){
		showWin("�䶯��Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BOPCfaLounexguRecordChangeInfoEdit.ftl?id=" + id + "&op=detail");
	}
	
		
		//ˢ������
	function flushPage(){
		BOPCfaLounexguRecordChangeInfo_dataset.flushData(1);
	}
	
	
</script>
</@CommonQueryMacro.page>