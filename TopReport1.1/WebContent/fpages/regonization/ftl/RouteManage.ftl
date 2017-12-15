<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<#assign bean=JspTaglibs["/WEB-INF/struts-bean.tld"] />
<@CommonQueryMacro.page title="RouteManageEntry.title">
<table width="1000px" align="left">
<tr>
<td>
<@CommonQueryMacro.CommonQuery id="RouteManageEntry" init="true" submitMode="current">
	<table width="100%">
		<tr>
   			<td valign="top" colspan="2">
   				<@CommonQueryMacro.Interface id="intface" label="路由信息查询" colNm=4 showButton="true" />
        	</td>
        </tr>
		<tr>
   			<td>
   				<@CommonQueryMacro.PagePilot id="PagePilot"/>
   			</td>
  			
  		</tr>
  		<tr>
      		<td colspan="2">
          		<@CommonQueryMacro.DataTable id ="datatable1" paginationbar="btNew" fieldStr="jgmc[100],whjjgdm,whjjgbs,whjdm,ftpip,ftpdir,ftpname,ftppwd,ftpport,zt,ftpbz,opr" width="100%"  readonly="true"/></br>
        	</td>
        </tr>
        <tr>
      		<td colspan="2">
      		<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="路由信息维护"
        			  fieldStr="whjjgdm,whjjgbs,whjdm,ftpip,ftpdir,ftpname,ftppwd,ftpport,zt,ftpbz" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSave"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
        			
  			</td>
  		</tr>
  		<tr style="display:none">
					<td colspan="2">
						<@CommonQueryMacro.Button id= "btDel"/>&nbsp;&nbsp;
						<@CommonQueryMacro.Button id= "btMod"/>&nbsp;&nbsp;
					</td>
		</tr>

   </table>
</@CommonQueryMacro.CommonQuery>
</td>
</tr>
</table>
<script language="javascript">
	//定位一条记录
	function locate(id) {
		var record = RouteManageEntry_dataset.find(["id"],[id]);
		if (record) {
			RouteManageEntry_dataset.setRecord(record); 
		}
	}
	//刷新
		function datatable1_opr_onRefresh(cell, value, record)
	  {
		if (record) {//当存在记录时
			var id = record.getValue("id");
			if(null != id){
				cell.innerHTML="<center><a href=\"JavaScript:doModify('"+value+"')\">修改</a> &nbsp; <a href=\"JavaScript:doDelete('"+value+"')\">删除</a></center>";
			} else {//当不存在记录时
		    cell.innerHTML="&nbsp;";
		    }
		} 
	}
	
	//新增
		function btNew_onClick(button){
		subwindow_signWindow.show();
		RouteManageEntry_dataset.setFieldReadOnly("zdyhh", false);
		RouteManageEntry_dataset.setFieldReadOnly("yljgdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("rhzfdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("whjjgdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("whjjgbs", false);
		RouteManageEntry_dataset.setFieldReadOnly("whjdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpip", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpdir", false);	
		RouteManageEntry_dataset.setFieldReadOnly("ftpname", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftppwd", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpport", false);
		RouteManageEntry_dataset.setFieldReadOnly("zt", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpbz", false);
	}

//修改
	function doModify(id) {
		locate(id);
		RouteManageEntry_dataset.setFieldReadOnly("id", true);
        RouteManageEntry_dataset.setFieldReadOnly("zdyhh", false);
		RouteManageEntry_dataset.setFieldReadOnly("yljgdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("rhzfdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("whjjgdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("whjjgbs", false);
		RouteManageEntry_dataset.setFieldReadOnly("whjdm", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpip", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpdir", false);	
		RouteManageEntry_dataset.setFieldReadOnly("ftpname", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftppwd", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpport", false);
		RouteManageEntry_dataset.setFieldReadOnly("zt", false);
		RouteManageEntry_dataset.setFieldReadOnly("ftpbz", false);

		subwindow_signWindow.show();
	}

	//删除
	function doDelete(id) {
		locate(id);

		if(confirm('是否删除当前记录'))
		{
			btDel.click();
		}
	}

      function btSave_postSubmit(button)
      {
			button.url="#";
        	//alert("保存成功");
        	subwindow_signWindow.hide();
        	RouteManageEntry_dataset.flushData(RouteManageEntry_dataset.pageIndex);
      }
      
     //删除后处理
		function btDel_postSubmit(button) {
		    button.url="#";
			RouteManageEntry_dataset.flushData(RouteManageEntry_dataset.pageIndex);
		}
  	
	function signWindow_floatWindow_beforeClose(subwindow){
		RouteManageEntry_dataset.cancelRecord();
		return true;
	}
	function signWindow_floatWindow_beforeHide(subwindow){
		return signWindow_floatWindow_beforeClose(subwindow);
	}
  
      function btSave_onClickCheck(button)
      {
		    return checkValue();
      }
      
  function checkValue(){
     v_ftpip=RouteManageEntry_dataset.getValue("ftpip");
	 var exp=/^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$/;
	 var reg = v_ftpip.match(exp);
	 if(reg==null){
	  alert("IP地址不合法！");
	  return false;
     }
	 return true;
  }

</script>
</@CommonQueryMacro.page>