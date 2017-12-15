<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="�ڼ���ά��">

<@CommonQueryMacro.CommonQuery id="parammng_HolidayDetail" init="true" >
<table>
<tr><td>
	<table align="left">
	      <tr>
      		<td valign="top">
      			<@CommonQueryMacro.DataTable id ="datatableDetail" hasFrame="false" fieldStr="year,sunWorkDay,sunHoliDay" readonly="true" /></br>
      		</td>
      	  </tr>
      	  <tr>
      		<td valign="CENTER">
      			<CENTER>
         			<@CommonQueryMacro.Button id= "btUpdate"/>
         			<#--added by Sophie.sun 20090923 jira:bms-1971 begin-->
         			&nbsp;&nbsp;&nbsp;&nbsp;
         			<@CommonQueryMacro.Button id= "btCancel"/>
         			<#--added by Sophie.sun 20090923 jira:bms-1971 end-->
         		</CENTER>
      		</td>
      </tr>
	</table>
</td></tr>
<tr><td>
	<table align="left">
	<tr>
		<td id="һ��">
		</td>
		<td id="����">
		</td>
		<td id="����">
		</td>
	</tr>
	<tr>
		<td id="����">
		</td>
		<td id="����">
		</td>
		<td id="����">
		</td>
	</tr>
	<tr>
		<td id="����">
		</td>
		<td id="����">
		</td>
		<td id="����">
		</td>
	</tr>
	<tr>
		<td id="ʮ��">
		</td>
		<td id="ʮһ��">
		</td>
		<td id="ʮ����">
		</td>
	</tr>
</table>
</td></tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="JavaScript">
var holidayDef = new Array();
var saved = true;

function btUpdate_postSubmit(button){
	alert("����ɹ�!");
	win.close();
	parammng_Holiday_dataset.flushData(parammng_Holiday_dataset.pageIndex);
}
<#--added by Sophie.sun 20090923 jira:bms-1971 begin-->
function btCancel_onClickCheck(button){
    unloadPageWindows("userWin");
    return false;
}
<#--added by Sophie.sun 20090923 jira:bms-1971 end-->
function parammng_HolidayDetail_dataset_flushDataPost(dataset){
	var strHoliday = dataset.getValue("holidayDef");
	holidayDef.splice(0,holidayDef.length);
	for(var i=0;i<366;i++)
	{
		if(strHoliday.substr(i,1)=="1")
			holidayDef.push(false);
		else
			holidayDef.push(true);
	}
	saved = true;
	genCalendar(dataset.getValue("year"));
}
function genCalendar(year)
{
	var sunDay = 0;
	for(var i=0;i<12;i++)
	{
		sunDay = genOneMonth(year,i,sunDay);
	}
}
function genOneMonth(year,month,startSunDay)
{
	var date = new Date(year,month,1,0,0,0,0);
	var monthTable = ["һ��","����","����","����","����","����","����","����","����","ʮ��","ʮһ��","ʮ����"];
	var day = ["�� ","һ ","�� ","�� ","�� ","�� ","�� "];
	var container = document.getElementById(monthTable[month]);
	container.vAlign="top";
	var table = document.createElement("table");
	var rowHeader = table.insertRow(table.rows.length);
	var cell = rowHeader.insertCell(0);
	cell.colSpan = "7";
	cell.innerHTML = monthTable[month];
	cell.align="center";
	var rowHeader = table.insertRow(table.rows.length);
	for(var i=0;i<7;i++)
	{
		var cell = rowHeader.insertCell(i);
		cell.innerHTML=day[i];
	}
	rowHeader = table.insertRow(table.rows.length);
	for(var i=0;i<date.getDay();i++)
	{
		var cell = rowHeader.insertCell(i);
	}
	for(var i=0;i<31;i++)
	{
		if(date.getDay()==0){
			rowHeader = table.insertRow(table.rows.length);
		}
		var cell = rowHeader.insertCell(date.getDay()%7);
		cell.innerHTML = date.getDate();
		date.setDate(i+2);
		cell.align="right";
		cell.sunDay=startSunDay;
		if(!holidayDef[startSunDay]){
			cell.style.backgroundColor="";
		}else{
			cell.style.backgroundColor="#99ffff";
		}
		cell.onclick=function(){
			holidayDef[this.sunDay]=!holidayDef[this.sunDay];
			if(holidayDef[this.sunDay]){
				this.style.backgroundColor="#99ffff";
			}else{
				this.style.backgroundColor="";
			}
			saved = false;
			//alert(this.sunDay);
			}
		cell.id="holiday_"+startSunDay;
		startSunDay++;
		if(date.getDate()==1)break;
	}
	var childNode = container.firstChild;
	if(childNode!=null)
		container.removeChild(container.firstChild);
	container.appendChild(table);
	return startSunDay;
}

function btUpdate_onClickCheck(button){
	confrimSave();
}
<#--modified by Sophie.sun 20090924 jira:bms-1999 begin-->
function confrimSave()
{
	if(confirm("������δ���棬��Ҫ���浱ǰ�ڼ�������ô��"))
	{
		saveHoliday(parammng_HolidayDetail_dataset.getValue("year"));
	}
	return false;
}
<#--modified by Sophie.sun 20090924 jira:bms-1999 end-->

function saveHoliday(year)
{
	var strHoliday = "";
	for(var i=0;i<366;i++)
	{
		if(holidayDef[i])
			strHoliday+="0";
		else
			strHoliday+="1";
	}
	if(year%4!=0){
		strHoliday=strHoliday.substring(365,0);
	}

	saved = true;
	parammng_HolidayDetail_dataset.setValue("holidayDef",strHoliday);
	return true;
}
</script>
</@CommonQueryMacro.page>