
<!--#include file="ADOVBS.asp"-->

<%
	Set MyCon = Server.CreateObject("ADODB.Connection")		
    MyCon.Open Datasource1		
	
	RecChkSQL = "SELECT * FROM Evolv_Deep_Tech_ExpertS_Curation WHERE Email ='"&trim(request("vemail"))&"' and Page_Source='"&trim(request("vsource"))&"'"
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	dim getMessageDisp
	getMessageDisp = ""
	If RecChkRS.EOF Then    
	
	InsertSQL = "Insert into [dbo].[Evolv_Deep_Tech_ExpertS_Curation]([First_Name],[Last_Name],[Company],[Email],[Phone],[Linkdin],[Location],[Page_Source],[Updated_Date],[Status])VALUES('"&trim(request("vfirst_name"))&"','"&trim(request("vlast_name"))&"','"&trim(request("vCompany"))&"','"&trim(request("vemail"))&"','"&trim(request("vphone"))&"','"&trim(request("vlinkedInLink"))&"','"&trim(request("vlocation"))&"','"&trim(request("vsource"))&"',GETDATE(),'Y')" 
	MyCon.Execute InsertSQL
		 'getMessageDisp = "ADD" '"Thank you for applying. We will respond by email within 3-4 business days."
	Else	
		InsertSQL = "UPDATE [dbo].[Evolv_Deep_Tech_ExpertS_Curation] SET First_Name='"&trim(request("vfirst_name"))&"',Last_Name='"&trim(request("vlast_name"))&"',Company = '"&trim(request("vCompany"))&"',Phone = '"&trim(request("vphone"))&"',Linkdin = '"&trim(request("vlnkedin"))&"',[Location] = '"&trim(request("vlocation"))&"', Updated_Date=getdate()  WHERE Email ='"&trim(request("vemail"))&"' and Page_Source='"&trim(request("vsource"))&"'"
		MyCon.Execute InsertSQL
		'getMessageDisp = "UPDATE" '"Thank you for applying. We have your registration already. We will respond by email soon."		
	End If	
	'set MyCon = Nothing		
	'response.write getMessageDisp
%>