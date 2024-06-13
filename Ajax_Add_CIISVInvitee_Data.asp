<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="ASPIncludes/sendemail.asp"-->
<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
	MyCon.Open Datasource4
	RecChkSQL = "SELECT * FROM Evolv_VIP_Invite_Registration WHERE Email ='"&trim(request("vemail"))&"' and First_Name='"&trim(request("vfirst_name"))&"' and Last_Name='"&trim(request("vlast_name"))&"' and Invite_Code='"&trim(request("vInvite_code"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	dim getMessage
	getMessage = ""
	If RecChkRS.EOF Then		
			InsertSQL = "INSERT INTO [dbo].[Evolv_VIP_Invite_Registration]([First_Name],[Last_Name],[Designation],[Company_Name],[Email],[Mobile],[LinkedInLink],[SubmittedDate],[Invite_Code],[Status])VALUES('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vdesignation"))&"','"&trim(request("vCompany"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vlinkedInLink"))&"',getdate(),'"&trim(request("vInvite_code"))&"','Y')" 
			MyCon.Execute InsertSQL
			getMessage =  "Thank you! You are Confirmed. Confirmation Email Sent. Check the spam/junk folder if you don't see it."
			'' Mail Sending Code
			fromClient = "reddy@strategyr.com"
			otherClient = "reddy@strategyr.com"
			client = trim(request("vemail"))
			subject_line= "Confirmed to attend Evolv CII STARTUP DELEGATION on November 14 & 15, 2023"  ''&"<br>"
			subject_line1= "Special Invitee Registration for Evolv CII STARTUP DELEGATION on November 14 & 15, 2023 - "&trim(request("vfirst_name"))&" "&trim(request("vlast_name"))&""
			MessageBody= "<pre>Dear "&trim(request("vfirst_name"))&" "&trim(request("vlast_name"))&",<br><br>You are now confirmed to attend Evolv CII STARTUP DELEGATION on November 14 & 15, 2023. <br><br>We look forward to seeing you.<br><br>Best Regards,<br><br>Ram K Reddy<br>Co-Chair, Evolv SV<br>Email: reddy@strategyr.com</pre>"
			MessageBody1= "<pre>Special Invitee Registry - <br/><br/>First Name: "&trim(request("vfirst_name"))&"<br/>Last Name: "&trim(request("vlast_name"))&"<br>Designation: "&trim(request("vdesignation"))&"<br>Company: "&trim(request("vCompany"))&"<br>Email: "&trim(request("vemail"))&"<br><br></pre>"
			call sendEmail_GodaddyHTML(fromClient,client,subject_line,MessageBody)
			''call sendEmail_GodaddyHTML(fromClient,client,subject_line1,MessageBody1)
			call sendEmail_GodaddyHTML(client,otherClient,subject_line1,MessageBody1)
			''Mail Sending Code end
	else
		getMessage = "Special Invitee Registration Details Already Exists. A Confirmation Email Was Sent. Check the spam folder if you don't see it. Thank you"
	End If
	set MyCon = Nothing		
	response.write getMessage
%>