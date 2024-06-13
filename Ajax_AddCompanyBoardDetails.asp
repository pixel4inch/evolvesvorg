<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1
		
	
	RecChkSQL = "SELECT * FROM Company_Board_Details WHERE Company_Name ='"&trim(request("vCompany"))&"' and Email ='"&trim(request("vEmail"))&"' and Company_Board_Person_Name ='"&trim(request("vcompany_board_person_name"))&"' and Company_Board_Company_Name ='"&trim(request("vcompany_board_company_name"))&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
		
	'''INSERT DATA INTO Companies_Removed_MCPs
		
		 InsertSQL = "INSERT INTO [Company_Board_Details]([Sno],[Company_Name],[Email],[Company_Board_Person_Name],[Company_Board_Company_Name]) VALUES ("&trim(request("vSno"))&",'"&trim(request("vCompany"))&"','"&trim(request("vEmail"))&"','"&trim(request("vcompany_board_person_name"))&"','"&trim(request("vcompany_board_company_name"))&"')" 
		 MyCon.Execute InsertSQL
		
	End If
	
	set MyCon = Nothing
		
	response.write InsertSQL
%>