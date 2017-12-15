<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="�걨��Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BopFSDsCollectionTabs" navigate="false" currentTab="BopSDsCollection">
		<@CommonQueryMacro.CommonQuery id="BopSDsCollection" init="false" submitMode="current" navigate="false" >
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
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAdd" hasFrame="true" fieldStr="opr[100],filler2[80],buscode[100],workDate[100],recStatus[80],approveStatus[80],repStatus[80],actiontype[80],actiondesc[100],rptno,isref,country,paytype[120],payattr[120],txcode[200],tc1amt,txcode2[200],tc2amt,contrno[120],invoino[120],billno[120],contamt,regno,crtuser,inptelc,rptdate[85]" readonly="true" hasFrame="true" width="900" height="260"/>
					</td>
				</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">

		function initCallGetter_post(){
			var currentDate = "${statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstanceWithoutException().getTxdate()}";
			BopSDsCollection_interface_dataset.setValue("qworkDateStart", currentDate);
			BopSDsCollection_interface_dataset.setValue("qworkDateEnd", currentDate);
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
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>"
			} else {
				cell.innerHTML="&nbsp;";
			}
		}
		
		function btAdd_onClick(button) {
			btNewClick();
		}
		//����
		function btNewClick(){
			showWin("������Ϣ����","${contextPath}/fpages/bop/collandaudit/fs/ftl/BopSDsCollectionInfo.ftl?op=new","window","flushPage()",window);
		}

		//ˢ������
		function flushPage(){
			BopSDsCollection_dataset.flushData(1);
		}

		//�޸�
		function doCollection(id){
			showWin("������Ϣ�޸�","${contextPath}/fpages/bop/collandaudit/fs/ftl/BopSDsCollectionInfo.ftl?id=" + id + "&op=modify","window","flushPage()",window);
		}

		//ɾ��
		function doDelete(id){
			showWin("������Ϣɾ��","${contextPath}/fpages/bop/collandaudit/fs/ftl/BopSDsCollectionInfo.ftl?id=" + id + "&op=delete","window","flushPage()",window);
		}

		//��ϸ��Ϣ
		function doDetail(id){
			showWin("������Ϣ��ϸ","${contextPath}/fpages/bop/collandaudit/fs/ftl/BopSDsCollectionInfo.ftl?id=" + id + "&op=detail","window","",window);
		}
	</script>
</@CommonQueryMacro.page>