<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���ڻ��������-������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopEQDsQueryTabs" navigate="false" currentTab="BopQDsQuery">
		<@CommonQueryMacro.CommonQuery id="BopQDsQuery" init="false" submitMode="current" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" fieldStr="filler2[80],buscode[80],brNo[80],brNoName[80],workDate[80],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[120],rptno[100],country[80],isref[80],paytype[80],payattr[80],txcode[80],tc1amt[80],txcode2[80],tc2amt[80],contrno[100],invoino[80],regno[80],crtuser[80],rptdate[80]" readonly="true" hasFrame="true" width="900" height="260"/>
		      		</td>
	    		</tr>

			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

		function initCallGetter_post(){
			var workdate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			BopQDsQuery_interface_dataset.setValue("qWorkDateStart", workdate);
			BopQDsQuery_interface_dataset.setValue("qWorkDateEnd", workdate);
			
		}
	
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_filler2_onRefresh(cell,value,record) {
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				var recStatus = record.getValue("recStatus");
				cell.innerHTML = "<center><a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">"+value+"</a></center>";
			} else {
				//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		//��ϸ
		function doDetail(id) {
			showWin("���ڻ��������-������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/eq/ftl/BopQDsCollectionInfo.ftl?id="+id+"&op=det","window","flushPage()",window);
		}

		//ˢ������
		function flushPage(){
			BopQDsQuery_dataset.flushData();
		}

	</script>
</@CommonQueryMacro.page>