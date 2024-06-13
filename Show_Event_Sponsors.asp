<!DOCTYPE html>
<%@Language="VBScript"%>


<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Evolv - DASHBOARD</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Evolv">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Evolv ">
  <meta name="generator" content="Evolv">
  
  <!-- theme meta -->
  <meta name="theme-name" content="Evolv" />

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css"/>
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css"/>
  <link rel="stylesheet" href="plugins/slick/slick.css"/>
  <link rel="stylesheet" href="plugins/slick/slick-theme.css"/>
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css"/>
  <link rel="stylesheet" href="plugins/aos/aos.css"/>


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet"/>
  <link href="css/custome.css" rel="stylesheet"/>
  <link href="css/phoca-flags.css" rel="stylesheet"/>
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  
  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  
  
<%
Response.flush
Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function

'' for paging
	dim k,rec_per_page
	rec_per_page=33
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp

%>

<style>
.no-list-style, .no-list-style li {
	list-style: none;
}

</style>
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">

<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
	 <header-component></header-component>
<!--============================
=            Top Strip      End   =
=============================-->



<!--================================
=            Page Title            =
=================================-->

<section class="section page-title">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-8  m-auto">
				<!-- Page Title -->
				<div class="section-title mb-3">
				
				<h2>
					
					<%=ucase(trim(request("SrcType")))%> SPONSORS </h2>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12 mx-auto"  >
				<div class="rounded  p-2 bg-white" >
					<div class="row">
						
							<p class="Alp_Display w-100 my-3 "> 
					<a class="<%=SelectedActive(request("SRCWord"),"[0-9]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[0-9]">0-9</a>&nbsp;
                  <a class="<%=SelectedActive(request("SRCWord"),"[A]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[A]">A</a> 
				  <a class="<%=SelectedActive(request("SRCWord"),"[B]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[B]">B</a>
                  <a class="<%=SelectedActive(request("SRCWord"),"[C]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[C]">C</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[D]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[D]">D</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[E]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[E]">E</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[F]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[F]">F</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[G]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[G]">G</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[H]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[H]">H</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[I]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[I]">I</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[J]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[J]">J</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[K]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[K]">K</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[L]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[L]">L</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[M]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[M]">M</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[N]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[N]">N</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[O]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[O]">O</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[P]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[P]">P</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Q]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[Q]">Q</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[R]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[R]">R</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[S]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[S]">S</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[T]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[T]">T</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[U]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[U]">U</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[V]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[V]">V</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[W]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[W]">W</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[X]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[X]">X</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Y]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[Y]">Y</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Z]") %>" href="Show_Event_Sponsors.asp?SrcType=<%=trim(request("SrcType"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>&SRCWord=[Z]">Z</a>
				  		   </p>
					 </div>
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Sponsors</h5>
					 </div-->
							<ul class="no-list-style mb-3 row mx-0 p-0 ">
							<%
							
							Set MyCon = Server.CreateObject("ADODB.Connection")	
									''MyCon.ConnectionTimeout = 12000
									MyCon.Open Datasource13
									MyCon.commandTimeout = 120
									
									Set RSCountry = Server.CreateObject("ADODB.Recordset")								   
									RSCountry.ActiveConnection = MyCon
									RSCountry.CursorType = 3				
									RSCountry.PageSize = cdbl(rec_per_page)									

									''' FirstName,LastName,CompanyName,Title,website
									''' indian_WorldWide_Manager_UL_union_DUPS a, [GIA_MC_PROGRAM].[dbo].[Indian_Unique_First_Name$] b
									''' SqlReports="SELECT  a.FirstName as FirstName,a.LastName as LastName,a.CompanyName,a.Title,a.website FROM indian_WorldWide_Manager_UL_union_DUPS a, [GIA_MC_PROGRAM].[dbo].[Indian_Unique_First_Name$] b where (a.FirstName=b.FirstName) and a.CompanyName is not null and a.Title is not null and a.country<>'pakistan' and a.FirstName is not null and a.LastName is not null  "
									''' indian_managers_UL_FULLNAME
									''' Indian_Names_ALL_List
									''' SqlReports="SELECT  FirstName,LastName,CompanyName,Title,website FROM indian_managers_UL_FULLNAME where CompanyName is not null and Title is not null and country<>'pakistan' and FirstName is not null and LastName is not null  "
									''SqlReports="select distinct [Organization Name],[Organization Name URL] from Startup_People where [Organization Name] is not null"
									SqlReports="select distinct name,image,website,country,image_url from vw_Event_Sponsors_new where [Name] <>'NULL' "
									''SqlReports="select name,image,website,country,image_url from vw_Event_Sponsors_new where [Name] <>'NULL' "
									
									''If Trim(request("Geostr")) <> "" Then
									
                                      '' SqlReports = SqlReports & " and (Geography = '"&Trim(request("Geostr"))&"') "
									''End If 
									If Trim(request("EID")) <> "" Then
									 ''   if  Trim(request("Stgstr"))="50M" then
									''	  SqlReports = SqlReports & " and (funding = '50M+') "
									''	else
										 SqlReports = SqlReports & " and industry_id in ("&Trim(request("EID"))&") "
									 ''   end if
									End If 
									If Trim(request("TxtSearch")) <> "" Then
                                       SqlReports = SqlReports & " and ([Name] like '%"&Trim(request("TxtSearch"))&"%') "
									End If 

									If Trim(request("TxtName")) <> "" Then
                                        SqlReports = SqlReports & " and ([Name] like '%"&Trim(request("TxtName"))&"%') "
									End If 

									'If Trim(request("TxtCompany")) <> "" Then
                                     '   SqlReports = SqlReports & " and (CompanyName like '%"&Trim(request("TxtCompany"))&"%') "
								'	End If 
									''Last_Name LIKE 'A%' LIKE '[A-B]%'
									If Trim(request("SRCWord")) <> "" Then	
										if trim(chkOpt)="uName" then
											SqlReports = SqlReports & " and ([Name] like '"&Trim(request("SRCWord"))&"%') "
										else
											SqlReports = SqlReports & " and ([Name] like '"&Trim(request("SRCWord"))&"%') "										
										end if
									End If
									''limit 100, 200
									Dim LimitSTR
									LimitSTR = ""
									''OFFSET 0 ROWS -- START FROM RECORD
									''FETCH NEXT 30 ROWS ONLY
									If trim(request("Start"))="" then
										LimitSTR = "OFFSET 0 ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY"
									Else
										LimitSTR = "OFFSET "&trim(request("Start"))&" ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY" 
										'''"limit "&trim(request("Start"))&", "&trim(request("E"))
									End If
									if trim(chkOpt)="uName" then
										''SqlReports = SqlReports & " order by CASE WHEN [image] <>'NULL' THEN 1 WHEN [image] is not null THEN 2 WHEN [image]='NULL' THEN 3 ELSE 4 END,[Name] " & LimitSTR
										SqlReports = SqlReports & " order by [image] desc,[Name] " & LimitSTR
									else
										''SqlReports = SqlReports & " order by CASE WHEN [image] <>'NULL' THEN 1 WHEN [image] is not null THEN 2 WHEN [image]='NULL' THEN 3 ELSE 4 END,[Name] " & LimitSTR
										SqlReports = SqlReports & " order by [image] desc,[Name] " & LimitSTR
									end if
									
									''order by CASE WHEN [image] <>'NULL' THEN 1 WHEN [image]='NULL' THEN 2 ELSE 3 END,[Name]
									''response.write "<br><br><br>"&SqlReports
									''response.end
									RSCountry.Open SqlReports
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF
							
							Dim LCImage_Path
							LCImage_Path = ""
							
							LCImage_Path = "https://marketglass.com/"&trim(RSCountry("image"))
							if trim(LCImage_Path) ="" then
								LCImage_Path = trim(RSCountry("image_url"))
							end if
							
							IName=RSCountry("name")
					%>
							
							<li class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 ">
								<div class="col-12 mx-auto border label p-2">
									<div class="d-flex justify-content-between align-items-center">

										<div class="left-block">
											<%
											If trim(RSCountry("image"))<>"NULL" Then%>
											<img src="<%=trim(LCImage_Path)%>" class="img-fluid" border="0">
											<%else
											If trim(RSCountry("image_url"))<>"NULL" Then%>
											<img src="<%=trim(LCImage_Path)%>" class="img-fluid" border="0">
											<%End If
											end if%>
										</div>

										<div class="right-block">
											<div class="title pl-2">
											
												<h2><%=trim(IName)%> </h2>
												<%If trim(RSCountry("country"))<>"NULL" Then%>
												<h3> <%=trim(RSCountry("country"))%></h3>
												<%End If%>
												<%If trim(RSCountry("website"))<>"NULL" Then%>
												<h3> <%=trim(RSCountry("website"))%></h3>
												<%End If%>
											</div>
										</div>
							
									</div>
							
								</div>
							</li>
							<%
							RSCountry.movenext
							wend
							else
							response.write "<li class='col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 '><font color='red'>No Companies Found With this Search</font></li>"
							End If
							set RSCountry = nothing
							
							Dim Start1, StartBack
							If trim(request("Start"))<>"" Then
								Start1 = cint(trim(request("Start")))+33
								If trim(request("Start"))<>0 then
									StartBack = cint(trim(request("Start"))) - 33
								else
									StartBack = 0
								End If
							Else
								Start1 = 33
								StartBack = 0
							End If
							
							If trim(Start1)>=900 Then
								Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
								response.end
							End If
							
							
							%>					
							<div class="w-100" style="display: flex;    justify-content: center;    width: 100%;    padding: 10px;">
								<a class="<%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Event_Sponsors.asp?Start=<%=StartBack%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(request("SRCWord"))%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>" style=" margin: 10px 10px;    font-weight: bold;   font-size: 17px;"><< BACK</a>
								<a class="<%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Event_Sponsors.asp?Start=<%=Start1%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(request("SRCWord"))%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(request("ShowType"))%>&EID=<%=trim(request("EID"))%>" style=" margin: 10px 10px;    font-weight: bold;   font-size: 17px;"> NEXT >> </a>
							</div>				
								
							</ul>
						
					</div>
				</div>




		</div>



		</div>
	
</section>

<!--====  End of Page Title  ====-->


<!--============================
=            Footer       Start   =
=============================-->
	<!--include file="ASPIncludes/footer.asp"-->
	 <footer-component></footer-component>
<!--============================
=            Footer       End   =
=============================-->

  <!-- To Top -->
  <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>
  
  <!-- JAVASCRIPTS -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/slick/slick.min.js"></script>
  <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
  <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
  <script src="plugins/aos/aos.js"></script>
  <!-- google map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgeuuDfRlweIs7D6uo4wdIHVvJ0LonQ6g"></script>
  <script src="plugins/google-map/gmap.js"></script>
  
  <script src="js/script.js"></script>

  <!---scroll animation--->
<script src="./plugins/animated-counter/multi-animated-counter.js"></script>

</body>

</html>