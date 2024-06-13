<!DOCTYPE html>

<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>INVESTORS - DASHBOARD</title>

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
Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function



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
					<%If trim(request("GTcountry"))="Venture Capital" Then%>
					<%=ucase(trim(request("GTcountry")))%> FIRMS</h2>
					<%Elseif trim(request("GTcountry"))="Corporate Venture Capital" Then%>
					<%=ucase(trim(request("GTcountry")))%></h2>
					<%Else%>
					<%=ucase(trim(request("GTcountry")))%></h2>
					<%End If%>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12 mx-auto"  >
				<div class="rounded  p-2 bg-white" >
					<div class="row">
						
							<p class="Alp_Display w-100 my-3 "> 
					<%'if trim(chkOpt)="Company" then%>					
					<a class="<%=SelectedActive(request("SRCWord"),"[0-9]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[0-9]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">0-9</a>&nbsp; 
					<%'end if%>
                  <a class="<%=SelectedActive(request("SRCWord"),"[A]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[A]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">A</a> 
				  <a class="<%=SelectedActive(request("SRCWord"),"[B]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[B]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">B</a>
                  <a class="<%=SelectedActive(request("SRCWord"),"[C]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[C]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">C</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[D]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[D]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">D</a>
			      <a class="<%=SelectedActive(request("SRCWord"),"[E]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[E]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">E</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[F]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[F]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">F</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[G]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[G]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">G</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[H]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[H]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">H</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[I]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[I]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">I</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[J]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[J]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">J</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[K]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[K]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">K</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[L]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[L]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">L</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[M]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[M]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">M</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[N]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[N]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">N</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[O]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[O]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">O</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[P]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[P]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">P</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Q]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[Q]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">Q</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[R]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[R]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">R</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[S]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[S]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">S</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[T]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[T]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">T</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[U]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[U]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">U</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[V]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[V]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">V</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[W]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[W]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">W</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[X]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[X]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">X</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Y]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[Y]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">Y</a>
				  <a class="<%=SelectedActive(request("SRCWord"),"[Z]") %>" href="Show_Investor_country_Companies.asp?GTcountry=<%=trim(request("GTcountry"))%>&SRCWord=[Z]&ShowType=<%=trim(request("ShowType"))%>&InvType=<%=trim(request("InvType"))%>">Z</a>
				  		   </p>
					 </div>
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Companies</h5>
					 </div-->
							<ul class="no-list-style mb-3 row mx-0 p-0 ">
							<%
							''CountryQry="select country,count(*) as CountryCNT,flag_code from CB_Global_Startup_Companies group by country,flag_code having count(*)>99 and country is not null order by country "	
							if trim(request("InvType")) = "COUNTRY" Then	
							CountryQry="select * from  eventdatacurator.dbo.CB_Investors where country = '"&trim(request("GTcountry"))&"' "
							elseif trim(request("InvType")) = "REGION" Then
							CountryQry="select * from eventdatacurator.dbo.CB_Investors a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name and b.region='"&trim(request("GTcountry"))&"' "
							''CountryQry="select * from  eventdatacurator.dbo.CB_Investors where country = '"&trim(request("GTcountry"))&"' "
							Else
							CountryQry="select * from  eventdatacurator.dbo.CB_Investors where Investor_Type Like '%"&trim(request("GTcountry"))&"%' "
							
							End IF
							        If Trim(request("SRCWord")) <> "" Then
											CountryQry = CountryQry & " and ([Organization_person_name] like '"&Trim(request("SRCWord"))&"%') "									
									End If
									
							CountryQry = CountryQry & " order by image_path desc"		
							''response.write CountryQry
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
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
											
												<h2><%=trim(RSCountry("Organization_person_name"))%> </h2>
												<h3><%=trim(RSCountry("Country"))%></h3>
												<h5><a href='<%=trim(RSCountry("website"))%>' class="lablehreflink"><%=trim(RSCountry("website"))%></a></h5>
							
											</div>
										</div>
							
									</div>
							
								</div>
							</li>
							<%
							RSCountry.movenext
							wend
							End If
							set RSCountry = nothing
							%>	
							</ul>

							
						
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