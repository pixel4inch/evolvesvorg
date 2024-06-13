
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1
		
	
	RecChkSQL = "SELECT * FROM Company_Investor_Details WHERE [Company_Name] ='"&trim(request("vCompany"))&"' and Email ='"&trim(request("vEmail"))&"' and Investor_Name ='"&trim(request("vinvestor_firm_name"))&"' and Investor_Amount ='"&trim(request("vInvestor_amount"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, Datasource1	
	
	If RecChkRS.EOF Then		
		
		 '''INSERT DATA INTO Companies_Removed_MCPs
		
		 InsertSQL = "INSERT INTO [Company_Investor_Details]([Sno],[Company_Name],[Email],[Investor_Name],[Investor_Amount])VALUES ("&trim(request("vSno"))&",'"&trim(request("vCompany"))&"','"&trim(request("vEmail"))&"','"&trim(request("vinvestor_firm_name"))&"','"&trim(request("vInvestor_amount"))&"')" 
		 MyCon.Execute InsertSQL
		
	End If
	
	set MyCon = Nothing
		
	response.write InsertSQL
%>