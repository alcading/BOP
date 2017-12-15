<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BOPForDebtUsanceLeOfCreditTabs" navigate="false" currentTab="BOPForDebtUsanceLeOfCreditChangeInfo">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtChangeInfo" init="false" submitMode="all" navigate="false" >
			<table align="left">
				<tr>
					<td colspan="2">
						<@CommonQueryMacro.Interface id="interface"  label="�������ѯ����" />
					</td>
				</tr>

				<tr>
  			  		<td>
  			    		<@CommonQueryMacro.PagePilot id="pagePilot1" maxpagelink="9"   pageCache="false" showArrow="true"/>
  			  		</td>
  			 	</tr>

  			 	<tr>
		      		<td colspan="2">
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2,workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],buscode[120],changeno[100],changtype[120],chdate[100],chcurrency[160],chamount[120],fairvalue[120]" readonly="true" hasFrame="true" width="900" height="260"/>
		      		</td>
		      	</tr>

		      	<tr style="display:none">
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btDataCol"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btDetail"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btNew"/>&nbsp;&nbsp;
					</td>
				</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

		var changFileType;
		function initCallGetter_post()
		{
			//��������
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForDebtChangeInfo_interface_dataset.setValue("qWorkDateStart","${v_txdate}");
			BOPForDebtChangeInfo_interface_dataset.setValue("qWorkDateEnd","${v_txdate}");
			changFileType = "AF";
			BOPForDebtChangeInfo_dataset.setParameter("changFileType","AF");
		}

		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_opr_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				var innerStr = "<center>";
				if (recStatus == "01" || recStatus == "02") {
					innerStr = innerStr + "<a href=\"JavaScript:doModify('"+id+"')\">�޸�</a>&nbsp;&nbsp;<a href=\"JavaScript:doDelete('"+id+"')\">ɾ��</a>"
				} else {
					innerStr = innerStr + "<a title='�ü�¼״̬�����޸�' style='color:#999999'>�޸�</a>&nbsp;&nbsp;<a title='�ü�¼״̬����ɾ��' style='color:#999999'>ɾ��</a>";
				}
				innerStr = innerStr + "</center>";

				cell.innerHTML =innerStr;
			} else {//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		function locate(id) {
			var record = BOPForDebtChangeInfo_dataset.find(["id"],[id]);
			if (record) {
				BOPForDebtChangeInfo_dataset.setRecord(record);
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
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//����
		function btNewClick(){
			showWin("Զ������֤�䶯��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtUsanceLeOfCreditChangeInfoCol.ftl?op=new&changFileType="+changFileType,"report","flushPage()");
		}
		//��ϸ
		function doDetail(id) {
			locate(id);
			showWin("Զ������֤�䶯��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtUsanceLeOfCreditChangeInfoCol.ftl?id="+id+"&op=detaile&changFileType="+changFileType,"report","flushPage()");
		}

	    //ˢ������
		function flushPage(){
			BOPForDebtChangeInfo_dataset.flushData(1);
		}

		//�޸�
		function doModify(id) {
		    locate(id);
			showWin("Զ������֤�䶯��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtUsanceLeOfCreditChangeInfoCol.ftl?id="+id+"&op=mod&changFileType="+changFileType,"report","flushPage()");
		}

		//ɾ��
		function doDelete(id) {
		    locate(id);
			showWin("Զ������֤�䶯��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtUsanceLeOfCreditChangeInfoCol.ftl?id="+id+"&op=del&changFileType="+changFileType,"report","flushPage()");
		}
	</script>
</@CommonQueryMacro.page>