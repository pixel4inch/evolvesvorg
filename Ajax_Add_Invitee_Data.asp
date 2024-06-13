<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	dim Invite_code
	Invite_code = trim(request("vInvite_code"))
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	
								
	RecChkSQL = "SELECT * FROM DeepTech_Event_CODES WHERE CODES ='"&trim(Invite_code)&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon
	
	If not RecChkRS.EOF Then
		 UpdateSQL = "UPDATE DeepTech_Event_CODES set [SOURCE_ID]='"&trim(request("vInvite_Type"))&"',[STATUS]='D',[DATE_ADDED]=getdate(),[FIRST_NAME]='"&trim(request("vFName"))&"',[LAST_NAME]='"&trim(request("vLName"))&"',[EMAIL_ID]='"&trim(request("vEmail_ID"))&"',[WEBSITE]='"&trim(request("vWebsite"))&"' where CODES ='"&trim(Invite_code)&"'" 
		 MyCon.Execute UpdateSQL
		 getMessage = "Invitee Added Succesfully"
	else
		getMessage = "Code does not exists"	
	End If
	set MyCon = Nothing
		
	response.write getMessage
%>