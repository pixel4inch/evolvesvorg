<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Dim GetExpMsg
	GetExpMsg = ""
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		

	''RecChkSQL = "SELECT * FROM Evolv_Program_Details WHERE Email ='"&trim(request("email"))&"' and Program_Page='"&trim(request("page_source"))&"'" 
	RecChkSQL = "SELECT * FROM Evolv_Program_Details WHERE Email ='"&trim(request("email"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
      	 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into Evolv_Program_Details ([First_Name],[Last_Name],[Company],[Title],[Email],[Phone],[Login_Email],[Login_Date],[Status],[CompanyURL],[Program_Page]) VALUES ('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vcompany"))&"','"&trim(request("vtitle"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vemail"))&"',GETDATE(),'Y','"&trim(request("vcompanyURL"))&"','"&trim(request("page_source"))&"')" 
		 MyCon.Execute InsertSQL
		 ''response.write InsertSQL
		 ''response.end
		 GetExpMsg = "Program Details Sign-up added successfully. Thank you"
	else
		GetExpMsg = "Program Details Sign-up already exists. Thank you "
	End If	
	set MyCon = Nothing		
	response.write GetExpMsg
%>