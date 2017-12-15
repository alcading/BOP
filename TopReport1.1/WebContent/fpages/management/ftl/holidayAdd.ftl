<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>

<@CommonQueryMacro.page title="�ڼ�������">

<@CommonQueryMacro.CommonQuery id="parammng_HolidayDetail" init="false" >
<table>
<tr><td>
	<table align="left">
	      <tr>
      		<td valign="top">
      			<@CommonQueryMacro.Group id ="groupDetail" label="�ڼ�������" fieldStr="year" /></br>
      		</td>
      	  </tr>
      	  <tr>
      		<td valign="CENTER">
      			<CENTER>
         			<@CommonQueryMacro.Button id= "btSave"/>
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


function btSave_postSubmit(button){
	alert("����ɹ�!");
	win.close();
	parammng_Holiday_dataset.flushData(parammng_Holiday_dataset.pageIndex);
}

function parammng_HolidayDetail_dataset_afterChange(dataset,field){
<#--modified by Sophie.sun jira:bms-1999 20090927 begin-->
	//alert("field.fieldName = " + field.fieldName);
<#--modified by Sophie.sun jira:bms-1999 20090927 end-->
	if(field.fieldName=="year"){
		var _year = parammng_HolidayDetail_dataset.getString("year");
		if(_year.length == 4){
			init();
		}
	}
}

function init(){
	var strHoliday = "111100111110011111001111100111110011111001111100111110011011001111100111110011111001111100111110011111001111100111110011111001111100111110011111001111100111110011111001111100111110011111001111100111110011111001111100111110011111001111100111110011111001111100111110011111000000000111110011111001111100111110011111001111100111110011111001111100111110011111001111100111";
	holidayDef.splice(0,holidayDef.length);
	for(var i=0;i<366;i++)
	{
		if(strHoliday.substr(i,1)=="1")
			holidayDef.push(false);
		else
			holidayDef.push(true);
	}
	saved = true;
	genCalendar(parammng_HolidayDetail_dataset.getValue("year"));
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

<#--moded by kangbyron 20090827 jira:BMS-1640 begin -->
function btSave_onClickCheck(button){
	if(confrimSave()){
		return true;
	}else{
		return false;
	}

}
function confrimSave()
{
	if(confirm("������δ���棬��Ҫ���浱ǰ�ڼ�������ô��"))
	{
		return saveHoliday(parammng_HolidayDetail_dataset.getValue("year"));
	}else{
		return false;
	}
}
<#--moded by kangbyron 20090827 jira:BMS-1640 end -->

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