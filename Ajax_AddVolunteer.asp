<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	
	RecChkSQL = "SELECT * FROM Evolv_Volunteer WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	dim getMessageDisp
	getMessageDisp = ""
	If RecChkRS.EOF Then      	
		 '''INSERT DATA INTO Evolv_Volunteer		 
		 InsertSQL = "Insert into Evolv_Volunteer([First_Name],[Last_Name],[Email],[Mobile],[LinkedInLink],[Location],[Will_volunteer_virtually],[Will_volunteer_inperson],[Evolv_Kickoff_B20_Roadshow],[Evolv_Annual_Tech_Summit],[G20_B20_Summit_2023],[SubmittedDate],[loginId],[Status],[Volunteer_Page])VALUES('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vlnkedin"))&"','"&trim(request("vlocation"))&"','"&trim(request("vchkwillvolunteerVirtual"))&"','"&trim(request("vchkwillvolunteerinperson"))&"','"&trim(request("vchkroadshow"))&"','"&trim(request("vchktechsummit"))&"','"&trim(request("vchkg20Summit"))&"',GETDATE(),'"&session("STcode")&"','Y','"&trim(request("page_source"))&"')" 
		 response.write InsertSQL
		 response.end
		 MyCon.Execute InsertSQL
		 getMessageDisp = "Thank you for applying. We will respond by email within 3-4 business days."
	Else	
		InsertSQL = "UPDATE Evolv_Volunteer SET First_Name='"&trim(request("vfirst_name"))&"',Last_Name='"&trim(request("vlast_name"))&"',Mobile = '"&trim(request("vphone"))&"',LinkedInLink = '"&trim(request("vlnkedin"))&"',Will_volunteer_virtually='"&trim(request("vchkwillvolunteerVirtual"))&"',Will_volunteer_inperson='"&trim(request("vchkwillvolunteerinperson"))&"',Evolv_Kickoff_B20_Roadshow='"&trim(request("vchkroadshow"))&"',G20_B20_Summit_2023='"&trim(request("vchkg20Summit"))&"',SubmittedDate=GETDATE() where Email ='"&trim(request("vemail"))&"'"
		MyCon.Execute InsertSQL
		getMessageDisp = "Thank you for applying. We have your registration already. We will respond by email soon."		
	End If	
	set MyCon = Nothing		
	response.write InsertSQL
%>