
<!--#include file="ADOVBS.asp"-->
<!--include file="ASPIncludes/DBopen.asp"-->
<!--#include file="aspJSON118.asp" -->

<style>
	table.table-bordered tbody tr:nth-last-child(1){
		background:#f4dcdc  !important;
	}
	
	table.table-bordered tbody:nth-last-child(1) tr td:nth-child(1){
		font-weight:bold !important;
	}
	
	
	table.table-bordered.dtable tbody tr th{
		text-align:right !important;
		font-size:11px !important;
		word-break: break-all;
}
	}
	
	
	
	
	table.table-bordered.dtable tbody tr td:nth-child(1){
		text-align:left !important;
	}
	
	.table-message-note {
		font-size:11px;
		color:#bb5e5e;
		
	
	}
	
</style>

<%
dim getStartDate
getStartDate = "2020-07-20"

dim PerPageRate
PerPageRate = 4
dim AStatus
Astatus="D"
Set oJSON = New aspJSON
''for  Since date selection
''response.write trim(newcode) 
'response.end

EventId=Request.QueryString("EventId")
if trim(EventId) <> "" then
''urlname="http://resx.marketglass.com/api/reports/"&Code&"/analytics/outlines/.json?access_token=pu1s0m3tok3nher3d0n1us3me&regions=EUR,USA"
urlname="https://www.evolv.cc/data/keynotes/digitalbanks.json"
''urlname="http://resx.marketglass.com/api/reports/"&Code&"/analytics/outlines/.json" 

'' for Date wise selection
htmlURlname=server.htmlencode(urlname)

Server.ScriptTimeout=2000
Set objXML = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
objXML.Open "GET",server.htmlencode(urlname), false 

actualQry1=""
jsonString=""
inactualQry=0
TweekedJson=""
actualQry1=""
objXML.setTimeouts 30000, 60000, 30000, 120000
objXML.Send  
jsonString= objXML.responseText


tweekedReplacstring= replacestring & "{""data"":"
TweekedJson= replace(jsonString,tweekedReplacstring,"")
response.write TweekedJson & "<br>"
response.end

'response.end
'''' for activate Data wise selectio
'''inserrtJsonQry = Replace(jsonString,"{""meta"":{""email"":null,""since"":null,""date"":"""&getStartDate&"""},""data"":[{","[{")
''TweekedJson= inserrtJsonQry
'''('[{"date":"2020-09-08","item_count":11,"active_minutes":113,"user":{"id":2482,"email":"contractor1046@bizacumen.com","first_name":"Vasudha","last_name":"Katikala"}}
APIQuery="SELECT * FROM  OpenJson('"& TweekedJson & "')WITH  ([Id] float '$.id', [title]  varchar(500) '$.title',[status] varchar(50) '$.status',[horizontal] varchar(500) '$.horizontal',[vertical] varchar(500) '$.vertical',[table_data] nvarchar(max) '$.table_data' as json,[chart_data] nvarchar(max) '$.chart_data' as json,[computed_data] nvarchar(max) '$.computed_data' as json,[chart_type] varchar(100) '$.chart_type',[years] nvarchar(max) '$.years' as json,classification varchar(1000) '$.classification.name',segments nvarchar(max) '$.segments' as json,regions nvarchar(max) '$.regions' as json,table_code varchar(1000) '$.table_code',table_heading varchar(6000) '$.table_heading',table_title  varchar(1000) '$.table_title',table_footer varchar(1000) '$.table_footer',data_inerpretation varchar(1000) '$.data_interpretation',image_url varchar(200) '$.image_url',[_links] nvarchar(max) '$._links.details' ) where (table_code like 'WRD%' or table_code like 'USA%' or table_code like 'EUR%') order by id;"
APIQuery="SELECT * FROM  OpenJson('"& TweekedJson & "')WITH  ([Id] float '$.id', [title]  varchar(500) '$.title',[status] varchar(50) '$.status',[horizontal] varchar(500) '$.horizontal',[vertical] varchar(500) '$.vertical',[table_data] nvarchar(max) '$.table_data' as json,[chart_data] nvarchar(max) '$.chart_data' as json,[computed_data] nvarchar(max) '$.computed_data' as json,[chart_type] varchar(100) '$.chart_type',[years] nvarchar(max) '$.years' as json,classification varchar(1000) '$.classification.name',segments nvarchar(max) '$.segments' as json,regions nvarchar(max) '$.regions' as json,table_code varchar(1000) '$.table_code',table_heading varchar(6000) '$.table_heading',table_title  varchar(1000) '$.table_title',table_footer varchar(1000) '$.table_footer',data_inerpretation varchar(1000) '$.data_interpretation',image_url varchar(200) '$.image_url',[_links] nvarchar(max) '$._links.details' ) where table_code in ('WRD-MA-R','WRD-RPCF-R','WRD-HR-R','WRD-PBT-R','EUR-RPCF-R','EUR-HR-R','EUR-PBT-R')  order by id;"

''USA-RPCF-ST    USA-HR-ST:     USA-PBT-ST:      EUR-RPCF-ST: EUR-HR-ST: EUR-PBT-ST:
'response.write APIQuery & "<br>"
'response.end
Set MyCon = Server.CreateObject("ADODB.Connection")
MyCon.Open Datasource12
Set RSInfoJSON1 = Server.CreateObject("ADODB.Recordset")
	RSInfoJSON1.Open APIQuery, MyCon
If Not RSInfoJSON1.EOF Then
	classification=RSInfoJSON1("classification")
end if
set RSInfoJSON1=nothing
if classification <>"" then
	condstr=",'USA-RPCF-ST:" &classification & "','USA-HR-ST:" & classification & "','USA-PBT-ST:" & classification &"','EUR-RPCF-ST:" & classification & "','EUR-HR-ST:"&classification & "','EUR-PBT-ST:" & classification & "'"
	orderby1="when table_code ='USA-RPCF-ST:" & classification &"' then 4 when table_code ='USA-HR-ST:" & classification &"' then 5  when table_code ='USA-PBT-ST:" & classification &"' then 6 when table_code ='EUR-RPCF-ST:" & classification &"' then 10 when table_code ='EUR-HR-ST:" & classification &"' then 11 when table_code ='EUR-PBT-ST:" & classification &"' then 12 else table_code end"
else
	condstr=""
end if
orderby="order by CASE  when table_code ='WRD-MA-R' then 0 when table_code ='WRD-RPCF-R' then 1 when table_code ='WRD-HR-R' then 2 when table_code ='WRD-PBT-R' then 3 when table_code ='EUR-RPCF-R' then 7 when table_code ='EUR-HR-R' then 8 when table_code ='EUR-PBT-R' then 9"
''response.write condstr & "kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
APIQuery="SELECT * FROM  OpenJson('"& TweekedJson & "')WITH  ([Id] float '$.id', [title]  varchar(500) '$.title',[status] varchar(50) '$.status',[horizontal] varchar(500) '$.horizontal',[vertical] varchar(500) '$.vertical',[table_data] nvarchar(max) '$.table_data' as json,[chart_data] nvarchar(max) '$.chart_data' as json,[computed_data] nvarchar(max) '$.computed_data' as json,[chart_type] varchar(100) '$.chart_type',[years] nvarchar(max) '$.years' as json,classification varchar(1000) '$.classification.name',segments nvarchar(max) '$.segments' as json,regions nvarchar(max) '$.regions' as json,table_code varchar(1000) '$.table_code',table_heading varchar(6000) '$.table_heading',table_title  varchar(1000) '$.table_title',table_footer varchar(1000) '$.table_footer',data_inerpretation varchar(1000) '$.data_interpretation',image_url varchar(200) '$.image_url',[_links] nvarchar(max) '$._links.details' ) where table_code in ('WRD-MA-R','WRD-RPCF-R','WRD-HR-R','WRD-PBT-R','EUR-RPCF-R','EUR-HR-R','EUR-PBT-R'" & condstr & ") "  & orderby & orderby1
'response.write APIQuery
'response.end
Set RSInfoJSON = Server.CreateObject("ADODB.Recordset")
RSInfoJSON.Open APIQuery, MyCon
	%>	


<%
GetValNxt=1

			If Not RSInfoJSON.EOF Then
				Do While not RSInfoJSON.EOF	%>				
					 <div class="page_full">
					 <!-- PAGE HEADER STARTS -->
							<%pn=pn+1%>
							
							<!-- PAGE HEADER ENDS-->
					<div class="w-100">
					<%if GetValNxt=1 then%>
						<h3 class="text-center fifth_color " style="font-size:21px;"  id="datatemplates">DATA TEMPLATES</h3><br>
					<%end if
					response.write   "<p>" & RSInfoJSON("data_inerpretation") & "</p> " & " <p class='font-weight-bold'>TABLE: "& RSInfoJSON("title")& "</p>"
					response.write "<div class='w-100'><table class='table-bordered dtable' cellspacing='0' cellpadding='0'>"  & replace(replace(replace(replace(replace(replace(replace(replace(replace(RSInfoJSON("table_data"),"[[""","<thead><tr class='table-header'><th>"),"""],[""","</th></tr><tbody><tr><td>"),""",""","</th><th>"),"],[""","</tr><td>"),""",","</td><td>"),"]]","</td></tr></tbody></table>"),",","</td><td>"),"],[""Total"",","</td></tr><tr class='table-footer'><td>TOTAL</td><td>"),"\u2591","&#9617;") & "</div>"
									response.write "<div class='table-message-note'>" & RSInfoJSON("table_footer") & "</div><br><div class='table-message-note text-center'><img src='" & RSInfoJSON("image_url") & "'></div><br><br>"
					%>
						</div>
					<!-- PAGE FOOTER STARTS -->
							
								
							<!-- PAGE FOOTER ENDS-->
					</div>
					<br>
					<%					
					Set RecChkRS = Nothing
				GetValNxt = GetValNxt + 1
				RSInfoJSON.MoveNext
				loop
			end if%>

<%		
''response.write GetValNxt	
'Load JSON string
''oJSON.loadJSON(TweekedJson)


	

'response.end	
'on error resume next
			
'Get single value

set MyCon = Nothing
set objXML = Nothing
else


response.write "Please enter MCP/NT Code."

end if

'Return json string
''Response.Write oJSON.JSONoutput()
%>