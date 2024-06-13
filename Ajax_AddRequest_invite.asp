<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="eadminvolv/ASPIncludes/sendemail.asp"-->
<%
	Dim GetExpMsg
	GetExpMsg = ""
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	'' trim(trim(Request.ServerVariables("HTTP_REFERER")))
	RecChkSQL = "SELECT * FROM Evolv_Request_invite WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
      	 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into Evolv_Request_invite (First_Name, Last_Name, Linkedin, Position, Company, Email, Country, Login_ID, created_Date, Status, Source_Page, Source_Type) VALUES ('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vLinkedin"))&"','"&trim(request("vPosition"))&"','"&trim(request("vCompany"))&"','"&trim(request("vEmail"))&"','"&trim(request("vCountry"))&"','',GETDATE(),'Y','"& trim(session("InfCode"))&"','"&trim(request("vInviteType"))&"')" 
		 MyCon.Execute InsertSQL
			'''response.write 	InsertSQL
			'''response.end	 
		 GetExpMsg = "Added successfully. Thank you"
	else
		GetExpMsg = "Already exists. Thank you "
	End If
	''' Seesion variable
	session("GeteMail") = trim(request("vemail"))
	set MyCon = Nothing
	Dim GetUserType
	GetUserType = 0
	'''trim(request("vInviteType"))
	If trim(request("vInviteType"))="1" Then
		GetUserType = 1
		'''' SEND AN EMAIL
		UserMSG = UserMSG &"<table cellpadding=0 cellspacing=0 border=0><tr><td>Greetings " & trim(request("vfirst_name")) & ",</td></tr>"
		UserMSG = UserMSG &"<tr><td>&nbsp;</td></tr>"
		UserMSG = UserMSG &"<tr><td>You`re confirmed. We will see you on 29th. Thank you.</td></tr>" 
		UserMSG = UserMSG &"<tr><td>&nbsp;</td></tr>"
		UserMSG = UserMSG &"<tr><td>Ram K Reddy.</td></tr>"
		
		UserMSG2 = UserMSG2 &"<table cellpadding=0 cellspacing=0 border=0><tr><td>New Confirmation for EVOLV 2023 KICKOFF </td></tr>"
		UserMSG2 = UserMSG2 &"<tr><td>&nbsp;</td></tr>"
		UserMSG2 = UserMSG2 &"<tr><td>First Name: " & trim(request("vfirst_name")) & "</td></tr>" 
		UserMSG2 = UserMSG2 &"<tr><td>Last Name: " & trim(request("vlast_name")) & "</td></tr>" 
		UserMSG2 = UserMSG2 &"<tr><td>Position: " & trim(request("vPosition")) & "</td></tr>" 
		UserMSG2 = UserMSG2 &"<tr><td>Company: " & trim(request("vCompany")) & "</td></tr>" 
		UserMSG2 = UserMSG2 &"<tr><td>Email: " & trim(request("vEmail")) & "</td></tr>" 
		UserMSG2 = UserMSG2 &"<tr><td>CODE: " & trim(session("InfCode")) & "</td></tr>" 
		UserMSG2 = UserMSG2 &"<tr><td>&nbsp;</td></tr>"
		UserMSG2 = UserMSG2 &"<tr><td>Ram K Reddy.</td></tr>"
		
		client = trim(request("vEmail"))
		fromAdmin = "ram.reddy@evolv.cc"
		
		subject_line = "CONFIRMED - EVOLV 2023 KICKOFF B20 2023 ROADSHOW"
		subject_line2 = trim(request("vfirst_name")) &" "&trim(request("vlast_name"))&" - REGISTRY EVOLV 2023 KICKOFF"
		MessageBody = trim(UserMSG)
		'' to client
		call sendEmail_GodaddyHTML(fromAdmin,client,subject_line,MessageBody)
		'' to admin
		call sendEmail_GodaddyHTML(client,fromAdmin,subject_line2,UserMSG2)
		
		''response.write GetUserType
		
	else
		GetUserType = trim(request("vInviteType"))
		''response.write GetUserType
	End If
	
	response.write GetUserType
%>