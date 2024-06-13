<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4
		
	
	RecChkSQL = "SELECT * FROM Evolv_Contacts WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
		
		 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into Evolv_Contacts([First_Name],[Last_Name],[Email],[Phone],[Message],[LoginID],[Updated_Date],[Status],[Title],[Company],[Page_Source])VALUES ('"&trim(request("vfrist_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vmessage"))&"','"&session("STcode")&"',GETDATE(),'Y','"&trim(request("vtitle"))&"','"&trim(request("vcompany"))&"','"&trim(request("page_source"))&"')" 
		 MyCon.Execute InsertSQL
		
		
	
		
	End If
	
	set MyCon = Nothing
		
	''response.write InsertSQL
%>