<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<%
	Dim GetExpMsg
	GetExpMsg = ""
	Set MyCon = Server.CreateObject("ADODB.Connection")
    MyCon.Open Datasource4		
	
	
	RecChkSQL = "SELECT * FROM Evolv_Recommend_Expert WHERE Nom_Email ='"&trim(request("nemail"))&"' and Expert_Email = '"&trim(request("eemail"))&"'" 
	''response.write "RecChkSQL = "&RecChkSQL
	''response.end
	Set RecChkRS = Server.CreateObject("ADODB.Recordset")
	RecChkRS.Open RecChkSQL, MyCon	
	
	If RecChkRS.EOF Then		
      	 '''INSERT DATA INTO Companies_Removed_MCPs
		 InsertSQL = "Insert into [evolvDB].[evolv_user].[Evolv_Recommend_Expert] ([Nom_Fname],[Nom_Lname],[Nom_LinkedIn],[Nom_Position],[Nom_Company],[Nom_Email],[Expert_Fname],[Expert_Lname],[Expert_Linkedin],[Expert_Position],[Expert_Company],[Expert_Email],[Page_Source],[Added_Date],[Status]) VALUES ('"&trim(request("nfirst_name"))&"','"&trim(request("nlast_name"))&"','"&trim(request("nlinkedin"))&"','"&trim(request("nposition"))&"','"&trim(request("ncompany"))&"','"&trim(request("nemail"))&"','"&trim(request("efirst_name"))&"','"&trim(request("elast_name"))&"','"&trim(request("elinkedin"))&"','"&trim(request("eposition"))&"','"&trim(request("ncompany"))&"','"&trim(request("eemail"))&"','"&trim(request("page_source"))&"',GETDATE(),'Y')" 
		 MyCon.Execute InsertSQL
		'' response.write InsertSQL
		'' response.end
		 GetExpMsg = "Recommendation added successfully. Thank you"
	else
		GetExpMsg = "Recommendation already exists. Thank you "
	End If	
	set MyCon = Nothing		
	response.write GetExpMsg
%>