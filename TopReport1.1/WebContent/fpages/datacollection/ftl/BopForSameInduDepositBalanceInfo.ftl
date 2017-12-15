<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="ǩԼ��Ϣ">

<@CommonQueryMacro.CommonQueryTab id="BopForSameInduDepositTabs" navigate="false" currentTab="BopForSameInduDepositBalanceInfo">
	<@CommonQueryMacro.CommonQuery id="BopForSameInduDepositBalanceInfo" init="false" submitMode="all" navigate="false" >
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
  			  <td align="right">
	    				<a href="javascript:btNewClick();"><@bean.message key="����" /></a>
	       	  </td>
  			 </tr>
  			 <tr>
		      	<td colspan="2">
					<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="opr[100],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],buscode[120],changeno,accoamount,chdate" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>

		      </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	var changFileType ;
	function initCallGetter_post()
	{
		//��������
		<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
		BopForSameInduDepositBalanceInfo_interface_dataset.setValue("qworkDateStart","${v_txdate}");
		BopForSameInduDepositBalanceInfo_interface_dataset.setValue("qworkDateEnd","${v_txdate}");
	//	changFileType = "AC";
		//BopForSameInduDepositBalanceInfo_dataset.setParameter("changFileType","AC");
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
		
		var record = BopForSameInduDepositBalanceInfo_dataset.find(["id"],[id]);
		if (record) {
			BopForSameInduDepositBalanceInfo_dataset.setRecord(record);
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
	
	
	//����
	function btNewClick(id){                 
	
		showWin("����ͬҵ��������Ϣ����","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositBalanceInfoCol.ftl?op=newBalance","report","flushPage()");
	
	}
	//��ϸ
	function doDetail(id) {
		locate(id);
		showWin("����ͬҵ��������Ϣ��ϸ","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositBalanceInfoCol.ftl?id="+id+"&op=detailBalance","report","flushPage()");
	}
	
    //ˢ������
	function flushPage(){
		
		BopForSameInduDepositBalanceInfo_dataset.flushData();
	}
	
	//�޸�
	function doModify(id) {
	    locate(id);
		showWin("����ͬҵ��������Ϣ�޸�","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositBalanceInfoCol.ftl?id="+id+"&op=modBalance","report","flushPage()");
	}

	//ɾ��
	function doDelete(id) {
	    locate(id);
		showWin("����ͬҵ��������Ϣɾ��","${contextPath}/fpages/datacollection/ftl/BopForSameInduDepositBalanceInfoCol.ftl?id="+id+"&op=delBalance","report","flushPage()");
	}
	
	//BOPForDebtChangeInfo_interface_dataset.setValue("qWorkDate",new Date());

</script>
</@CommonQueryMacro.page>