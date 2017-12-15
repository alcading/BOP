<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���������걨��������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopDRDsTabs" navigate="false" currentTab="BopRDs">
		<@CommonQueryMacro.CommonQuery id="BopRDs" init="false" submitMode="all" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td valign="top">
						<@CommonQueryMacro.PagePilot id="pagequery" maxpagelink="9" showArrow="true" />
					</td>
		    	</tr>

		    	<tr>
		    		<td colspan="2">
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno[80],isref[80],payattr[80],paytype[80],txcode[80],tc1amt[80],txrem[80],txcode2[80],tc2amt[80],tx2rem[80],crtuser[80],inptelc[80],rptdate[80],regno[80]" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">
		//��������
		function initCallGetter_post() {
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BopRDs_interface_dataset.setValue("qworkDateStart","${v_txdate}");
			BopRDs_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
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
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//ˢ������
		function flushPage(){
			BopRDs_dataset.flushData(1);
		}
		function locate(id) {
			var record = BopRDs_dataset.find(["id"],[id]);
			if (record) {
				BopRDs_dataset.setRecord(record);
			}
		}
		function btNewClick(){
			showWin("���������걨��������Ϣ","${contextPath}/fpages/bop/collandaudit/dr/ftl/BopRDsAdd.ftl?op=new","window","flushPage()",window);
		}
		//�޸�
		function doCollection(id){
			showWin("���������걨��������Ϣ�޸�","${contextPath}/fpages/bop/collandaudit/dr/ftl/BopRDsAdd.ftl?id=" + id + "&op=mod","window","flushPage()",window);
		}
		//ɾ��
		function doDelete(id){
			showWin("���������걨��������Ϣɾ��","${contextPath}/fpages/bop/collandaudit/dr/ftl/BopRDsAdd.ftl?id=" + id + "&op=del","window","flushPage()",window);
		}
		//��ϸ��Ϣ
		function doDetail(id){
			showWin("���������걨��������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/dr/ftl/BopRDsAdd.ftl?id=" + id + "&op=detail","window","flushPage()",window);
		}
	</script>
</@CommonQueryMacro.page>