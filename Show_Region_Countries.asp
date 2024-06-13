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

</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">

<!--============================
=           Top Strip     Start   =
=============================-->
	<!--#include file="ASPIncludes/topstrip.asp"-->
<!--============================
=            Top Strip      End   =
=============================-->
<!---====================================
=            Hero Section            =
=====================================--->
<section class="section placekeeper_section theme-9">
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
					<%=ucase(trim(request("ShowType")))%> IN
					<span> <%=ucase(trim(request("GTregion")))%></span></h2>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12   ecosysem-dashboard">
				<div class="rounded  p-2 bg-white">
					<div class="row">
						<div class="col-12   mt-2 text-center mb-2">
							
							<h5 class="font-weight-bold text-center my-4">By Country</h5>
							<ul class="row mb-3">
							<%
							''CountryQry="select country,count(*) as CountryCNT,flag_code from CB_Global_Startup_Companies group by country,flag_code having count(*)>99 and country is not null order by country "	
							CountryQry="select country,count(*) as CountryCNT,b.flag_code as flagcode,b.region from CB_Global_Startup_Companies a, REPORTS_REGIONS_LIST$ b where a.country =b.region_country_name group by a.country,b.flag_code,b.region having b.region='"&trim(request("GTregion"))&"' and a.country is not null order by a.country"
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.Open CountryQry, Datasource4
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							<li class="col-xl-3 col-lg-3 col-md-6 col-sm-6  col-12  phoca-box-flags"><div class="phoca-flag-flags <%=trim(RSCountry("flagcode"))%>"></div><%=trim(RSCountry("country"))%> (<a href="Show_Country_Companies.asp?GTcountry=<%=trim(RSCountry("country"))%>&SRCWord=[A]&ShowType=STARTUPS" target="_new"><%=trim(RSCountry("CountryCNT"))%></a>)</li>
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




			</div>



		</div>
	</div>
</section>



<!--====  End of Page Title  ====-->
<!--============================
=            Footer       Start   =
=============================-->
	<!--#include file="ASPIncludes/footer.asp"-->
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