   
	<!--#include file="ADOVBS.asp"-->
<%
	
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1
	
	RecChkSQL = "select  * from Event_Sessions WHERE Event_id ="&trim(request("vID"))  
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	Dim strOptSession
      strOptSession ="<table class='table table-bordered w-100 mx-auto'>"
	  strOptSession = strOptSession &"<thead><tr><th>Sno</th><th>Session</th><th>Session Date</th><th>Session Start Time</th><th>Session End Time</th></tr></thead><tbody class='table-group-divider'>"
	
	Do While Not RecChkRS.EOF
		strOptSession = strOptSession & "<tr><td>"&RecChkRS(0)&"</td><td>"&RecChkRS(2)&"</td><td>"&RecChkRS(3)&"</td><td>"&RecChkRS(4)&"</td><td>"&RecChkRS(5)&"</td></tr>"		
	    RecChkRS.MoveNext
	Loop
	strOptSession = strOptSession & "</tbody></table>"
	set MyCon = Nothing
	response.write strOptSession
%>