<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���������걨��-������Ϣ">
<@CommonQueryMacro.CommonQueryTab id="bopAGDsRecordTabs" navigate="false" currentTab="bopADsRecord">
	<@CommonQueryMacro.CommonQuery id="bopADsRecord" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno,custype,idcode,custcod,custnm,oppuser,txccy,txamt,inchargeccy,inchargeamt,outchargeccy,outchargeamt,exrate,lcyamt,lcyacc,fcyamt,fcyacc,othamt,othacc,method" hasFrame="true" width="900" height="260" readonly="true"/>
		      	</td>
		    </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
</td></tr></table>
<script language="JavaScript">
	
	function initCallGetter_post(){
		var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
		bopADsRecord_interface_dataset.setValue("qworkDateStart", currentDate);
		bopADsRecord_interface_dataset.setValue("qworkDateEnd", currentDate);
	}

	//��ϵͳˢ�µ�Ԫ�������ʱ������
	function datatable1_opr_onRefresh(cell,value,record) {
		if (record) {//�����ڼ�¼ʱ
			var id = record.getValue("id");
			var recStatus = record.getValue("recStatus");
			var innerStr = "<center>";
			if (recStatus == "01" || recStatus == "02") {
				innerStr = innerStr + "<a href=\"JavaScript:doCollection('"+id+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">ɾ��</a>"
			} else {
				innerStr = innerStr + "<a title='�ü�¼״̬�����޸�' style='color:#999999'>�޸�</a>&nbsp;&nbsp;<a title='�ü�¼״̬����ɾ��' style='color:#999999'>ɾ��</a>";
			}
			innerStr = innerStr + "</center>";
			 
			cell.innerHTML =innerStr;
		} else {//�������ڼ�¼ʱ
		 	cell.innerHTML="&nbsp;";
		}
	}
	
	function datatable1_filler2_onRefresh(cell,value,record) {
		if(record && record != null) {
			var id = record.getValue("id");
			cell.innerHTML = "<center><a style=\"text-decoration:none\" href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
		} else {
			cell.innerHTML = "&nbsp;";
		}
	}
	
	//ˢ������
	function flushPage(){
		bopADsRecord_dataset.flushData(1);
	}
	
	function btAdd_onClick(button) {
		btNewClick();
	}
	//����
	function btNewClick(){
		showWin("���������걨��-������Ϣ����","${contextPath}/fpages/bop/collandaudit/ag/ftl/BopADsRecordInfo.ftl?op=add","window","flushPage()",window);
	}
	
	//�޸�
	function doCollection(id){
		showWin("���������걨��-������Ϣ�޸�","${contextPath}/fpages/bop/collandaudit/ag/ftl/BopADsRecordInfo.ftl?id=" + id + "&op=mod","window","flushPage()",window);
	}
	
	//ɾ��
	function doDelete(id){
		showWin("���������걨��-������Ϣɾ��","${contextPath}/fpages/bop/collandaudit/ag/ftl/BopADsRecordInfo.ftl?id=" + id + "&op=del","window","flushPage()",window);
	}
	
	//��ϸ��Ϣ
	function doDetail(id){
		showWin("���������걨��-������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/ag/ftl/BopADsRecordInfo.ftl?id=" + id + "&op=det","window","flushPage()",window);
	}
</script>
</@CommonQueryMacro.page>