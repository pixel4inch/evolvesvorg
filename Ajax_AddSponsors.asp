<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Dim GetExpMsg
	GetExpMsg = ""
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
 '' trim(trim(Request.ServerVariables("HTTP_REFERER")))
  RecChkSQL = "SELECT * FROM Evolv_Sponsors WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
      	 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into Evolv_Sponsors ([First_Name],[Last_Name],[Position],[Company],[Email],[Phone],[Login_ID],[Updated_Date],[Status],[Request_Sponsorship_Details],[Sponsor_Page]) VALUES ('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vtitle"))&"','"&trim(request("vcompany"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vemail"))&"',GETDATE(),'Y','"&trim(request("vcheckSponsor"))&"','"& trim(request("page_source"))&"')" 
		 MyCon.Execute InsertSQL
			'''response.write 	InsertSQL
			'''response.end	 
		 GetExpMsg = "Sponsorship Sign-up added successfully. Thank you"
	else
		GetExpMsg = "Sponsorship Sign-up already exists. Thank you "
	End If	
	set MyCon = Nothing		
	response.write GetExpMsg
%>