<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4
		
	
	RecChkSQL = "SELECT * FROM Evolv_Media WHERE Email ='"&trim(request("vemail"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
		
      	' updateSQL = "UPDATE InfluencersCompanies SET mcpcodes = CASE WHEN (charindex('"&rvMcpCode&"',mcpcodes,1)>=1) THEN mcpcodes WHEN (charindex('"&request("vMcpCode")&"',mcpcodes,1)>=1) THEN mcpcodes ELSE mcpcodes+'; "&request("vMcpCode")&"' END where filename='"&request("vCpcode")&"'"
		' MyCon.Execute updateSQL

		 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into Evolv_Media([First_Name],[Last_Name],[Position],[Company],[Email],[Phone],[Login_ID],[Updated_Date],[Status],[LinkedInLink],[Page_Source])VALUES ('"&trim(request("vfrist_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vpostion"))&"','"&trim(request("vcompany"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&session("STcode")&"',GETDATE(),'Y','"&trim(request("vLinkedIn"))&"','"&trim(request("page_source"))&"')" 
		 MyCon.Execute InsertSQL
		
		
		'InsertSQL1 = "insert into fba8a4aaadapda.dbo.r2c_logs_Final(mailid, report_code, cp_code, updated_date, cp_status, rec_status) values ('srinivas@strategyr.com','"&trim(request("vMcpCode"))&"', '"&trim(request("vCpcode"))&"',getdate(), 'true', 'D')"
		'MyCon1.Execute InsertSQL1
		
	'Else
	
		'insSQL = "INSERT INTO Domain_Reports(code,Domain_Name)VALUES('"&request("vcode")&"','"&request("vdomain")&"')"
		'con.Execute insSQL
		
	End If
	
	set MyCon = Nothing
		
	'response.write RecChkSQL
%>