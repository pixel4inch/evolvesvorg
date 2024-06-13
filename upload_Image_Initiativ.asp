 <!--#include file="upload.asp"-->
<!--include file="ASPIncludes/DBopen.asp"-->
<!--include file="ADOVBS.asp"-->


<%
	''myRID = trim(request("RID"))
	''Response.write(myRID)
	''Response.end
	Dim oFS, oF
	Set oFS = Server.CreateObject("Scripting.FileSystemObject")
	''session("UPath")  = server.MapPath("../ContractorsImages")
	session("UPath")  = server.MapPath("EvolvImages")
	
	''If Not oFS.FolderExists(server.MapPath("EmployeeImages")&"/" & trim(myRID)) Then
		''Set oF = oFS.CreateFolder(server.MapPath("EmployeeImages")&"/" & trim(myRID))
		''Set oF = Nothing
	''End If
	''Set oFS = Nothing
    ' Response.write(session("UPath"))
    ' Response.end
	dim myRID,Flname,myvalue,btnval,myFileType,FileExtention,myNewFileName
	myvalue=0
	
	fileN=""
	
	Dim Uploader, File
	Set Uploader = New FileUploader
	' This starts the upload process
	Uploader.Upload()


	' Check if any files were uploaded
	IF Uploader.Files.Count = 0 Then
		Response.Write "File(s) not uploaded."
	Else
	' Loop through the uploaded files
		For Each File In Uploader.Files.Items
			''' Check where the user wants to save the file
			''' check the file size (File.FileSize)
			''' file type (File.ContentType)	
			''' if File.FileSize<500 then
			     myFileType = File.ContentType
				fileN=fileN & "InitiativE_" & File.FileName
				 FileExtention = Mid(File.FileName, InStrRev(File.FileName,".") + 1)
                FileNameLessExt = Left(File.FileName, InStrRev(File.FileName, "."))
				myNewFileName = fileN&"."&FileExtention
				''Response.write(session("UPath")&"\"&File.FileName & "<BR>")
				''Response.write(fileN & "<BR>")				
               ''  Response.End
             ''   Dim objFso  
				Set objFso= CreateObject("Scripting.FileSystemObject")  

				File.SaveToDisk session("UPath")

				If objFso.FileExists(session("UPath")&"\"&fileN) then
					 objFso.DeleteFile session("UPath")&"\"&fileN
				End If
                  
				  objFso.MoveFile session("UPath")&"\"&File.FileName, session("UPath")&"\"&fileN
				 ''& "-" & trim(myRID)  ''Server.MapPath("User_Files/")
				session("intiativeimgPath")=fileN
				
				''


				

		Next
			Response.Redirect("Register_new.asp")
			
	End If	
%>
	 