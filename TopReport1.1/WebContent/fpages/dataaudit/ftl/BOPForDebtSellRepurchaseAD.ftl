<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="�˻�������Ϣ">
	<@CommonQueryMacro.CommonQueryTab id="BOPForDebtSellRepurchaseADTabs" navigate="false" currentTab="BOPForDebtSellRepurchaseAD">
		<@CommonQueryMacro.CommonQuery id="BOPForDebtSellRepurchaseAD" init="false" submitMode="selected" navigate="false" >
			<table align="left">
				<tr>
					<td>
						<@CommonQueryMacro.Interface id="interface" label="�������ѯ����" />
					</td>
				</tr>

				<tr>
					<td valign="top">
						<@CommonQueryMacro.PagePilot id="ddresult" maxpagelink="9" showArrow="true" />
					</td>
				</tr>

				<tr>
					<td>
						<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btAudit" fieldStr="select[40],filler2[80],workDate[100],actiontype[80],recStatus[80],approveStatus[80],repStatus[80],exdebtcode[180],debtorcode[120],debtype[80],valuedate[100],contractcurr[120],contractamount[120],maturity[100],anninrate[100],spapfeboindex" hasFrame="true" width="900" height="260" readonly="true"/>
			      	</td>
				</tr>

			    <tr>
			    	<td>
			    		<@CommonQueryMacro.FloatWindow id="aditADSubWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
			      			<div align="center">
								<@CommonQueryMacro.Group id="group1" label="�����Ϣ"  fieldStr="approveStatusChoose,approveResultChoose" colNm=2/>
								</br>
								<center>
									<@CommonQueryMacro.Button id= "btAuditSave"/>&nbsp;&nbsp;
			      					<@CommonQueryMacro.Button id= "btBack"/>
			      				</center>
			      			</div>
						</@CommonQueryMacro.FloatWindow>
					</td>
				</tr>
			</table>
		</@CommonQueryMacro.CommonQuery>
	</@CommonQueryMacro.CommonQueryTab>
	<script language="JavaScript">
		//��������
		function initCallGetter_post(){
			<#assign v_txdate = statics["com.huateng.ebank.business.common.GlobalInfo"].getCurrentInstance().getTxdate()>
			BOPForDebtSellRepurchaseAD_interface_dataset.setValue("qStartDate","${v_txdate}");
			BOPForDebtSellRepurchaseAD_interface_dataset.setValue("qEndDate","${v_txdate}");			
		}
	
		//��ϵͳˢ�µ�Ԫ�������ʱ������
		function datatable1_filler2_onRefresh(cell,value,record)
		{
			if (record) {//�����ڼ�¼ʱ
				var id = record.getValue("id");
				cell.innerHTML = "<a style='text-decoration:none' href=\"JavaScript:doDetail('"+id+"')\">" + value + "</a>";
			} else {//�������ڼ�¼ʱ
			 	cell.innerHTML="&nbsp;";
			}
		}

		function btAuditSave_onClickCheck()
		{
		   	var approveStatusChoose = BOPForDebtSellRepurchaseAD_dataset.getValue("approveStatusChoose");
		   	var approveResultChoose = BOPForDebtSellRepurchaseAD_dataset.getValue("approveResultChoose");
		   	if (!approveStatusChoose.length > 0)
		   	{
		   		alert("��ѡ����˽����");
		   		return false;
		   	}
		   	if (approveStatusChoose == "02" && approveResultChoose.length < 1)
		   	{
		   		alert("��˽����ͨ�������˵��������д��");
		   		return false;
		   	}
		   	BOPForDebtSellRepurchaseAD_dataset.setParameter("approveStatusChoose",approveStatusChoose);
		   	BOPForDebtSellRepurchaseAD_dataset.setParameter("approveResultChoose",approveResultChoose);
			subwindow_aditADSubWindow.hide();
		}

		function btAuditSave_postSubmit(button)
		{
			alert("����ɹ�");
			BOPForDebtSellRepurchaseAD_dataset.flushData(1);
		}

		function btAudit_onClick()
		{
			var hasSelected = false;
			var hasAudit = false;
			var record = BOPForDebtSellRepurchaseAD_dataset.getFirstRecord();
			while(record)
			{
				var v_selected = record.getValue("select");
				var v_approveStatus = record.getValue("approveStatus");
				if( v_selected == true )
				{
					hasSelected=true;
					if (v_approveStatus != "00")
					{
						hasAudit = true;
					}
				}
				record=record.getNextRecord();
		   	}
		   	if (!hasSelected)
		   	{
		   		alert("��ѡ����Ӧ�ļ�¼��");
		   		return false;
		   	}
		   	if (hasAudit)
		   	{
		   		if(!confirm("��ѡ��¼��������˼�¼��ȷ�������������"))
				{
					return false;
				}
		   	}
			subwindow_aditADSubWindow.show();
		}

		function btBack_onClick()
		{
			subwindow_aditADSubWindow.hide();
		}

		function doDetail(id)
		{
			showWin("�����ع�ǩԼ��Ϣ","${contextPath}/fpages/datacollection/ftl/BOPForDebtSellRepurchaseCol.ftl?id=" + id + "&op=detaile");
		}
	</script>
</@CommonQueryMacro.page>