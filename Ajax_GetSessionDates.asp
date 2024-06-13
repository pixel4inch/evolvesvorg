   
	<!--#include file="ADOVBS.asp"-->
<%
	
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1
	
	
	RecChkSQL="select id,event_title,Event_StartDate,DATEDIFF(day,Event_StartDate,Event_EndDate)+1 as eDays from event_Details where event_status='Y' and id ="&trim(request("vID")) 	
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	EventDays=RecChkRS("eDays")
	EventStart=RecChkRS("Event_StartDate")
	
	Dim strOptSession
	strOptSession ="<select id='OptSession' name='OptSession' class='form-control'>"
	'If Not RecChkRS.EOF Then
	For i = 0 To EventDays-1
		 eventdate=dateadd("d",i,FormatDateTime(EventStart,0))
		 strOptSession = strOptSession &  "<option value="&eventdate&">"&eventdate&"</option>"
	next
	
	
	'End If
	strOptSession = strOptSession & "</select>"
	set MyCon = Nothing
	response.write strOptSession
%>