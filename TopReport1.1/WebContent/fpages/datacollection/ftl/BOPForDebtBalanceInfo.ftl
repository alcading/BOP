<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">
	<#assign balanceFileType = RequestParameters["balanceFileType"]?default("")>
	<#assign tabId = "BopForSameInduDepositTabs">
	<#if balanceFileType == "AL">
		<#assign tabId = "BopForSameInduDepositTabs">
	</#if>
	<#if balanceFileType == "AM">
		<#assign tabId = "BopForCorAndAffOrgContactTabs">
	</#if>
	<#if balanceFileType == "AN">
		<#assign tabId = "BopForDebtFeiOrgSaveTabs">
	</#if>
	<#if balanceFileType == "AP">
		<#assign tabId = "bopForDebtFeiPerSaveTabs">
	</#if>
	<@CommonQueryMacro.CommonQueryTab id="${tabId}" navigate="false" currentTab="BOPForDebtBalanceInfo">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtBalanceInfo" init="false" submitMode="current" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],buscode[120],changeno,accoamount,chdate" readonly="true" hasFrame="true" width="900" height="260"/>
		      		</td>
		      	</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

		var balanceFileType;
		function initCallGetter_post()
		{
			//��������
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForDebtBalanceInfo_interface_dataset.setValue("qworkDateStart","${v_txdate}");
			BOPForDebtBalanceInfo_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
			balanceFileType = "${RequestParameters["balanceFileType"]?default('')}";
			BOPForDebtBalanceInfo_dataset.setParameter("balanceFileType",balanceFileType);

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
		function btNewClick(id){
			showWin("�����Ϣ����","${contextPath}/fpages/datacollection/ftl/BOPForDebtBalanceInfoCol.ftl?op=new&balanceFileType="+balanceFileType,"report","flushPage()");
		}
		//��ϸ
		function doDetail(id) {
			showWin("�����Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BOPForDebtBalanceInfoCol.ftl?id="+id+"&op=detail&balanceFileType="+balanceFileType,"report","flushPage()");
		}
		//�޸�
		function doModify(id) {
			showWin("�����Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BOPForDebtBalanceInfoCol.ftl?id="+id+"&op=mod&balanceFileType="+balanceFileType,"report","flushPage()");
		}
		//ɾ��
		function doDelete(id) {
			showWin("�����Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BOPForDebtBalanceInfoCol.ftl?id="+id+"&op=del&balanceFileType="+balanceFileType,"report","flushPage()");
		}
		//ˢ������
		function flushPage(){
			BOPForDebtBalanceInfo_dataset.flushData(1);
		}
	</script>
</@CommonQueryMacro.page>