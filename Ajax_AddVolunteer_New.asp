
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1		
	
	RecChkSQL = "SELECT * FROM Evolv_Volunteer WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	dim getMessageDisp
	getMessageDisp = ""
	If RecChkRS.EOF Then      	
				 
		 InsertSQL = "Insert into Evolv_Volunteer([First_Name],[Last_Name],[Email],[Mobile],[LinkedInLink],[Location],[Annual_Internship_Inperson],[Annual_Internship_Virtual],[Summer_Internship_Inperson],[Summer_Internship_Virtual],[EVOLVE_2024_Worlwide],[EVOLVE_2024_Annual],[SubmittedDate],[loginId],[Status],[Volunteer_Page])VALUES('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vlnkedin"))&"','"&trim(request("vlocation"))&"','"&trim(request("vchkAinperson"))&"','"&trim(request("vchkAVirtual"))&"','"&trim(request("vchkSinperson"))&"','"&trim(request("vchkSVirtual"))&"','"&trim(request("vchkAroadshow"))&"','"&trim(request("vchkSroadshow"))&"',GETDATE(),'"&session("STcode")&"','Y','"&trim(request("page_source"))&"')" 
		 MyCon.Execute InsertSQL
		 getMessageDisp = "ADD" '"Thank you for applying. We will respond by email within 3-4 business days."
	Else	
		InsertSQL = "UPDATE Evolv_Volunteer SET First_Name='"&trim(request("vfirst_name"))&"',Last_Name='"&trim(request("vlast_name"))&"',Mobile = '"&trim(request("vphone"))&"',LinkedInLink = '"&trim(request("vlnkedin"))&"',[Annual_Internship_Inperson] = '"&trim(request("vchkAinperson"))&"',[Annual_Internship_Virtual] = '"&trim(request("vchkAVirtual"))&"',[Summer_Internship_Inperson] = '"&trim(request("vchkSinperson"))&"',[Summer_Internship_Virtual] = '"&trim(request("vchkSVirtual"))&"',[EVOLVE_2024_Worlwide] = '"&trim(request("vchkAroadshow"))&"',[EVOLVE_2024_Annual] = '"&trim(request("vchkSroadshow"))&"',[SubmittedDate] = getdate(),[loginId] = '"&session("STcode")&"',[Status] = 'Y',[Volunteer_Page] = '"&trim(request("page_source"))&"' where Email ='"&trim(request("vemail"))&"'"
		MyCon.Execute InsertSQL
		getMessageDisp = "UPDATE" '"Thank you for applying. We have your registration already. We will respond by email soon."		
	End If	
	'set MyCon = Nothing		
	response.write getMessageDisp
%>