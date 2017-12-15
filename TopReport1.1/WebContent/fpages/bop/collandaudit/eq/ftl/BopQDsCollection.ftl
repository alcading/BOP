<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="���ڻ��������-������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopEQDsCollectionTabs" navigate="false" currentTab="BopQDsCollection">
		<@CommonQueryMacro.CommonQuery id="BopQDsCollection" init="false" submitMode="all" navigate="false" >
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
					<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" fieldStr="opr[100],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno[100],country[80],isref[80],paytype[80],payattr[80],txcode[80],tc1amt[80],txcode2[80],tc2amt[80],contrno[100],invoino[80],regno[80],crtuser[80],inptelc[80],rptdate[80]" readonly="true" hasFrame="true" width="900" height="260"/>
		      	</td>

		      </tr>
		</table>
	</@CommonQueryMacro.CommonQuery>
</@CommonQueryMacro.CommonQueryTab>
<script language="JavaScript">
	function initCallGetter_post()
	{
		var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
		BopQDsCollection_interface_dataset.setValue("qworkDateStart",currentDate);
		BopQDsCollection_interface_dataset.setValue("qworkDateEnd",currentDate);
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
		
		var record = BopQDsCollection_dataset.find(["id"],[id]);
		if (record) {
			BopQDsCollection_dataset.setRecord(record);
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
	
	//ˢ������
	function flushPage(){
		BopQDsCollection_dataset.flushData(1);
	}
	
	//����
	function btNewClick(){                 
		showWin("���ڻ��������-������Ϣ����","${contextPath}/fpages/bop/collandaudit/eq/ftl/BopQDsCollectionInfo.ftl?op=add","window","flushPage()",window);
	}
	
	//��ϸ
	function doDetail(id) {
		showWin("���ڻ��������-������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/eq/ftl/BopQDsCollectionInfo.ftl?id="+id+"&op=det","window","flushPage()",window);
	}
	
	//�޸�
	function doModify(id) {
		showWin("���ڻ��������-������Ϣ�޸�","${contextPath}/fpages/bop/collandaudit/eq/ftl/BopQDsCollectionInfo.ftl?id="+id+"&op=mod","window","flushPage()",window);
	}

	//ɾ��
	function doDelete(id) {
		showWin("���ڻ��������-������Ϣɾ��","${contextPath}/fpages/bop/collandaudit/eq/ftl/BopQDsCollectionInfo.ftl?id="+id+"&op=del","window","flushPage()",window);
	}
	

</script>
</@CommonQueryMacro.page>