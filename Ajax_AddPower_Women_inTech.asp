<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Dim GetExpMsg
	GetExpMsg = ""
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
 '' trim(trim(Request.ServerVariables("HTTP_REFERER")))
  RecChkSQL = "SELECT * FROM Evolv_Power_Women_inTech WHERE Email ='"&trim(request("vEmail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
      	 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into Evolv_Power_Women_inTech (First_Name, Last_Name, Linkedin, Position, Company, Email, Country, I_know_the_nominee, Explain_is_deserving, Login_ID, created_Date, Status, Source_Page,Source_Type) VALUES ('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vLinkedin"))&"','"&trim(request("vPosition"))&"','"&trim(request("vCompany"))&"','"&trim(request("vEmail"))&"','"&trim(request("vCountry"))&"','"&trim(request("vI_know_the_nominee"))&"','"&trim(request("vExplain_is_deserving"))&"','',GETDATE(),'Y','"& trim(request("vSource_Page"))&"','"&trim(request("vSource_Type"))&"')"  
		 MyCon.Execute InsertSQL
			'''response.write 	InsertSQL
			'''response.end	 
		 GetExpMsg = "Added successfully. Thank you"
	else
		GetExpMsg = "Already exists. Thank you "
	End If	
	set MyCon = Nothing		
	response.write GetExpMsg
%>