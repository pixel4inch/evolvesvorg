<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	dim Invite_code, Invite_type
	Invite_code = trim(request("vInvite_code1"))
	Invite_type = trim(request("vInvite_type"))
	
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource4		
	
	If trim(Invite_Type)="" Then
		Invite_Type = "1"
	End If
	''Invite_Type
	RecChkSQL = "SELECT * FROM Evolv_Invite_Company_Options WHERE Invite_Code ='"&trim(Invite_code)&"'" 
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
		 InsertSQL = "INSERT INTO Evolv_Invite_Company_Options (["&trim(request("vSourceType"))&"],[Invite_code],[Date_Added],[Last_Date_Updated],[Status],[Invite_type]) VALUES ('"&trim(request("vCheckbox_check"))&"','"&trim(Invite_code)&"',getdate(),getdate(),'Y','"&trim(Invite_type)&"')" 
		 MyCon.Execute InsertSQL
		 getMessage = "Data Added Succesfully"
	else
		 UpdateSQL = "UPDATE Evolv_Invite_Company_Options set ["&trim(request("vSourceType"))&"]='"&trim(request("vCheckbox_check"))&"',[Last_Date_Updated]=getdate(),Invite_type='"&Invite_type&"' where Invite_Code ='"&trim(Invite_code)&"'" 
		 MyCon.Execute UpdateSQL
		 getMessage = "Date Updated Successfully"
	End If
	
	set MyCon = Nothing
		
	response.write getMessage
%>