<!DOCTYPE html>

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
  
  <%@Language="VBScript"%>
  
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
<!---====================================
=            Hero Section            =
=====================================--->
<section class="section placekeeper_section theme-8">
  <div class="container">
    <div class="row align-items-center">
     
    </div>
  </div>
</section>
<!--====  End of Hero Section  ====-->


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
					
					<%=ucase(trim(request("SrcType")))%> </h2>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12 mx-auto"  >
				<div class="rounded  p-2 bg-white" >
					<div class="row">
						
							<p class="Alp_Display w-100 my-3 "> 
					
                  <a class="<%=SelectedActive(request("SRCWord"),"[A]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[A]">A</a> 
				  <a class="<%=SelectedActive(request("SRCWord"),"[B]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[B]">B</a>
                  <a class="<%=SelectedActive(request("SRCWord"),"[C]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[C]">C</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[D]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[D]">D</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[E]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[E]">E</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[F]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[F]">F</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[G]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[G]">G</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[H]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[H]">H</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[I]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[I]">I</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[J]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[J]">J</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[K]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[K]">K</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[L]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[L]">L</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[M]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[M]">M</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[N]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[N]">N</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[O]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[O]">O</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[P]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[P]">P</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Q]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Q]">Q</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[R]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[R]">R</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[S]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[S]">S</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[T]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[T]">T</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[U]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[U]">U</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[V]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[V]">V</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[W]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[W]">W</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[X]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[X]">X</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Y]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Y]">Y</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Z]") %>" href="Show_Region_Country_People.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Z]">Z</a>
				  		   </p>
					 </div>
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By People</h5>
					 </div-->
							<ul class="no-list-style mb-3 row mx-0 p-0 ">
							<%
							dim TBlName
							TBlName = "CB_Global_Startup_Companies"
							''select First_Name,Last_Name,title,image_path from vwInfluencersPeople where is_indian='Y'  order by CASE WHEN image_path like 'https://uld.marketglass.com%' THEN 1 WHEN image_path like 'https://cbcrawler.marketglass.com%' THEN 2 WHEN image_path like 'http://licollector.marketglass.com%' THEN 3 WHEN len(image_path)>6 THEN 4 ELSE 5 END,CASE WHEN title like '%chief%' THEN 1 WHEN title like '%CEO%' THEN 2 WHEN title like '%VP%' THEN 3 ELSE 3 END,last_name OFFSET 0 ROWS FETCH NEXT 33 ROWS ONLY
							TBlName = "uld_marketglass_company_images"
							CountryQry="select First_Name,Last_Name,title,image_path,companyName from vwInfluencersPeople a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name and b.region = '"&trim(request("GTregion"))&"' and a.image_path is not null "
							If Trim(request("SRCWord")) <> "" Then
									CountryQry = CountryQry & " and ([Last_Name] like '"&Trim(request("SRCWord"))&"%') "									
							End If
							'''InRegionQry=" 
							If trim(request("SrcType")) = "CXO" Then
								CountryQry = CountryQry & " and (title like '%chief%' or title like 'CEO%' or title like 'CTO' or title like 'C%') "
							ElseIf trim(request("SrcType")) = "VP" Then
								CountryQry = CountryQry & " and (title like 'vice%' or title like 'VP %') "
							ElseIf trim(request("SrcType")) = "DIR" Then
								CountryQry = CountryQry & " and (title like 'Director%' or title like 'MD %') "
							ElseIf trim(request("SrcType")) = "MGR" Then
								CountryQry = CountryQry & " and (title like 'Manager%' ) "
							ElseIf trim(request("SrcType")) = "REST" Then
								CountryQry = CountryQry & " and (title not like 'Manager%' and title not like 'chief%' and title not like 'C%' and title not like 'vice%' and title not like 'Director%') "
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
							
							CountryQry = CountryQry & " order by CASE WHEN image_path like 'https://uld.marketglass.com%' THEN 1 WHEN image_path like 'https://cbcrawler.marketglass.com%' THEN 2 WHEN image_path like 'http://licollector.marketglass.com%' THEN 3 WHEN len(image_path)>6 THEN 4 ELSE 5 END,CASE WHEN title like '%chief%' THEN 1 WHEN title like '%CEO%' THEN 2 WHEN title like '%VP%' THEN 3 ELSE 3 END,last_name " & LimitSTR
							
							''response.write CountryQry
							''response.end
							
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.CursorType = 3				
							RSCountry.PageSize = cdbl(rec_per_page)	
							RSCountry.Open CountryQry, Datasource4
							
							
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							<li class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 ">
								<div class="col-12 mx-auto border label p-2">
									<div class="d-flex justify-content-between align-items-center">

										<div class="left-block">
											<%
											If trim(RSCountry("image_path"))<>"" Then%>
											<img src="<%=trim(RSCountry("image_path"))%>" class="img-fluid" border="0">
											<%End If
											%>
										</div>

										<div class="right-block">
											<div class="title pl-2">
											
												<h2><%=trim(RSCountry("First_Name"))%> &nbsp;<%=trim(RSCountry("Last_Name"))%> </h2>
												<h3> <%=trim(RSCountry("title"))%></h3>
												<h5><%=trim(RSCountry("companyName"))%></h5>
							
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
								<a class="<%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Country_People.asp?Start=<%=StartBack%>&amp;E=<%=E1%>&amp;GTregion=<%=trim(request("GTregion"))%>&amp;SRCWord=<%=Trim(request("SRCWord"))%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style=" margin: 10px 10px;    font-weight: bold;   font-size: 17px;"><< BACK</a>
								<a class="<%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Country_People.asp?Start=<%=Start1%>&amp;E=<%=E1%>&amp;GTregion=<%=trim(request("GTregion"))%>&amp;SRCWord=<%=Trim(request("SRCWord"))%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style=" margin: 10px 10px;    font-weight: bold;   font-size: 17px;"> NEXT >> </a>
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