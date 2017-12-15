<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<#assign lntypeStr = statics["com.huateng.report.dataAnaly.util.ReportDataAnalyUtil"].getConfAnalyParamIds().trim()>
<@CommonQueryMacro.page title="���ݷ���">
<table width="98%" align="left">
<tr>
<td>
<@CommonQueryMacro.CommonQuery id="analyConfEntry" init="true" submitMode="current">
	<table width="100%" cellpadding="5" cellspacing="1">
		<tr>
			<td valign="top" colspan="2" width="100%">
				<@CommonQueryMacro.Interface id="interface" label="���ݷ������ò�ѯ" colNm=4 showButton="true"/>
			</td>
		</tr>
		<tr>
			<td valign="top" width="50%">
				<FIELDSET name='group' style="padding: 6px;">
				<LEGEND>������Ϣ</LEGEND>
				<@CommonQueryMacro.PagePilot id="pagePilot"  maxpagelink="9" showArrow="true" pageCache="false"/>
				<@CommonQueryMacro.DataTable id="dataTable1" fieldStr="id,busiType,appType,confSeq,confVaild,confType,confIsRet,errIsNext"  width="640" hasFrame="true"  />
				</FIELDSET>
			</td>
			<td width="50%">
			<FIELDSET name='group6' style="padding: 6px;">
				<LEGEND>����������ϸ��Ϣ</LEGEND>
				<table frame=void width="100%" class="grouptable">
	            	<tr>
	                  <td nowrap class="labeltd">���ñ��</td>
					  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="id"/></td>
					  <td nowrap class="labeltd">��Ч��</td>
					  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="confVaild"/></td>
	                </tr>
	                <tr>
	                  <td nowrap class="labeltd">ҵ������</td>
	                  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="busiType"/></td>
	                  <td nowrap class="labeltd">Ӧ������</td>
	                  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="appType"/></td>
	                </tr>
					<tr>
					  <td nowrap class="labeltd">ִ��˳��</td>
					  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="confSeq"/></td>
					  <td nowrap class="labeltd">��������Ƿ�����ִ��</td>
					  <td class="datatd" nowrap><@CommonQueryMacro.SingleField fId="errIsNext"/></td>
	                </tr>
	                <tr>
	                  <td nowrap class="labeltd">ִ������</td>
					  <td class="datatd" nowrap colspan="3"><@CommonQueryMacro.SingleField fId="confType"/>
					  </td>
					</tr>
					<tr>
	                  <td nowrap class="labeltd">ִ������</td>
					  <td class="datatd" nowrap colspan="3"><@CommonQueryMacro.SingleField fId="confClassPath"/>
					  <br/>ִ������Ϊ��java�࣬��������·�����������ƣ��м��ԣ��ָ�;
					  <br/>ִ������Ϊ���洢���̣�������洢��������(����ֵout��������1��������).
					  <br/>ִ������Ϊ����������������������ţ�JOBNO��ֵ��).
					  </td>
					</tr>
	                <tr>
	                  <td nowrap class="labeltd">�������</td>
					  <td class="datatd" nowrap id="confParamIdsTd"></td>
					  <td class="labeltd" colspan="2">
					  ϵͳ���ṩ������ͬʱ�������������˳��
					  </td>
					</tr>
					<tr>
	                  <td nowrap class="labeltd">����ֵ</td>
					  <td class="datatd" nowrap colspan="3"><@CommonQueryMacro.SingleField fId="confIsRet"/>
					  <li>ִ������Ϊjava�࣬����ֵֻ֧�ַ���java����;</li>
					  <li>ִ������Ϊ�洢���̣��������ݿ�ѡ��,�磺oracleΪout����,sqlserverΪselect��ʽ��</li>
					  <li>ִ������Ϊ�������޷���ֵ��</li>
					  </td>
					</tr>
					<tr>
	                  <td nowrap class="labeltd">����ֵ������</td>
					  <td class="datatd" nowrap colspan="3"><@CommonQueryMacro.SingleField fId="confRetClass"/>
					  <br/>��ִ�а�������ֵ����������·�����������ƣ��м��ԣ��ָ���
					  <br/>����ֵ�����෽�����һλΪBiAnalyDetail����(ϵͳĬ��)��
					  </td>
					</tr>
					<tr>
	                  <td nowrap class="labeltd">����˵��</td>
					  <td class="datatd" nowrap colspan="3"><@CommonQueryMacro.SingleField fId="confInfo"/></td>
					</tr>
                </table>
                </FIELDSET>
                <br/>
                <@CommonQueryMacro.Button id= "btStatus"/>
                </td>
              </tr>
	</@CommonQueryMacro.CommonQuery>
<td>
</tr>
</table>
<script language="javascript">
	function initCallGetter_post(){
		btStatus.disable(true);
		analyConfEntry_interface_dataset.setValue("qbusiType",defaultType);
		document.getElementById("confParamIdsTd").innerHTML = report_checkbox.create("${lntypeStr}","<br/>","confParam",null,true);
	}

	function btStatus_postSubmit(button) {
		alert("����ɹ�");
		//ˢ�µ�ǰҳ
		analyConfEntry_dataset.flushData(analyConfEntry_dataset.pageIndex);
	}

	function btStatus_onClickCheck(button){
		var vals = report_checkbox.getCheckedValueBySeq("confParam");
		if(!vals){
			return vals;
		}
		analyConfEntry_dataset.setValue("confParamIds",vals);
		return true;
	}

	function analyConfEntry_dataset_afterScroll(dataset){
		var id = dataset.getValue("id");
	    if(id!=null&&id.length>0){
	    	btStatus.disable(false);
	    }else{
	    	btStatus.disable(true);
	    }
	    var pids = dataset.getString("confParamIds");
	    report_checkbox.setCheckBoxCheckedBySeq("confParam",pids);
	}

	function qappType_DropDown_beforeOpen(dropDown){
	     var type=analyConfEntry_interface_dataset.getValue("qbusiType");
	     if(type.length>0){
	     	AppTypeSelect_DropDownDataset.setParameter("type",type);
	     }
	     qappType_DropDown.cached=false;
	}
	function qbusiType_DropDown_onSelect(dropDown,record,editor){
	    var selId=record.getValue("data");
	    var oldId = analyConfEntry_interface_dataset.getValue("qbusiType");
	    if(selId!=oldId){
	    	analyConfEntry_interface_dataset.setValue2("qappType","");
	   	}
	    return true;
	}

</script>
</@CommonQueryMacro.page>