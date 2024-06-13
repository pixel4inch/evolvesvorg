<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1
	Dim ShowMessage
	ShowMessage = ""
	RecChkSQL = "SELECT * FROM Evolv_UserRegistration WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	If RecChkRS.EOF Then			
		 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "INSERT INTO [dbo].[Evolv_UserRegistration]([First_Name],[Last_Name],[Designation],[Company],[Email],[Password],[Website],[linkedIn],[Twitter],[Youtube],[Domain],[login_User],[Login_date],[Status],[Company_URL],[Primary],[Relevent],[Facebook],[LoginDomain],[Check_Social],[Social_LinkedIn],[Social_Twitter],[Social_Facebook],[Social_Instagram],[Social_YouTube],[source_type],[image_path],[Annual_Speaking_Engagements],[Future_Speaking_Interest],[influencer_categories_represents_you],[Agree_Evolv_Program]) values('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vdesignation"))&"','"&trim(request("vcompany"))&"','"&trim(request("vemail"))&"','"&trim(request("vPassword"))&"','"&trim(request("Website"))&"','"&trim(request("vLinkedIn"))&"','"&trim(request("vTwitter"))&"','"&trim(request("vYoutube"))&"','"&trim(request("Domain"))&"','"&session("STcode")&"',GETDATE(),'Y','"&trim(request("vWebsite"))&"','"&trim(request("vSeledprimary"))&"','"&trim(request("vSeledRelevent"))&"','"&trim(request("vFacebook"))&"','"&trim(request("vLoginDomain"))&"','"&trim(request("vcheck_social"))&"','"&trim(request("vlinkedIn_engage"))&"','"&trim(request("vtwitter_engage"))&"','"&trim(request("vfacebook_engage"))&"','"&trim(request("vinstagram_engage"))&"','"&trim(request("vyoutube_engage"))&"','"&trim(request("vsource_type"))&"','/EvolvImages/"&trim(Trim(session("imgPath")))&"','"&trim(request("vAnnual_Speaking_Engagements"))&"','"&trim(request("vFuture_Speaking_Interest"))&"','"&trim(request("vinfluencer_categories_represents_you"))&"','"&trim(request("checkbox1_check"))&"')" 
		 MyCon.Execute InsertSQL		
		 ShowMessage = "Thank you. We will respond by email within 3-4 business days."		
		 ''response.write InsertSQL		 
		 ''response.end
	Else	
		'insSQL = "INSERT INTO Domain_Reports(code,Domain_Name)VALUES('"&request("vcode")&"','"&request("vdomain")&"')"
		'con.Execute insSQL
		ShowMessage = "sign-up already exists"
	End If	
	set MyCon = Nothing		
	response.write ShowMessage
%>