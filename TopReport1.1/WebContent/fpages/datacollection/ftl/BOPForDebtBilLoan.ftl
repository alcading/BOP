<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BOPForDebtTabs" navigate="false" currentTab="BOPForDebtBilLoan">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtBilLoan" init="false" submitMode="all" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2[100]],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[190],debtorcode[140],debtype[90],contractdate[120],valuedate[120],contractcurr[140],contractamount[120],maturity[120],anninrate[100],inprterm,spapfeboindex" readonly="true" hasFrame="true" width="900" height="260"/>
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
	
		function initCallGetter_post() {
			<#assign workdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()?default('')>
			BOPForDebtBilLoan_interface_dataset.setValue("qStartDate", "${workdate}");
			BOPForDebtBilLoan_interface_dataset.setValue("qEndDate", "${workdate}");
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

			var record = BOPForDebtBilLoan_dataset.find(["id"],[id]);
			if (record) {
				BOPForDebtBilLoan_dataset.setRecord(record);
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

			showWin("˫�ߴ���ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBilLoanCol.ftl?op=new","report","flushPage()");

		}
		//��ϸ
		function doDetail(id) {
			locate(id);
			showWin("˫�ߴ���ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBilLoanCol.ftl?id="+id+"&op=detaile","report","flushPage()");
		}

	    //ˢ������
		function flushPage(){

			BOPForDebtBilLoan_dataset.flushData(1);
		}

		//�޸�
		function doModify(id) {
		    locate(id);
			showWin("˫�ߴ���ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBilLoanCol.ftl?id="+id+"&op=mod","report","flushPage()");
		}

		//ɾ��
		function doDelete(id) {
		    locate(id);
			showWin("˫�ߴ���ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBilLoanCol.ftl?id="+id+"&op=del","report","flushPage()");
		}

		//BOPForDebtBilLoan_interface_dataset.setValue("qWorkDate",new Date());

	</script>
</@CommonQueryMacro.page>