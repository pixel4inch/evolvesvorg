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
	rec_per_page=100
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
			<div class="col-sm-12 col-md-12 col-lg-12  m-auto">
				<!-- Page Title -->
				<div class="section-title mb-3">
				
				<h2>
					
					<%=ucase(trim(request("ShowType")))%> IN 
					<%If (trim(request("GTregion"))="Asia-Pacific") or (trim(request("GTregion"))="Middle East") Then%>
					 THE
					<%END IF%>
					 <%=ucase(trim(request("GTregion")))%></h2>
				</div>
				<!-- Page Description -->

			</div>

			<div class="col-12 mx-auto"  >
				<div class="rounded shadow p-2 bg-white" >
					<div class="row">
						
							<p class="Alp_Display w-100 my-3 "> 
				<%'if trim(chkOpt)="Company" then%>					
					<a class="<%=SelectedActive(request("SRCWord"),"[0-9]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[0-9]">0-9</a>&nbsp;
				<%'end if%>
                  <a class="<%=SelectedActive(request("SRCWord"),"[A]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[A]">A</a> 
				  <a class="<%=SelectedActive(request("SRCWord"),"[B]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[B]">B</a>
                  <a class="<%=SelectedActive(request("SRCWord"),"[C]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[C]">C</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[D]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[D]">D</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[E]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[E]">E</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[F]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[F]">F</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[G]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[G]">G</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[H]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[H]">H</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[I]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[I]">I</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[J]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[J]">J</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[K]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[K]">K</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[L]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[L]">L</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[M]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[M]">M</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[N]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[N]">N</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[O]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[O]">O</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[P]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[P]">P</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Q]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Q]">Q</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[R]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[R]">R</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[S]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[S]">S</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[T]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[T]">T</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[U]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[U]">U</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[V]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[V]">V</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[W]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[W]">W</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[X]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[X]">X</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Y]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Y]">Y</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Z]") %>" href="Show_Region_Countries_Companies.asp?GTregion=<%=trim(request("GTregion"))%>&ShowType=<%=trim(request("ShowType"))%>&SRCWord=[Z]">Z</a>
				  		   </p>
					 </div>
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Region</h5>
					 </div-->
							<ul class="no-list-style mb-3 row mx-0 p-0 ">
							<%
							dim TBlName
							TBlName = "CB_Global_Startup_Companies"
							If trim(request("ShowType"))="STARTUPS" Then
								TBlName = "CB_Global_Startup_Companies"
								CountryQry="select a.*,a.image_path as Company_Image_url from "&TBlName&" a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name and b.region = '"&trim(request("GTregion"))&"' and a.image_path is not null"
								If Trim(request("SRCWord")) <> "" Then
										CountryQry = CountryQry & " and ([Organization_Name] like '"&Trim(request("SRCWord"))&"%') order by image_path desc "									
								End If
							ElseIf trim(request("ShowType"))="Enterprises" Then
								TBlName = "uld_marketglass_company_images"
								CountryQry="select *,Company_Name as Organization_Name,company_website as website  from "&TBlName&" where country = '"&trim(request("GTregion"))&"' and [Company_Sales] not in ('$1 Million - $10 Million','Under $1 Million','NULL') and Company_Image_url is not null"
								If Trim(request("SRCWord")) <> "" Then
										CountryQry = CountryQry & " and ([Company_Name] like '"&Trim(request("SRCWord"))&"%') order by Company_Name "									
								End If
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
							
							CountryQry = CountryQry & "  " &LimitSTR
									
							''CountryQry = CountryQry & " and country is not null order by country"		
							response.write CountryQry
							response.end
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.CursorType = 3				
							RSCountry.PageSize = cdbl(rec_per_page)	
							RSCountry.Open CountryQry, Datasource1
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							<li class="col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 ">
								<div class="col-12 mx-auto border label   trademark  zing  p-2">
									<div class="d-flex justify-content-start align-items-center">

										<div class="left-block">
											<%
											If trim(RSCountry("Company_Image_url"))<>"NA" Then%>
											<img src="<%=trim(RSCountry("Company_Image_url"))%>" class="img-fluid" border="0">
											<%End If
											%>
										</div>

										<div class="right-block">
											<div class="title pl-2">
												<h2><%=trim(RSCountry("Organization_name"))%></h2>
												<h3> <%=trim(RSCountry("Country"))%></h3>
												<h5><a href='<%=trim(RSCountry("website"))%>'class="lablehreflink"><%=trim(RSCountry("website"))%></a></h5>
							
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
								Start1 = cint(trim(request("Start")))+100
								If trim(request("Start"))<>0 then
									StartBack = cint(trim(request("Start"))) - 100
								else
									StartBack = 0
								End If
							Else
								Start1 = 100
								StartBack = 0
							End If
							
							If trim(Start1)>=900 Then
								Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
								response.end
							End If
							
							
							%>					
							<div class="w-100" style="display: flex;    justify-content: center;    width: 100%;    padding: 10px;">
								<a class="<%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=StartBack%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(request("SRCWord"))%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(request("ShowType"))%>&GTregion=<%=trim(request("GTregion"))%>" style=" margin: 10px 10px;    font-weight: bold;   font-size: 17px;"><< BACK</a>
								<a class="<%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Region_Countries_Companies.asp?Start=<%=Start1%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(request("SRCWord"))%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(request("ShowType"))%>&GTregion=<%=trim(request("GTregion"))%>" style=" margin: 10px 10px;    font-weight: bold;   font-size: 17px;"> NEXT >> </a>
							</div>	
								
							</ul>

						<!--div class="col-xl-3 col-lg-6 col-md-10 col-sm-12 mx-auto   mt-2 text-center mb-2">
							
							<h3 class="mt-4 text-capitalize  h3 ">INFLUENCERS</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" data-TargetNum="1524" data-Speed="2500">7321</span></h3>
							
							<hr/>
							<div  class="col-lg-11 col-12 mx-auto  text-left px-3">
							<h5 class="font-weight-bold text-left">Enterprise Level</h5>
							
							<ul class="list-group list-group-flush">
								<li class="list-group-item">Enterprise Level-1</li>
								<li class="list-group-item">Enterprise Level-2</li>
								<li class="list-group-item">Enterprise Level-3</li>
								<li class="list-group-item">Enterprise Level-4</li>
								<li class="list-group-item">Enterprise Level-5</li>
							  </ul>
							
							
							</div>
						</div-->
					</div>
				</div>




		</div>



		</div>
	
</section>

<!--====  End of Page Title  ====-->




<!--============================
=            Footer            =
=============================-->
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