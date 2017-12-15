<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="����˻��ڹ��������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="JshEgDsTabs" navigate="false" currentTab="JshGDs">
		<@CommonQueryMacro.CommonQuery id="JshGDs" init="false" submitMode="all" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[80],filler2[80],buscode[80],brNo[80],brNoName[80],workDate[80],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[80],rptno[80],regno,txcode,crtuser,inptelc,rptdate" hasFrame="true" width="900" height="260" readonly="true"/>
		      		</td>
		    	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>

	<script language="JavaScript">
	
		//��������
		function initCallGetter_post() {
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			JshGDs_interface_dataset.setValue("qworkDateStart","${v_txdate}");
			JshGDs_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
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
			JshGDs_dataset.flushData(1);
		}
		function locate(id) {
			var record = MtsJshGDs_dataset.find(["id"],[id]);
			if (record) {
				MtsJshGDs_dataset.setRecord(record);
			}
		}
		function btNewClick(){
		
			showWin("����˻��ڹ��������Ϣ","${contextPath}/fpages/jsh/collandaudit/eg/ftl/JshGDsAdd.ftl?op=new","window","flushPage()",window);
		}
		//�޸�
		function doCollection(id){
			showWin("����˻��ڹ��������Ϣ�޸�","${contextPath}/fpages/jsh/collandaudit/eg/ftl/JshGDsAdd.ftl?id=" + id + "&op=mod","window","flushPage()",window);
		}
		//ɾ��
		function doDelete(id){
			showWin("����˻��ڹ��������Ϣɾ��","${contextPath}/fpages/jsh/collandaudit/eg/ftl/JshGDsAdd.ftl?id=" + id + "&op=del","window","flushPage()",window);
		}
		//��ϸ��Ϣ
		function doDetail(id){
			showWin("����˻��ڹ��������Ϣ��ϸ","${contextPath}/fpages/jsh/collandaudit/eg/ftl/JshGDsAdd.ftl?id=" + id + "&op=detail","window","flushPage()",window);
		}
	</script>
</@CommonQueryMacro.page>