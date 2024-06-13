
	<!--#include file="ADOVBS.asp"-->
<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1

	RecChkSQL = "select * from event_Details WHERE event_title ='"&trim(request("vtxtEventName"))&"'"    
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If Not RecChkRS.EOF Then		
		
      	 updateSQL = "UPDATE event_Details SET Event_Desription ='"&trim(request("vtxtEvent_Desc"))&"',Event_StartDate ='"&trim(request("Event_StartDate"))&"',Event_EndDate ='"&trim(request("Event_EndDate"))&"'  WHERE event_title ='"&trim(request("vtxtEventName"))&"'"
		 MyCon.Execute updateSQL

	else
		 
		InsertSQL = "INSERT INTO [dbo].[Event_Details]([Event_Title],[Event_Desription],[Event_StartDate],[Event_EndDate],[Event_status])VALUES('"&trim(request("vtxtEventName"))&"','"&trim(request("vtxtEvent_Desc"))&"','"&trim(request("vtxtEvent_SDate"))&"','"&trim(request("vtxtEvent_EDate"))&"','Y')"           
		MyCon.Execute InsertSQL
		
	End If
	set MyCon = Nothing
	''response.write updateSQL
%>