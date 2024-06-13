<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="ASPIncludes/sendemail.asp"-->
<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1	

    ''dim membershipType
	'membershipType = "CORPORATE"
	
	'If trim(request("vMembershipType"))<>"" Then
		'membershipType = trim(request("vMembershipType"))
	'End If
	
	RecChkSQL = "SELECT * FROM Evolv_Volunteer WHERE Email ='"&trim(request("vEmail"))&"' " 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	'dim getMessage
	'getMessage = ""
	
	'dim GTDesignation, GTCompany
	'GTDesignation = trim(request("vDesignation"))
	'GTCompany = trim(request("vCompany"))
	
	'dim ParticipantBio
	'ParticipantBio = replace(trim(request("vParticipantBio")),"'","`")
	
	If RecChkRS.EOF Then		
		 InsertSQL = "INSERT INTO [dbo].[Evolve_Angels] ([First_Name],[Last_Name],[Email],[Phone],[LinkedIn],[Location],[CreatedDate],[Status]) VALUES ('"&trim(request("vFirst_Name"))&"','"&trim(request("vLast_Name"))&"','"&trim(request("vEmail"))&"','"&trim(request("vPhone"))&"','"&trim(request("vLinkedin"))&"','"&trim(request("vlocation"))&"',getdate(),'Y')" 
		 MyCon.Execute InsertSQL
		 ''getMessage = membershipType &" Details Added Successfully. Thank you"
		' getMessage =  "Thank you! Confirmation Email Sent. Check the spam folder if you don't see it."
		 
		 '' Mail Sending Code
			''fromClient = "prakash.kedia@cii.in"
			'otherClient = "prakash.kedia@cii.in"
			'client = trim(request("vemail"))
			''subject_line= "Confirmed to attend Evolv NextTech on August 24, 2023"  ''&"<br>"
			'subject_line1= "Company Special Invitee Registry - "&trim(request("vFirst_Name"))&" "&trim(request("vLast_Name"))&""
			''MessageBody= "<pre>Dear "&trim(request("vFirst_Name"))&" "&trim(request("vLast_Name"))&",<br><br>You are now confirmed to attend Evolv NextTech on August 24, 2023. More program details will follow in a few days.<br><br>We look forward to seeing you.<br><br>Best Regards,<br><br>Dr. Prakash Kedia, Ph.D.<br>Logistics Lead<br>Evolv NextTech 2023<br>Presented by the Confederation of Indian Industry<br>Email: prakash.kedia@cii.in<br>Mobile # +91 98105 01100</pre>"
			'MessageBody1= "<pre>First Name: "&trim(request("vFirst_Name"))&"<br/>Last Name: "&trim(request("vlast_name"))&"<br>Designation: "&trim(request("vDesignation"))&"<br>Company: "&trim(request("vCompany"))&"<br>Email: "&trim(request("vemail"))&"<br></pre>"
			'call sendEmail_GodaddyHTML(fromClient,client,subject_line,MessageBody)
			'call sendEmail_GodaddyHTML(client,otherClient,subject_line1,MessageBody1)
	else
		''getMessage = membershipType &" Details already exists. Thank you"
		'getMessage = "Special Invitee Registration Details Already Exists. A Confirmation Email Was Sent. Check the spam/junk folder if you don`t see it. Thank you"
	End If
	
	set MyCon = Nothing
		
	'response.write getMessage
%>