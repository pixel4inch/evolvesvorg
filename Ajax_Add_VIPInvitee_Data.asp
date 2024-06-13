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
			InsertSQL = "INSERT INTO [dbo].[Evolv_VIP_Invite_Registration]([First_Name],[Last_Name],[Designation],[Company_Name],[Email],[Mobile],[LinkedInLink],[Will_Attend_Sessions],[Will_Attend_Banquet],[Spouse_Will_Also_Join],[SFirst_Name],[SLast_Name],[SDesignation],[SCompany_Name],[SEmail],[SMobile],[SLinkedInLink],[SWill_Attend_Sessions],[SWill_Attend_Banquet],[SubmittedDate],[Invite_Code],[Status])VALUES('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vdesignation"))&"','"&trim(request("vCompany"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vlinkedInLink"))&"','"&trim(request("vattendsessions"))&"','"&trim(request("vattendbanquet"))&"','"&trim(request("vexampleCheck1"))&"','"&trim(request("vSfirst_name"))&"','"&trim(request("vSlast_name"))&"','"&trim(request("vSdesignation"))&"','"&trim(request("vSCompany"))&"','"&trim(request("vSemail"))&"','"&trim(request("vSphone"))&"','"&trim(request("vSlinkedInLink"))&"','"&trim(request("vSattendsessions"))&"','"&trim(request("vSattendbanquet"))&"',getdate(),'"&trim(request("vInvite_code"))&"','Y')" 
			MyCon.Execute InsertSQL
			getMessage =  "Thank you! Confirmation Email Sent. Check the spam/junk folder if you don't see it."
			'' Mail Sending Code
			fromClient = "prakash.kedia@cii.in"
			otherClient = "prakash.kedia@cii.in"
			client = trim(request("vemail"))
			subject_line= "Confirmed to attend Evolv NextTech on August 24, 2023"  ''&"<br>"
			subject_line1= "Special Invitee Registration for Evolv NextTech on August 24, 2023 - "&trim(request("vfirst_name"))&" "&trim(request("vlast_name"))&""
			MessageBody= "<pre>Dear "&trim(request("vfirst_name"))&" "&trim(request("vlast_name"))&",<br><br>You are now confirmed to attend Evolv NextTech on August 24, 2023. More program details will follow in a few days.<br><br>We look forward to seeing you.<br><br>Best Regards,<br><br>Dr. Prakash Kedia, Ph.D.<br>Logistics Lead<br>Evolv NextTech 2023<br>Presented by the Confederation of Indian Industry<br>Email: prakash.kedia@cii.in<br>Mobile # +91 98105 01100</pre>"
			MessageBody1= "<pre>Special Invitee Registry - <br/><br/>First Name: "&trim(request("vfirst_name"))&"<br/>Last Name: "&trim(request("vlast_name"))&"<br>Designation: "&trim(request("vdesignation"))&"<br>Company: "&trim(request("vCompany"))&"<br>Email: "&trim(request("vemail"))&"<br><br>Will Attend Sessions: "&trim(request("vattendsessions"))&"<br>Will Attend Banquet: "&trim(request("vattendbanquet"))&"<br><br>Is Spouse Attending: "&trim(request("vexampleCheck1"))&"<br>Spouse First Name: "&trim(request("vSfirst_name"))&"<br/>Spouse Last Name: "&trim(request("vSlast_name"))&"<br>Spouse Will Attend Sessions: "&trim(request("vSattendsessions"))&"<br>Spouse Will Attend Banquet: "&trim(request("vSattendbanquet"))&"<br></pre>"
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