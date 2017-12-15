<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="������Ϣ">
<@CommonQueryMacro.CommonQuery id="BopUDsCollectionInfo" init="true" insertOnEmpty="true" submitMode="current" navigate="false">
<table width="90%" cellpadding="2">
	<tr>
		<td valign="top">
			<table width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox1" label="������Ϣ" expand="true">
							<table frame="void" class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd">��֯��������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="custcode"/></td>
									<td align="center" nowrap class="labeltd">��֯��������</td>
									<td><@CommonQueryMacro.SingleField fId="custname"/></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">ס��/Ӫҵ���� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="areacode" /></td>
									<td align="center" nowrap class="labeltd">��λ��ַ </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="custaddr" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">��������</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="postcode"/></td>
									<td align="center" nowrap class="labeltd">��פ���Ҵ���</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="countrycode" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">��ҵ���Դ��� </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="industrycode" /></td>
									<td align="center" nowrap class="labeltd">�������ʹ���</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="attrcode" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">�Ƿ����⾭��������ҵ</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="istaxfree" /></td>
									<td align="center" nowrap class="labeltd">���⾭��������ҵ����</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="taxfreecode" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">������ϵ��eMail</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="email" /></td>
									<td align="center" nowrap class="labeltd">������eMail</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="ecexaddr" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">�걨��ʽ </td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="rptmethod" /></td>
									<td align="center" nowrap class="labeltd">��ע</td>
									<td class="datatd"><@CommonQueryMacro.SingleField fId="remarks" /></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>

		<#assign op=RequestParameters["op"]?default("")>
		<#if op != "new">
		<td width="8px"></td>

		<td valign="top">
			<table id="systemMessageTable" width="100%" cellpadding="0" cellspacing="0" style="">
				<tr>
					<td>
						<@CommonQueryMacro.GroupBox id="groupbox2" label="ϵͳ��Ϣ" expand="true">
							<table frame=void class="grouptable" width="100%">
								<tr>
									<td align="center" nowrap class="labeltd" >��¼״̬</td>
									<td class="datatd" ><@CommonQueryMacro.SingleField fId="recStatus" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">����״̬</td>
									<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveStatus" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">�������</td>
									<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="approveResult" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">��ִ״̬</td>
									<td class="datatd">
										<@CommonQueryMacro.SingleField fId="repStatus"/>
										<a id="repResult" href="JavaScript:doRepDet()">��ִ˵��<a/>
									</td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">����ʱ��</td>
									<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="crtTm" /></td>
								</tr>
								<tr>
									<td align="center" nowrap class="labeltd">������ʱ��</td>
									<td nowrap class="datatd"><@CommonQueryMacro.SingleField fId="lstUpdTm" /></td>
								</tr>
							</table>
						</@CommonQueryMacro.GroupBox>
					</td>
				</tr>
			</table>
		</td>
		</#if>
	</tr>

	<tr>
		<td align="left" colspan="3">
			<@CommonQueryMacro.CommonQuery id="BopInvcountrycode" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
				<@CommonQueryMacro.GroupBox id="guoup2" label="�ⷽͶ���߹���" expand="true">
					<table frame=void width="100%">
						<#assign op = RequestParameters["op"]?default("")>
						<#assign subSuccess = RequestParameters["subSuccess"]?default("0")>
						<#if (op == "new" || op == "modify") && subSuccess == "0">
							<tr>
								<td align="right">
									<@CommonQueryMacro.Button id= "btAddRecord"/>&nbsp;&nbsp;
									<@CommonQueryMacro.Button id= "btDelRecord"/>&nbsp;&nbsp;
								</td>
							</tr>
						</#if>
						<tr>
							<td>
								<@CommonQueryMacro.DataTable id="invcountrycodedatatable" fieldStr="invcountrycode" readonly="false" width="100%" hasFrame="true" height="200px" />
							</td>
						</tr>
					</table>
				</@CommonQueryMacro.GroupBox>
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>

	<tr>
		<td align="left" colspan="3">
			<@CommonQueryMacro.CommonQuery id="BopOpenDsCollection" init="true" submitMode="all" navigate="false" insertOnEmpty="true">
				<@CommonQueryMacro.GroupBox id="guoup2" label="������Ϣ" expand="true">
					<table frame=void width="100%">
						<#assign op=RequestParameters["op"]?default("")>
						<#if op == "new" || op == "modify">
							<tr>
								<td align="right">
									<@CommonQueryMacro.Button id= "btAddAccount"/>&nbsp;&nbsp;
									<@CommonQueryMacro.Button id= "btDelAccount"/>&nbsp;&nbsp;
								</td>
							</tr>
						</#if>
						<tr>
							<td>
								<@CommonQueryMacro.DataTable id="openaccounttable" fieldStr="branchcode[180],contact,tel,fax" readonly="false" width="100%" hasFrame="true" height="200px" />
							</td>
						</tr>
					</table>
				</@CommonQueryMacro.GroupBox>
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>

	<tr>
		<td align="left" colspan="3">
			<@CommonQueryMacro.CommonQuery mode = "1" id = "BopUDsCollectionInfo">
				<#assign op=RequestParameters["op"]?default("")>
				<#if op != "detail">
					<@CommonQueryMacro.Button id="btSave"/>&nbsp; &nbsp;
				</#if>
				<@CommonQueryMacro.Button id="btBack"/>
			</@CommonQueryMacro.CommonQuery>
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>
<script language="JavaScript">

	var op = "${RequestParameters["op"]?default('')}";

	function initCallGetter_post() {

		//��ִ˵��������ʽ
		var repStatus = BopUDsCollectionInfo_dataset.getValue("repStatus");
		if(repStatus == "00" || repStatus == "01") {
			document.getElementById("repResult").href = "javascript:void(0)";
			document.getElementById("repResult").style.color = "#999999";
		}

		if ("modify" == op) {
			var subSuccess = BopUDsCollectionInfo_dataset.getValue("subSuccess");
			if (subSuccess == "1") {
				BopUDsCollectionInfo_dataset.setFieldReadOnly("custcode",true);
				BopUDsCollectionInfo_dataset.setFieldReadOnly("custname",true);
				BopUDsCollectionInfo_dataset.setFieldReadOnly("industrycode",true);
				BopUDsCollectionInfo_dataset.setFieldReadOnly("attrcode",true);
				BopUDsCollectionInfo_dataset.setFieldReadOnly("countrycode",true);
				BopUDsCollectionInfo_dataset.setFieldReadOnly("istaxfree",true);
				BopUDsCollectionInfo_dataset.setFieldReadOnly("areacode",true);
				BopInvcountrycode_dataset.setFieldReadOnly("invcountrycode",true);
			}
		} else if ("delete" == op || "detail" == op) {
			BopUDsCollectionInfo_dataset.setFieldReadOnly("custcode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("custname",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("areacode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("custaddr",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("postcode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("countrycode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("industrycode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("attrcode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("istaxfree",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("taxfreecode",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("email",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("ecexaddr",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("rptmethod",true);
			BopUDsCollectionInfo_dataset.setFieldReadOnly("remarks",true);


			BopInvcountrycode_dataset.setFieldReadOnly("invcountrycode",true);

			BopOpenDsCollection_dataset.setFieldReadOnly("branchcode",true);
			BopOpenDsCollection_dataset.setFieldReadOnly("contact",true);
			BopOpenDsCollection_dataset.setFieldReadOnly("tel",true);
			BopOpenDsCollection_dataset.setFieldReadOnly("fax",true);

		}
	}

	function getNumberFromUnitCode(code) {
		var SerialNumber = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		return SerialNumber.indexOf(code);
	}

	function checkUnitCode(UnitCode) {
		if (UnitCode == null || "" == UnitCode || UnitCode.length != 9 || "000000000" == UnitCode) {
			alert("��֯�������벻���Ϲ淶");
			return false;
		}
		var one = getNumberFromUnitCode(UnitCode.substring(0, 1));
		var two = getNumberFromUnitCode(UnitCode.substring(1, 2));
		var three = getNumberFromUnitCode(UnitCode.substring(2, 3));
		var four = getNumberFromUnitCode(UnitCode.substring(3, 4));
		var five = getNumberFromUnitCode(UnitCode.substring(4, 5));
		var six = getNumberFromUnitCode(UnitCode.substring(5, 6));
		var seven = getNumberFromUnitCode(UnitCode.substring(6, 7));
		var eight = getNumberFromUnitCode(UnitCode.substring(7, 8));
		var tag = 11 - (one * 3 + two * 7 + three * 9 + four * 10 + five * 5 + six * 8 + seven * 4 + eight * 2) % 11;
		if ("X" != UnitCode.substring(8, 9) && tag == 10) {
			alert("��֯�������벻���Ϲ淶,���һλ����ΪX");
			return false;
		} else if ("0" != UnitCode.substring(8, 9) && tag == 11) {
			alert("��֯�������벻���Ϲ淶,���һλ����Ϊ0");
			return false;
		} else if (tag != 10 && tag != 11) {
			var nine = getNumberFromUnitCode(UnitCode.substring(8, 9));
			if (nine != tag) {
				alert("��֯�������벻���Ϲ淶,���һλ����Ϊ" + tag);
				return false;
			}
		}
		return true;
	}

	//���水ť�ύǰ���ͳһ����
	function btSave_onClickCheck(button) {

		if (op == "new" || op == "modify") {
			var custcode = BopUDsCollectionInfo_dataset.getValue("custcode");
			var countrycode = BopUDsCollectionInfo_dataset.getValue("countrycode");
			var areacode = BopUDsCollectionInfo_dataset.getValue("areacode");
			var attrcode = BopUDsCollectionInfo_dataset.getValue("attrcode");
			var istaxfree = BopUDsCollectionInfo_dataset.getValue("istaxfree");
			var taxfreecode = BopUDsCollectionInfo_dataset.getValue("taxfreecode");
			var custname = BopUDsCollectionInfo_dataset.getValue("custname");

			if (!checkUnitCode(custcode)) {
				return false;
			}
			if (countrycode == "CHN") {
				if (!isChinese(custname)) {
					alert("[��פ���Ҵ���]Ϊ�й�ʱ[��֯��������]����Ϊ����");
					return false;
				}
			}
			if (areacode == "100000") {
				alert("[ס��/Ӫҵ����]����ѡ[100000]");
				return false;
			}
			if (attrcode == "100" || attrcode == "140" || attrcode == "150" || attrcode == "170" || attrcode == "200" || attrcode == "300") {
				alert("[����]��[��Ӫ]��[�������Σ���˾��]��[˽��]��[�۰�̨Ͷ��]��[����Ͷ��]���ڲ�����ϸ���࣬���Ϊ����ѡ��");
				return false;
			}
			if (attrcode == "110" || attrcode == "120" || attrcode == "130" || attrcode == "210"
				|| attrcode == "220" || attrcode == "230" || attrcode == "240" || attrcode == "290"
				|| attrcode == "310" || attrcode == "320" || attrcode == "330" || attrcode == "340"
				|| attrcode == "390") {
				if (countrycode != "CHN") {
					alert("[�������ʹ���]Ϊ[����],[�۰�̨Ͷ��],[����Ͷ��]����[��פ���Ҵ���]ӦΪ[�й�]");
					return false;
				}
			}
			if (attrcode == "400") {
				if (countrycode == "CHN") {
					alert("[�������ʹ���]Ϊ[�������],[��פ���Ҵ���]ӦΪ[�����۰�̨]");
				}
			}
			if (null != istaxfree && istaxfree == "Y") {
				if (taxfreecode == "") {
					alert("[�Ƿ����⾭��������ҵ]Ϊ[���⾭��������ҵ],[���⾭��������ҵ����]����Ϊ��");
					return false;
				}
			} else if (null != istaxfree && istaxfree == "N") {
				if (taxfreecode != "") {
					alert("[�Ƿ����⾭��������ҵ]Ϊ[�����⾭��������ҵ],[���⾭��������ҵ����]������д");
					return false;
				}
			}
			//У���ⷽͶ���߹���
			if (attrcode == "400") {
				var record = BopInvcountrycode_dataset.getFirstRecord();
				if (null != record) {
					alert("[��������]Ϊ[�������],[�ⷽͶ���߹���]����Ϊ��");
					return false;
				}
			}
			if (attrcode == "210" || attrcode == "220" || attrcode == "230" || attrcode == "240" || attrcode == "290") {
				var flag = false;
				var record = BopInvcountrycode_dataset.getFirstRecord();
				if (null == record) {
					alert("[��������]Ϊ[�۰�̨Ͷ��]����,[�ⷽͶ���߹���]����Ϊ��");
					return false;
				}
				while (record) {
					var invcountrycode = record.getValue("invcountrycode");
					if (invcountrycode == "HKG" || invcountrycode == "MAC" || invcountrycode == "TWN") {
						flag = true;
					}
					record = record.getNextRecord();
				}
				if (!flag) {
					alert("[��������]Ϊ[�۰�̨Ͷ��]����,[�ⷽͶ���߹���]��������[�۰�̨]֮һ");
					return false;
				}
			}
			if (attrcode == "310" || attrcode == "320" || attrcode == "330" || attrcode == "340" || attrcode == "390") {
				var record = BopInvcountrycode_dataset.getFirstRecord();
				var flag = false;
				if (null == record) {
					alert("[��������]Ϊ[����Ͷ��]����,[�ⷽͶ���߹���]����Ϊ��");
					return false;
				}
				while (record) {
					var invcountrycode = record.getValue("invcountrycode");
					if (invcountrycode != "HKG" && invcountrycode != "MAC" && invcountrycode != "TWN" && invcountrycode != "CHN") {
						flag = true;
					}
					record = record.getNextRecord();
				}
				if (!flag) {
					alert("[��������]Ϊ[�۰�̨Ͷ��]����,[�ⷽͶ���߹���]����һ��Ϊ������й���½���۰�̨���⣩");
					return false;
				}
			}
			var record = BopInvcountrycode_dataset.getFirstRecord();
			if (null != record) {
				while (record) {
					var invcountrycode = record.getValue("invcountrycode");
					if ("CHN" == invcountrycode) {
						alert("�ⷽͶ���߹�����ѡ���й�");
						return false;
					}
					var count = 0;
					var countryrRcord = BopInvcountrycode_dataset.getFirstRecord();
					while (countryrRcord) {
						country = countryrRcord.getValue("invcountrycode");
						if (country == invcountrycode) {
							count ++;
						}
						countryrRcord = countryrRcord.getNextRecord();
					}
					if (1 < count){
						alert("ͬһ��[��λ���������]��[Ͷ�ʹ������]�����ظ�");
						return false;
					}
					record = record.getNextRecord();
				}
			}
			var record = BopInvcountrycode_dataset.getFirstRecord();
			var count = 0;
			while (record) {
				count ++;
				if (count > 5) {
					alert("ͬһ��[��λ���������]��[Ͷ�ʹ������]��������С�ڵ���[5]");
					return false;
				}
				record = record.getNextRecord();
			}


			//������Ϣ
			var record = BopOpenDsCollection_dataset.getFirstRecord();
			if (null == record) {
				alert("ͬһ��[��λ���������],[������Ϣ]��¼��������ڵ���[1]");
				return false;
			}
			while (record) {
				var branchcode = record.getValue("branchcode");
				var bankRcord = BopOpenDsCollection_dataset.getFirstRecord();
				var count = 0;
				while (bankRcord) {
					if (branchcode == bankRcord.getValue("branchcode")) {
						count ++;
					}
					bankRcord = bankRcord.getNextRecord();
				}
				if (1 < count) {
					alert("ͬһ��[��λ���������]��[������Ϣ]��[���ڻ�����ʶ��]�����ظ�");
					return false;
				}
				record = record.getNextRecord();
			}
		}
		return true;
	}


	function isChinese(str){
		//���
		var badChar ="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		badChar += "abcdefghijklmnopqrstuvwxyz";
		badChar += "0123456789";
		badChar += "`~!@#$%^&()-_=+[]\\|:;\"\\'<,>?/";//������*��.��Ӣ�ķ���
		badChar += " ";

		//ȫ��
		badChar += "���£ãģţƣǣȣɣʣˣ̣ͣΣϣУѣңӣԣգ֣ףأ٣�";
		badChar += "���������������������������������";
		badChar += "��������������������";
		badChar += "��";
		badChar += "�࡫�������磥�ޣ��������ߣ����ۣݣܣ�������������������";//������*��.��Ӣ�ķ���
		if ("" == str) {
			return true;
		}
		for (var i= 0;i < str.length; i++) {
			var c = str.charAt(i);//�ַ���str�е��ַ�
			if (badChar.indexOf(c) > -1) {
				return false;
			}
		}
		return true;
	}

	function btSave_postSubmit(button) {
		alert("����ɹ���");
		closeWin(true);
	}

	function doRepDet() {
		var id = BopUDsCollectionInfo_dataset.getValue("id");
		var appType = BopUDsCollectionInfo_dataset.getValue("appType");
		var currentfile = BopUDsCollectionInfo_dataset.getValue("currentfile");
		showPickup("��ִ���","${contextPath}/fpages/commonloadpage/jsp/ReportBackErr.jsp?id=" + id + "&appType=" + appType + "&currentfile=" + currentfile, 600, 500);
	}

	function btBack_onClick() {
		closeWin();
	}


</script>
</@CommonQueryMacro.page>