
	<!--#include file="ADOVBS.asp"-->
<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1

	RecChkSQL = "select * from Event_Sessions WHERE Event_id ='"&trim(request("vOptEvent"))&"' and Session_name='"&trim(request("vOptSession"))&"'"    
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If Not RecChkRS.EOF Then		
		
      	 updateSQL = "UPDATE Event_Sessions SET Session_name ='"&trim(request("vOptSession"))&"',Session_Date ='"&trim(request("vOptSessionDate"))&"',Session_Start_Time ='"&trim(request("vtxtSession_STime"))&"',Session_End_Time ='"&trim(request("vtxtSession_ETime"))&"',Session_Description=,'"&trim(request("vtxtSession_Desc"))&"' where  Event_id ='"&trim(request("vOptEvent"))&"' and Session_name='"&trim(request("vOptSession"))&"'" 
		 MyCon.Execute updateSQL

	else
		 
		InsertSQL = "INSERT INTO [dbo].[Event_Sessions]([Event_id],[Session_name],[Session_Date],[Session_Start_Time],[Session_End_Time],[Status],[Session_Description])VALUES('"&trim(request("vOptEvent"))&"','"&trim(request("vOptSession"))&"','"&trim(request("vOptSessionDate"))&"','"&trim(request("vtxtSession_STime"))&"','"&trim(request("vtxtSession_ETime"))&"','Y','"&trim(request("vtxtSession_Desc"))&"')"           
		MyCon.Execute InsertSQL
		
	End If
	set MyCon = Nothing
	''response.write updateSQL
%>