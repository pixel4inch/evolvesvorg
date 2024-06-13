<!DOCTYPE html>
<html lang="en">
<%
If trim(session("STcode"))="" Then
	''response.redirect "https://www.evolv.cc"
End If

If trim(Request.Cookies("STcode"))="" Then
	''response.redirect "https://www.evolv.cc"
End If
'''response.write (Request.Cookies("STcode"))
%>
<head>
<!--#include file="rc4.inc"-->

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
</head>



<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">


<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
<!--============================
=            Top Strip      End   =
=============================-->
 <!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
  <!--============================
    PLACEKEEPTER BANNER
=============================-->    


<!--================================
=            Page Title            =
=================================-->

<section class="section page-title">
	<div class="container">
		<div class="row">

			
			<div class="col-sm-12 col-md-12 col-lg-8  m-auto">
				<!--img src="https://www.strategyr.com/images/zing__new2.JPG" width="20%" border="0"-->
				<!-- Page Title -->
				<div class="section-title mb-3">
					<h2>DATA DASHBOARD</h2>
				</div>
				<!-- Page Description -->
				
			

			</div>

			<div class="col-12 mx-auto ecosysem-dashboard" id="ecosysem-dashboard" >
				<div class="rounded  p-2 bg-white">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2  ">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">STARTUPS</h3>
							<h3 class="mt-2 text-capitalize   h2  counter">
							 <span class=' font-display3 counter' data-min='1' data-max='731574' data-delay='5' data-increment='10000'>731574</span>
							
							</div>
							<hr/>
							<div  class="col-xl-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#startups_byregion" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">REGION</h5></a>
							<div class="collapse" id="startups_byregion"> 
							<ul class="list-group list-group-flush mb-3">
							
							 
								<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%EC5%C5%E316&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">3459</a>)</span></li>
								<!--<li class="list-group-item">Africa (80)</li>-->
							
							 
								<li class="list-group-item"><span>Asia (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">99354</a>)</span></li>
								<!--<li class="list-group-item">Asia-Pacific (34523)</li>-->
							
							 
								<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E8%26%C5%E5%222&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">118178</a>)</span></li>
								<!--<li class="list-group-item">Europe (93772)</li>-->
							
							 
								<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">12504</a>)</span></li>
								<!--<li class="list-group-item">Latin America (6496)</li>-->
							
							 
								<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">5421</a>)</span></li>
								<!--<li class="list-group-item">Middle East (2417)</li>-->
							
							 
								<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">492659</a>)</span></li>
								<!--<li class="list-group-item">North America (469129)</li>-->
								
							  </ul>
							 </div>

							<a class="collapse_click collapsed" data-toggle="collapse" href="#startups_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">COUNTRY</h5></a>
							<div class="collapse" id="startups_bycountry"> 
							<ul class="list-group list-group-flush mb-3">
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags au"></div><span>Australia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+6%9F%D4%2E&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">16909</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Australia&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">16909</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags at"></div><span>Austria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+%3E%92&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">980</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Austria&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">980</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags be"></div><span>Belgium (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF6%DB%ED%3B%22%9E&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">3858</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Belgium&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">3858</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags br"></div><span>Brazil (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%21%D6%F0%3B%3B&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">4974</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Brazil&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">4974</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags bg"></div><span>Bulgaria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%26%DB%ED3%25%9A%DC&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">117</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Bulgaria&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">117</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ca"></div><span>Canada (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%D9%EB66&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">32043</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Canada&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">32043</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cn"></div><span>China (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3B%DE%E43&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">2091</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=China&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2091</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hr"></div><span>Croatia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%21%D8%EB%26%3E%92&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">124</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Croatia&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">124</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags dk"></div><span>Denmark (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E96%D9%E73%25%98&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">2950</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Denmark&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2950</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fi"></div><span>Finland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%3A%D9%E639%97&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">241</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Finland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">241</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fr"></div><span>France (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%21%D6%E412&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">7129</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=France&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">7129</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags de"></div><span>Germany (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA6%C5%E739%8A&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">9033</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Germany&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">9033</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gr"></div><span>Greece (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%21%D2%EF12&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">182</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Greece&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">182</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hu"></div><span>Hungary (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E5%26%D9%ED3%25%8A&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">223</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Hungary&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">223</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags in"></div><span>India (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%3D%D3%E33&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">11627</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=India&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">11627</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ie"></div><span>Ireland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%21%D2%E639%97&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">433</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Ireland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">433</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags il"></div><span>Israel (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4+%C5%EB7%3B&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">2417</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Israel&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2417</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags it"></div><span>Italy (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%27%D6%E6%2B&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">3066</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Italy&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">3066</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mx"></div><span>Mexico (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E06%CF%E318&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">1522</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Mexico&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">1522</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nl"></div><span>Netherlands (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E36%C3%E27%25%9F%DC%21%A8%A7&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">834</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Netherlands&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">834</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags no"></div><span>Norway (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E3%3C%C5%FD3%2E&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">242</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Norway&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">242</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pl"></div><span>Poland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%DB%EB%3C3&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">444</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Poland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">444</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pt"></div><span>Portugal (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%C5%FE%270%92%D1&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">391</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Portugal&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">391</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ro"></div><span>Romania (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FF%3C%DA%EB%3C%3E%92&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">264</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Romania&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">264</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sg"></div><span>Singapore (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3A%D9%ED3%27%9C%CF%2A&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">2312</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Singapore&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2312</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kr"></div><span>South Korea (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3C%C2%FE%3Aw%B8%D2%3D%A9%B5&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">1135</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=South Korea&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">1135</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags es"></div><span>Spain (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%23%D6%E3%3C&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">4162</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Spain&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">4162</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags se"></div><span>Sweden (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%D2%EE79&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">6405</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Sweden&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">6405</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ch"></div><span>Switzerland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%DE%FE%282%81%D1%2E%A2%B0&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">2545</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Switzerland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2545</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tw"></div><span>Taiwan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F92%DE%FD39&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">449</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Taiwan&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">449</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gb"></div><span>United Kingdom (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%F6%26%A2%B3%B1%CF%80&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">50149</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=United Kingdom&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">50149</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags us"></div><span>United States (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%EE%3B%AD%A0%B0%D3&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_new" style="color:blue;">437086</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=United States&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">437086</a>-->
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags "></div><span>Others (<a  style="color:blue;">125237</a>)</span></li>							
								
							  </ul>
								</div>
								
								<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_byDomain" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">KEY DOMAINS</h5></a>
							<div class="collapse" id="EVOLV_byDomain">
							<ul class="list-group list-group-flush mb-3">
							
							
							
								<li class="list-group-item"><span>AgTech (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%EC4%E3%EF1%3F&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">3163</a>)</span></li>
							
							
								<li class="list-group-item"><span>AI, Artificial Intelligence (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%EC%1A%9B%AA%13%25%87%D4%29%A5%B7%BC%C1%812R%DF%C9%29T%14%C3l%12%3A%E6%17&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">30352</a>)</span></li>
							
							
								<li class="list-group-item"><span>Augmented Reality (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%EC%26%D0%E779%87%D8%2B%EC%86%B0%C1%81%7Bo%C8&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">3564</a>)</span></li>
							
							
								<li class="list-group-item"><span>BioPharma (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%EF%3A%D8%DA%3A6%81%D0%2E&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">1344</a>)</span></li>
							
							
								<li class="list-group-item"><span>Cleantech (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%EE%3F%D2%EB%3C%23%96%DE%27&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">2326</a>)</span></li>
							
							
								<li class="list-group-item"><span>Digital Health (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%E9%3A%D0%E3%266%9F%9D%07%A9%B5%B9%D4%85&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">1314</a>)</span></li>
							
							
								<li class="list-group-item"><span>EduTech (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%E87%C2%DE74%9B&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">7718</a>)</span></li>
							
							
								<li class="list-group-item"><span>Electric Vehicles (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%E8%3F%D2%E9%26%25%9A%DEo%9A%B1%BD%C9%8E%7E%7E%C2&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">947</a>)</span></li>
							
							
								<li class="list-group-item"><span>Enterprise Security, Cloud Security (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%E8%3D%C3%EF+%27%81%D4%3C%A9%F4%86%C5%8Egi%D8%C95%14X%E9g%18%21%E1R%D7y%FF%F6%24%18%E5%F9&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">2671</a>)</span></li>
							
							
								<li class="list-group-item"><span>Gaming (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%EA2%DA%E3%3C0&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">23439</a>)</span></li>
							
							
								<li class="list-group-item"><span>Medical Devices (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%E06%D3%E316%9F%9D%0B%A9%A2%BC%C3%88a&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">1671</a>)</span></li>
							
							
								<li class="list-group-item"><span>Metaverse (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%E06%C3%EB%242%81%CE%2A&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">727</a>)</span></li>
							
							
								<li class="list-group-item"><span>Robotics (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%FF%3C%D5%E5%26%3E%90%CE&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">11024</a>)</span></li>
							
							
								<li class="list-group-item"><span>SCM, Supply Chain Management (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=%FE%10%FA%A6r%04%86%CD%3F%A0%AD%F5%E3%85sr%DF%9D%01Y%16%CBl%129%E0%1C%F0&ShowType=%E9%1C%FA%CB%1B%19&ShowTypeSTR=%E9%1C%FA%CB%1B%19&SRCWord=%F6%12%EA" target="_new" style="color:blue;">17217</a>)</span></li>
								
								<li class="list-group-item"><span>Others (<a style="color:blue;">624097</a>)</span></li>
								  </ul>
								  </div>
							
							<!--<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_byDomain" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">EVOLV By Domain</h5></a>
							<div class="collapse" id="EVOLV_byDomain">
							<ul class="list-group list-group-flush mb-3">
							
							
							
								<li class="list-group-item"><span>AgTech (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=AgTech&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">3163</a>)</span></li>
							
							
								<li class="list-group-item"><span>AI, Artificial Intelligence (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=AI, Artificial Intelligence&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">30352</a>)</span></li>
							
							
								<li class="list-group-item"><span>Augmented Reality (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Augmented Reality&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">3564</a>)</span></li>
							
							
								<li class="list-group-item"><span>BioPharma (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=BioPharma&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">1344</a>)</span></li>
							
							
								<li class="list-group-item"><span>Cleantech (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Cleantech&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">2326</a>)</span></li>
							
							
								<li class="list-group-item"><span>Digital Health (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Digital Health&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">1314</a>)</span></li>
							
							
								<li class="list-group-item"><span>EduTech (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=EduTech&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">7718</a>)</span></li>
							
							
								<li class="list-group-item"><span>Electric Vehicles (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Electric Vehicles&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">947</a>)</span></li>
							
							
								<li class="list-group-item"><span>Enterprise Security, Cloud Security (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Enterprise Security, Cloud Security&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">2671</a>)</span></li>
							
							
								<li class="list-group-item"><span>Gaming (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Gaming&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">23439</a>)</span></li>
							
							
								<li class="list-group-item"><span>Medical Devices (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Medical Devices&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">1671</a>)</span></li>
							
							
								<li class="list-group-item"><span>Metaverse (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Metaverse&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">727</a>)</span></li>
							
							
								<li class="list-group-item"><span>Robotics (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=Robotics&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">11024</a>)</span></li>
							
							
								<li class="list-group-item"><span>SCM, Supply Chain Management (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=SCM, Supply Chain Management&StupType=DOMAIN&ShowType=DOMAIN&SRCWord=[A]" target="_new" style="color:blue;">17217</a>)</span></li>
								
								  </ul>
								  </div>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_byStage" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							<h5 class="font-weight-bold text-left">EVOLV By Stage</h5></a>
							<div class="collapse" id="EVOLV_byStage">
							<ul class="list-group list-group-flush mb-3">
							
							
								<li class="list-group-item"><span>SEED STAGE (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=SEED STAGE&StupType=SEED STAGE&ShowType=STARTUPS" target="_new" style="color:blue;">13471</a>)</span></li>
							
							
								<li class="list-group-item"><span>GROWTH STAGE (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=GROWTH STAGE&StupType=GROWTH STAGE&ShowType=STARTUPS" target="_new" style="color:blue;">18844</a>)</span></li>
							
							
								<li class="list-group-item"><span>LATE STAGE (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTCountry=LATE STAGE&StupType=LATE STAGE&ShowType=STARTUPS" target="_new" style="color:blue;">3540</a>)</span></li>
							
								</ul>
							</div>-->
							
							</div>


						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12    mt-2 text-center mb-2  px-md-4">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">INVESTMENT FIRMS</h3>
							<h3 class="mt-2 text-capitalize  h2 ">
							<span class=' font-display3 counter' data-min='1' data-max='114870' data-delay='5' data-increment='10000'>114870</span>
							
						
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#Investors_byRegion" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							<h5 class="font-weight-bold text-left">REGION</h5></a>
							<div class="collapse" id="Investors_byRegion">
							<ul class="list-group list-group-flush mb-3">
								
							                                                                       
								<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC5%C5%E316&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_new" style="color:blue;">1098</a>)</span></li>
								<!--<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Africa&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">778</a>)</span></li>-->
								<!--<li class="list-group-item">Africa (778)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_new" style="color:blue;">34859</a>)</span></li>
								<!--<li class="list-group-item"><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Asia-Pacific&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">24704</a>)</span></li>-->
								<!--<li class="list-group-item">Asia-Pacific (24704)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E8%26%C5%E5%222&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_new" style="color:blue;">23184</a>)</span></li>
								<!--<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Europe&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">16430</a>)</span></li>-->
								<!--<li class="list-group-item">Europe (16430)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_new" style="color:blue;">1930</a>)</span></li>
								<!--<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Latin America&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">1368</a>)</span></li>-->
								<!--<li class="list-group-item">Latin America (1368)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_new" style="color:blue;">2210</a>)</span></li>
								<!--<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Middle East&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">1566</a>)</span></li>-->
								<!--<li class="list-group-item">Middle East (1566)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_new" style="color:blue;">51590</a>)</span></li>
								
								<!--<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=North America&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">36561</a>)</span></li>-->
								<!--<li class="list-group-item">North America (36561)</li>-->
								
							  </ul>
							</div>  
							  <a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_bytype" role="button" aria-expanded="false" aria-controls="collapseExample">
							  <h5 class="font-weight-bold text-left">TYPE</h5></a>
							  <div class="collapse" id="INVESTORS_bytype">
								<ul class="list-group list-group-flush mb-3">
								<li class="list-group-item "><span>Venture Capital (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%FB6%D9%FE%27%25%96%9D%0C%AD%A4%BC%D4%8C%7E&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">66943</a>)</span></li>
								<li class="list-group-item "><span>Angel Group (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC%3D%D0%EF%3Ew%B4%CF+%B9%A4&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">5094</a>)</span></li>
								<li class="list-group-item "><span>Accelerator (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC0%D4%EF%3E2%81%DC%3B%A3%A6&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">6099</a>)</span></li>
								<li class="list-group-item "><span>Incubator (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E4%3D%D4%FF06%87%D2%3D&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">3495</a>)</span></li>
								<li class="list-group-item "><span>Family Investment Office (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EB2%DA%E3%3E%2E%D3%F4%21%BA%B1%A6%D4%80wu%C5%9D%03%5E%1E%C3h%12&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">3085</a>)</span></li>
								<li class="list-group-item "><span>Private Equity Firm (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%FD%21%DE%FC3%23%96%9D%0A%BD%A1%BC%D4%942%5D%D8%CF%21&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">26425</a>)</span></li>
								<li class="list-group-item "><span>Corporate Venture Capital (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EE%3C%C5%FA%3D%25%92%C9%2A%EC%82%B0%CE%99gi%D4%9D%0FY%08%C3%7F%168&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">3730</a>)</span></li>
								</ul>
							  </div>
<a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_byperson" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							
							  <h5 class="font-weight-bold text-left">INVESTORS</h5></a>
							  <div class="collapse" id="INVESTORS_byperson">
								<ul class="list-group list-group-flush mb-3">
								<li class="list-group-item "><span>Investors (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies_people.asp?GTcountry=%FB6%D9%FE%27%25%96%9D%0C%AD%A4%BC%D4%8C%7E&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_new" style="color:blue;">85411</a>)</span></li>
							</ul>
</div>
							<!--<a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">COUNTRY</h5></a>
							<div class="collapse" id="INVESTORS_bycountry"> 
							
							<ul class="list-group list-group-flush mb-3">
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ar"></div><span>Argentina (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Argentina&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">110</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags au"></div><span>Australia (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Australia&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">1237</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags at"></div><span>Austria (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Austria&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">220</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags be"></div><span>Belgium (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Belgium&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">365</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags br"></div><span>Brazil (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Brazil&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">721</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ca"></div><span>Canada (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Canada&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">2468</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cn"></div><span>China (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=China&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">12483</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags co"></div><span>Colombia (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Colombia&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">102</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cz"></div><span>Czech Republic (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Czech Republic&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">112</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags dk"></div><span>Denmark (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Denmark&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">359</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags eu"></div><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Europe&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">967</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fi"></div><span>Finland (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Finland&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">335</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fr"></div><span>France (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=France&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">1671</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags de"></div><span>Germany (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Germany&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">2320</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hk"></div><span>Hong Kong (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Hong Kong&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">790</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags in"></div><span>India (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=India&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">3842</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags id"></div><span>Indonesia (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Indonesia&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">261</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ie"></div><span>Ireland (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Ireland&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">255</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags il"></div><span>Israel (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Israel&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">772</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags it"></div><span>Italy (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Italy&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">602</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags jp"></div><span>Japan (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Japan&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">3367</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags my"></div><span>Malaysia (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Malaysia&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">201</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mx"></div><span>Mexico (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Mexico&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">273</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nz"></div><span>New Zealand (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=New Zealand&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">154</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ng"></div><span>Nigeria (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Nigeria&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">158</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags no"></div><span>Norway (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Norway&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">325</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ph"></div><span>Philippines (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Philippines&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">110</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pl"></div><span>Poland (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Poland&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">227</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pt"></div><span>Portugal (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Portugal&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">135</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sa"></div><span>Saudi Arabia (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Saudi Arabia&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">167</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sg"></div><span>Singapore (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Singapore&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">1086</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags za"></div><span>South Africa (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=South Africa&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">305</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kr"></div><span>South Korea (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=South Korea&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">569</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags es"></div><span>Spain (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Spain&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">1056</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags se"></div><span>Sweden (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Sweden&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">913</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ch"></div><span>Switzerland (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Switzerland&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">976</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tw"></div><span>Taiwan (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Taiwan&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">219</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags th"></div><span>Thailand (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Thailand&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">142</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tr"></div><span>Turkey (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=Turkey&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">337</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ae"></div><span>United Arab Emirates (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=United Arab Emirates&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">464</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gb"></div><span>United Kingdom (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=United Kingdom&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">4907</a>)</span></li>
								
							
							
								<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags us"></div><span>United States (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=United States&SRCWord=[A]&ShowType=INVESTOR WORLD&InvType=COUNTRY" target="_new" style="color:blue;">34093</a>)</span></li>
								
								
							  </ul>
							  </div>-->
							
						<!--	  <h5 class="font-weight-bold text-left">By Type</h5>
							
								<ul class="list-group list-group-flush mb-3">-->
								
							
							<!--	<li class="list-group-item">For Profit (20924)</li>-->
							
							
							<!--	<li class="list-group-item">Non-profit (478)</li>-->
								
							<!--	  </ul>-->

		
							<!--	  <h5 class="font-weight-bold text-left">By Media</h5>
							
								  <ul class="list-group list-group-flush mb-3">
									  <li class="list-group-item">Media-1</li>
									  <li class="list-group-item">Media-2</li>
									  <li class="list-group-item">Media-3</li>
									  <li class="list-group-item">Media-4</li>
									  <li class="list-group-item">Media-5</li>
									</ul>-->
							
							
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 ">
							<div style="height:55px;">						
							<h3 class="mt-4 text-capitalize  h3 ">ENTERPRISES</h3>
							<h3 class="mt-2 text-capitalize  h2 ">
							 <span class=' font-display3 counter' data-min='1' data-max='2369083' data-delay='5' data-increment='10000'>2369083</span>
							
														
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#ENTERPRISES_byregion" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">REGION</h5></a>	
							<div class="collapse" id="ENTERPRISES_byregion"> 							
							<ul class="list-group list-group-flush">							
							
																																				
								<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%EC5%C5%E316&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_new" style="color:blue;">7006</a>)</span></li>
								<!--li class="list-group-item">Africa (6893)</li-->
								
							
																																				
								<li class="list-group-item"><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_new" style="color:blue;">262262</a>)</span></li>
								<!--li class="list-group-item">Asia-Pacific (150064)</li-->
								
							
																																				
								<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E8%26%C5%E5%222&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_new" style="color:blue;">193474</a>)</span></li>
								<!--li class="list-group-item">Europe (193361)</li-->
								
							
																																				
								<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_new" style="color:blue;">12936</a>)</span></li>
								<!--li class="list-group-item">Latin America (12823)</li-->
								
							
																																				
								<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_new" style="color:blue;">11913</a>)</span></li>
								<!--li class="list-group-item">Middle East (11800)</li-->
								
							
																																				
								<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_new" style="color:blue;">325954</a>)</span></li>
								<!--li class="list-group-item">North America (325841)</li-->
								
								
								
							  </ul>
							 </div>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#ENTERPRISES_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">COUNTRY</h5></a>
							<div class="collapse" id="ENTERPRISES_bycountry" style=""> 
							
							<ul class="list-group list-group-flush mb-3">
								

									<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ar"></div><span>Argentina (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%21%D0%EF%3C%23%9A%D3%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1179)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags au"></div><span>Australia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+6%9F%D4%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">26474)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags at"></div><span>Austria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2038)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags bd"></div><span>Bangladesh (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF2%D9%ED%3E6%97%D8%3C%A4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">887)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags by"></div><span>Belarus (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF6%DB%EB+%22%80&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">243)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags be"></div><span>Belgium (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF6%DB%ED%3B%22%9E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3987)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags br"></div><span>Brazil (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%21%D6%F0%3B%3B&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">7069)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags bg"></div><span>Bulgaria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%26%DB%ED3%25%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">806)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kh"></div><span>Cambodia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%DA%E8%3D3%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">179)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cm"></div><span>Cameroon (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%DA%EF+8%9C%D3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">55)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ca"></div><span>Canada (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%D9%EB66&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">33155)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cl"></div><span>Chile (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3B%DE%E67&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">975)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cn"></div><span>China (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3B%DE%E43&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">30254)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags co"></div><span>Colombia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3C%DB%E5%3F5%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">859)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hr"></div><span>Croatia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%21%D8%EB%26%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">602)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cz"></div><span>Czech Republic (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%29%D2%E9%3Aw%A1%D8%3F%B9%B6%B9%C9%8E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2705)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags dk"></div><span>Denmark (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E96%D9%E73%25%98&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3882)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags do"></div><span>Dominican Republic (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E9%3C%DA%E3%3C%3E%90%DC%21%EC%86%B0%D0%98pw%D8%DE&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">90)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ec"></div><span>Ecuador (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E80%C2%EB68%81&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">135)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags eg"></div><span>Egypt (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E84%CE%FA%26&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">803)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags et"></div><span>Ethiopia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E8%27%DF%E3%3D%27%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">96)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fi"></div><span>Finland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%3A%D9%E639%97&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3165)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fr"></div><span>France (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%21%D6%E412&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">16396)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags de"></div><span>Germany (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA6%C5%E739%8A&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">28713)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gh"></div><span>Ghana (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%3B%D6%E43&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">235)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gr"></div><span>Greece (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%21%D2%EF12&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1310)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gt"></div><span>Guatemala (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%26%D6%FE7%3A%92%D1%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">56)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hk"></div><span>Hong Kong (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E5%3C%D9%EDr%1C%9C%D3%28&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">4990)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hu"></div><span>Hungary (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E5%26%D9%ED3%25%8A&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1374)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags in"></div><span>India (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%3D%D3%E33&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">36444)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags id"></div><span>Indonesia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%3D%D3%E5%3C2%80%D4%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2311)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ir"></div><span>Iran (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%21%D6%E4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">365)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ie"></div><span>Ireland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%21%D2%E639%97&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">4169)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags il"></div><span>Israel (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4+%C5%EB7%3B&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">7047)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags it"></div><span>Italy (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%27%D6%E6%2B&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">19345)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags jp"></div><span>Japan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E72%C7%EB%3C&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">17060)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags jo"></div><span>Jordan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E7%3C%C5%EE39&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">271)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ke"></div><span>Kenya (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E66%D9%F33&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">771)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kw"></div><span>Kuwait (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E6%26%C0%EB%3B%23&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">140)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags lb"></div><span>Lebanon (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E16%D5%EB%3C8%9D&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">279)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags my"></div><span>Malaysia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E02%DB%EB%2B%24%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">4119)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mx"></div><span>Mexico (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E06%CF%E318&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1812)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ma"></div><span>Morocco (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E0%3C%C5%E514%9C&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">194)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mm"></div><span>Myanmar (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E0%2A%D6%E4%3F6%81&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">99)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nl"></div><span>Netherlands (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E36%C3%E27%25%9F%DC%21%A8%A7&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2989)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nz"></div><span>New Zealand (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E36%C0%AA%082%92%D1%2E%A2%B0&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3416)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ng"></div><span>Nigeria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E3%3A%D0%EF+%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1143)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags no"></div><span>Norway (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E3%3C%C5%FD3%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3083)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags om"></div><span>Oman (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E2%3E%D6%E4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">79)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pk"></div><span>Pakistan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD2%DC%E3%21%23%92%D3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1215)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pa"></div><span>Panama (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD2%D9%EB%3F6&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">165)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pe"></div><span>Peru (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD6%C5%FF&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">306)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ph"></div><span>Philippines (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3B%DE%E6%3B%27%83%D4%21%A9%A7&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2509)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pl"></div><span>Poland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%DB%EB%3C3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">4247)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pt"></div><span>Portugal (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%C5%FE%270%92%D1&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2203)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags qa"></div><span>Qatar (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FC2%C3%EB+&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">186)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ro"></div><span>Romania (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FF%3C%DA%EB%3C%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1914)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ru"></div><span>Russia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FF%26%C4%F9%3B6&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1215)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sa"></div><span>Saudi Arabia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE2%C2%EE%3Bw%B2%CF%2E%AE%BD%B4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">769)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sg"></div><span>Singapore (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3A%D9%ED3%27%9C%CF%2A&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">8008)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags za"></div><span>South Africa (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3C%C2%FE%3Aw%B2%DB%3D%A5%B7%B4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3054)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kr"></div><span>South Korea (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3C%C2%FE%3Aw%B8%D2%3D%A9%B5&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">5134)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags es"></div><span>spain (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%DE%23%D6%E3%3C&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">12986)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags lk"></div><span>Sri Lanka (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%21%DE%AA%1E6%9D%D6%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">300)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags se"></div><span>Sweden (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%D2%EE79&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">6564)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ch"></div><span>Switzerland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%DE%FE%282%81%D1%2E%A2%B0&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">8109)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tw"></div><span>Taiwan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F92%DE%FD39&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3548)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tz"></div><span>Tanzania (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F92%D9%F039%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">124)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags th"></div><span>Thailand (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F9%3B%D6%E3%3E6%9D%D9&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1711)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tr"></div><span>TURKEY (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F9%06%E5%C1%17%0E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">3389)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ug"></div><span>Uganda (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F84%D6%E466&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">183)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ua"></div><span>Ukraine (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F88%C5%EB%3B9%96&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2491)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ae"></div><span>United Arab Emirates (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%FC%3D%AD%B6%F5%E5%80%7Bi%D0%C9%29K&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2653)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gb"></div><span>United Kingdom (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%F6%26%A2%B3%B1%CF%80&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">55433)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags us"></div><span>United States (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%EE%3B%AD%A0%B0%D3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">292618)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ve"></div><span>Venezuela (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FB6%D9%EF%28%22%96%D1%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">78)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags vn"></div><span>Vietnam (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FB%3A%D2%FE%3C6%9E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">1382)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags zw"></div><span>Zimbabwe (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F7%3A%DA%E835%84%D8&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">109)</a></span>
								
								
							  </li>
							  
							  <li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags "></div><span>Others (<a  style="color:blue;">113093)</a></span>
								
								
							  </li>
							  </ul>
							  </div>
							  
							
							
							</div>
						</div>
						
						
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 ">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">INFLUENCERS</h3>
							<h3 class="mt-2 text-capitalize  h2 ">
							 <span class='  font-display3 counter' data-min='1' data-max='4875331' data-delay='5' data-increment='500000'>4875331</span>
							</h3>
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_byRegion" role="button" aria-expanded="false" aria-controls="collapseExample"> 							
							<h5 class="font-weight-bold text-left">REGION</h5></a>
							<div class="collapse" id="INFLUENCERS_byRegion"> 
							<ul class="list-group list-group-flush mb-3">
							
							
								<li class="list-group-item "><span>Africa (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%EC5%C5%E316" target="_new" style="color:blue;">33933</a>)</span></li>
							
							
								<li class="list-group-item "><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6" target="_new" style="color:blue;">509195</a>)</span></li>
							
							
								<li class="list-group-item "><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E8%26%C5%E5%222" target="_new" style="color:blue;">964350</a>)</span></li>
							
							
								<li class="list-group-item "><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1" target="_new" style="color:blue;">31307</a>)</span></li>
							
							
								<li class="list-group-item "><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0" target="_new" style="color:blue;">58872</a>)</span></li>
							
							
								<li class="list-group-item "><span>North America (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1" target="_new" style="color:blue;">3277675</a>)</span></li>
								
							  </ul>
							  </div>
							 
							<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_byTier" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">TIER</h5></a>
							<div class="collapse" id="INFLUENCERS_byTier"> 
							<ul class="list-group list-group-flush mb-3">
							
							
							<li class="list-group-item "><span>CXO (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%EE%0B%F8" target="_new" style="color:blue;">244540</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>CEO (105654)</span></li>
							<li class="list-group-item list-group-sub"><span>CMO (10543)</span></li>
							<li class="list-group-item list-group-sub"><span>CIO (25692)</span></li>
							<li class="list-group-item list-group-sub"><span>CTO (39054)</span></li>
							<li class="list-group-item list-group-sub"><span>CFO (41088)</span></li>
							<li class="list-group-item "><span>VP (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%FB%03" target="_new" style="color:blue;">570618</a>)</span></li>
							<li class="list-group-item "><span>DIRECTOR (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%E9%1A%E5" target="_new" style="color:blue;">1030955</a>)</span></li>
							<li class="list-group-item "><span>MANAGER (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%E0%14%E5" target="_new" style="color:blue;">1883468</a>)</span></li>
							<li class="list-group-item "><span>OTHER (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%FF%16%E4%DE" target="_new" style="color:blue;">923719</a>)</span></li>
							</ul>
							
							</div>
							
						<!--	<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_Indian" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left d-block"><span class="mr-2">By Indian Origin</span></h5> </a>
							<div class="collapse" id="INFLUENCERS_Indian">
							<ul class="list-group list-group-flush">
							<li class="list-group-item"><span>Total Count (1,032,352)</span></li>
							
							 
								<li class="list-group-item"><span> (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SrcType=&SRCWord=[A]&CHKType=Indian" target="_new" style="color:blue;"></a>)</span></li>
								
								
							  </ul>
							</div>-->
							
						</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2">
						<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Speakers" role="button" aria-expanded="false" aria-controls="collapseExample">
							<div  style="height:55px;" >
							<h3 class="mt-4 text-capitalize  h3 ">ZING<sup>TM</sup> SPEAKERS</h3>							
							 <h3 class="mt-2 text-capitalize   h2  counter">
							 <span class=' font-display3 counter' data-min='1' data-max='731574' data-delay='5' data-increment='10000'>940459</span>
							 </h3>
							</div>
						</a>
							<hr/>
						<!--	<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Speakers" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">SPEAKERS</h5></a>-->
							<div class="collapse" id="EVOLV_Speakers" style=""> 
							<!--&SRCWord=-->
							<ul class="list-group list-group-flush mb-3 event_speaker_list">
    <li class="list-group-item"><span>Supply Chain Management (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%26%C7%FA%3E%2E%D3%FE%27%AD%BD%BB%80%A0su%D0%DA%29U%1D%C4%7F&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%85&amp;cnt=%9Ec%82%BA"
          target="_new" style="color:blue;"></a>--->3050)</span></li>

    <li class="list-group-item"><span>Artificial Intelligence/Machine Learning (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EC%21%C3%E34%3E%90%D4%2E%A0%F4%9C%CE%99ww%DD%D4%2B%5D%16%C9nX%19%E4%11%ECu%F2%E6v%3D%F4%E1%F8Q%27%7D%DA&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fe&amp;cnt=%9Ff%84%BEe"
          target="_new" style="color:blue;"></a>--->25347)</span></li>

    <li class="list-group-item"><span>Robotics (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FF%3C%D5%E5%26%3E%90%CE&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Ee&amp;cnt=%9E%60%8E%B2"
          target="_new" style="color:blue;"></a>--->3398)</span></li>

    <li class="list-group-item"><span>Enterprise &amp; Cloud Security (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E8%3D%C3%EF+%27%81%D4%3C%A9%F4%B4%CE%892X%DD%D29%5CX%F9n%14%21%F7%1B%F0e&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9A&amp;cnt=%9Eg%84%BEa"
          target="_new" style="color:blue;"></a>--->34343)</span></li>

    <li class="list-group-item"><span>AutoTech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EC%26%C3%E5%062%90%D5&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%84&amp;cnt=%98f%80%B3"
          target="_new" style="color:blue;"></a>--->5579)</span></li>

    <li class="list-group-item"><span>Gaming (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EA2%DA%E3%3C0&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Cj%9B%B3b&amp;cnt=%9Cg%86%B2k"
          target="_new" style="color:blue;"></a>--->14189)</span></li>

    <li class="list-group-item"><span>Health Tech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E56%D6%E6%26%3F%A7%D8%2C%A4&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Cc%9B%BBkb&amp;cnt=%9Eb%86%BEc"
          target="_new" style="color:blue;"></a>--->31141)</span></li>

    <li class="list-group-item"><span>AgTech (Food Tech) (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EC4%E3%EF1%3F%D3%95%09%A3%BB%B1%80%B9wx%D9%94&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%98k%86&amp;cnt=%99e%87%BD"
          target="_new" style="color:blue;"></a>--->4607)</span></li>

    <li class="list-group-item"><span>Education/Online Learning (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E87%C2%E93%23%9A%D2%21%E3%9B%BB%CC%84%7C%7E%91%F1%29Y%0A%C4b%193&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9C%60%9B%BBk%60&amp;cnt=%9Cb%80%BCe"
          target="_new" style="color:blue;"></a>--->11767)</span></li>

    <li class="list-group-item"><span>Augmented Reality (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EC%26%D0%E779%87%D8%2B%EC%86%B0%C1%81%7Bo%C8&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%98b&amp;cnt=%9Ca%83%B3e"
          target="_new" style="color:blue;"></a>--->12497)</span></li> <!--42,-->

    <li class="list-group-item"><span>Big Data (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EF%3A%D0%AA%166%87%DC&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%99&amp;cnt=%98a%86%B3"
          target="_new" style="color:blue;"></a>--->5219)</span></li>

    <!--	<li class="list-group-item"><span>TechWizards (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%F96%D4%E2%05%3E%89%DC%3D%A8%A7&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%99&amp;cnt=%98a%86%B3" target="_new" style="color:blue;"></a>5219)</span></li>-->
    <li class="list-group-item"><span>CleanTech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%3F%D2%EB%3C%03%96%DE%27&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9B%7F%86%B2a%7B%C1%8D%7E&amp;cnt=%98a%8E%B8"
          target="_new" style="color:blue;"></a>--->5292)</span></li>
    <li class="list-group-item"><span>Autonomous Vehicles (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EC%26%C3%E5%3C8%9E%D2%3A%BF%F4%83%C5%85%7Bx%DD%D8%3F&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%98k&amp;cnt=%95b%85"
          target="_new" style="color:blue;"></a>--->812)</span></li>
    <li class="list-group-item"><span>Electric Vehicles (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E8%3F%D2%E9%26%25%9A%DEo%9A%B1%BD%C9%8E%7E%7E%C2&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%8F&amp;cnt=%9Fb%84"
          target="_new" style="color:blue;"></a>--->213)</span></li>
    <li class="list-group-item"><span>Green Hydrogen (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EA%21%D2%EF%3Cw%BB%C4%2B%BE%BB%B2%C5%83&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%80&amp;cnt=%9Ef%87"
          target="_new" style="color:blue;"></a>--->350)</span></li>
    <li class="list-group-item"><span>InsureTech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E4%3D%C4%FF+2%A7%D8%2C%A4&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Bk&amp;cnt=%99b%87"
          target="_new" style="color:blue;"></a>--->410)</span></li>
    <li class="list-group-item"><span>Digital Banks (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E9%3A%D0%E3%266%9F%9D%0D%AD%BA%BE%D3&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Ce%84&amp;cnt=%9Cb%87%BE%60"
          target="_new" style="color:blue;"></a>--->11042)</span></li>
    <li class="list-group-item"><span>Sustainability (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%26%C4%FE3%3E%9D%DC%2D%A5%B8%BC%D4%94&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%8E&amp;cnt=%94d%84"
          target="_new" style="color:blue;"></a>--->973)</span></li>
    <li class="list-group-item"><span>Biotechnology (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EF%3A%D8%FE74%9B%D3+%A0%BB%B2%D9&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Ce%8F&amp;cnt=%94e%83%B9"
          target="_new" style="color:blue;"></a>--->9643)</span></li>
    <li class="list-group-item"><span>AgriTech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EC4%C5%E3%062%90%D5&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Cf%85&amp;cnt=%99c%8E%BA"
          target="_new" style="color:blue;"></a>--->4090)</span></li>
    <!--	<li class="list-group-item"><span>Fundraising (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EB%26%D9%EE+6%9A%CE%26%A2%B3&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fa%87&amp;cnt=%98e%86" target="_new" style="color:blue;"></a>561)</span></li>-->

    <li class="list-group-item"><span>Battery Technologies (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EF2%C3%FE7%25%8A%9D%1B%A9%B7%BD%CE%82%7Et%D6%D4%29K&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fa%86&amp;cnt=%98e%86"
          target="_new" style="color:blue;"></a>--->561)</span></li>
    <li class="list-group-item"><span>5G (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%98%14&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fa%86&amp;cnt=%9Ca%8F%BD"
          target="_new" style="color:blue;"></a>--->1287)</span></li>
    <li class="list-group-item"><span>Blockchain (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EF%3F%D8%E994%9B%DC%26%A2&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Bf&amp;cnt=%9Ef%83%B3"
          target="_new" style="color:blue;"></a>--->3549)</span></li>
    <li class="list-group-item"><span>Climate Tech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%3F%DE%E73%23%96%9D%1B%A9%B7%BD&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%86&amp;cnt=%99e%84"
          target="_new" style="color:blue;"></a>--->463)</span></li>
    <li class="list-group-item"><span>MarTech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E02%C5%DE74%9B&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9B%60&amp;cnt=%9Eb%82%BD"
          target="_new" style="color:blue;"></a>--->3157)</span></li>
    <li class="list-group-item"><span>Woman Led (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FA%3C%DA%EB%3Cw%BF%D8%2B&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%81%A6%60e%C2&amp;cnt=%9Fa%85%BF"
          target="_new" style="color:blue;"></a>--->2225)</span></li>
    <li class="list-group-item"><span>DeepTech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E96%D2%FA%062%90%D5&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fa%83&amp;cnt=%9Cf%80%B2"
          target="_new" style="color:blue;"></a>--->1578)</span></li>
    <li class="list-group-item"><span>Cybersecurity (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%2A%D5%EF+%24%96%DE%3A%BE%BD%A1%D9&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Ba&amp;cnt=%9Eg%84%BE"
          target="_new" style="color:blue;"></a>--->3434)</span></li>
    <li class="list-group-item"><span>Music &amp; Digital Entertainment (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E0%26%C4%E31w%D5%9D%0B%A5%B3%BC%D4%8C%7E%3B%F4%D38%5D%0A%DEj%1E%3A%E8%17%EAh&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%83&amp;cnt=%95d%8F"
          target="_new" style="color:blue;"></a>--->878)</span></li>
    <li class="list-group-item"><span>Cloud Technologies (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%3F%D8%FF6w%A7%D8%2C%A4%BA%BA%CC%82ur%D4%CE&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Ck%83&amp;cnt=%9F%60%80%BFk"
          target="_new" style="color:blue;"></a>--->23759)</span></li>
    <li class="list-group-item"><span>CRYPTO 2025++ (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%01%EE%DA%06%18%D3%8F%7F%FE%E1%FE%8B&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Be&amp;cnt=%95d%8F"
          target="_new" style="color:blue;"></a>--->878)</span></li>
    <li class="list-group-item"><span>Medical Devices Innovations(<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E06%D3%E316%9F%9D%0B%A9%A2%BC%C3%88a%3B%F8%D3%22W%0E%CB%7F%1E%3B%EB%01&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Bj&amp;cnt=%9Ac%80%BC"
          target="_new" style="color:blue;"></a>--->7076)</span></li>
    <li class="list-group-item"><span>Failure Analysis (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EB2%DE%E6%27%25%96%9D%0E%A2%B5%B9%D9%9E%7Bh&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fa%82&amp;cnt=%9Fb%81"
          target="_new" style="color:blue;"></a>--->216)</span></li>
    <li class="list-group-item"><span>Web 3.0 (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FA6%D5%AAay%C3&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%85&amp;cnt=%9Cf%85"
          target="_new" style="color:blue;"></a>--->152)</span></li>
    <!--<li class="list-group-item"><span>CX 360 (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%0B%97%B9dg&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Fa%84&cnt=%9Ac%84" target="_new" style="color:blue;"></a>703)</span></li>
    <li class="list-group-item"><span>Gen Z (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EA6%D9%AA%08&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Fb%8F&cnt=%9Bj" target="_new" style="color:blue;"></a>69)</span></li>-->
    <li class="list-group-item"><span>Charity (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%3B%D6%F8%3B%23%8A&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fa%85&amp;cnt=%9Ca%87%B9"
          target="_new" style="color:blue;"></a>--->1203)</span></li>
    <li class="list-group-item"><span>Nanotechnology (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E32%D9%E5%262%90%D5%21%A3%B8%BA%C7%94&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Eb%9B%BBka&amp;cnt=%9Bg%8F%B2"
          target="_new" style="color:blue;"></a>--->6488)</span></li>
    <li class="list-group-item"><span>Robotics (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FF%3C%D5%E5%26%3E%90%CE&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Cb&amp;cnt=%98%60%82%BF"
          target="_new" style="color:blue;"></a>--->5355)</span></li>
    <li class="list-group-item"><span>SAAS (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%12%F6%D9&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%87&amp;cnt=%9Cg%80%B9"
          target="_new" style="color:blue;"></a>--->1473)</span></li>
    <!--	<li class="list-group-item"><span>Gov Tech (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EA%3C%C1%DE74%9B&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Fb%80&cnt=%9Cj%8F%BE" target="_new" style="color:blue;"></a>1984)</span></li>-->
    <li class="list-group-item"><span>WellBeing (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FA6%DB%E6%102%9A%D3%28&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%86&amp;cnt=%9B%60"
          target="_new" style="color:blue;"></a>--->63)</span></li>
    <li class="list-group-item"><span>Quantum Computing (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FC%26%D6%E4%26%22%9E%9D%0C%A3%B9%A5%D5%99%7Bu%D6&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Ek&amp;cnt=%9Ed%85%B9"
          target="_new" style="color:blue;"></a>--->3723)</span></li>
    <li class="list-group-item"><span>Space Tech (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%23%D6%E97w%A7%D8%2C%A4&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Bd&amp;cnt=%9E%60%84%BC"
          target="_new" style="color:blue;"></a>--->3336)</span></li>
    <!--<li class="list-group-item"><span>Mad Science (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E02%D3%AA%014%9A%D8%21%AF%B1&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Fa%83&cnt=%9Cf%80%B2" target="_new" style="color:blue;"></a>1578)</span></li>-->
    <li class="list-group-item"><span>European Startups (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E8%26%C5%E5%222%92%D3o%9F%A0%B4%D2%99gk%C2&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9F%60%84&amp;cnt=%9Be"
          target="_new" style="color:blue;"></a>--->66)</span></li>
    <!--<li class="list-group-item"><span>Startup Ecosystems (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%27%D6%F8%26%22%83%9D%0A%AF%BB%A6%D9%9Ef%7E%DC%CE&ShowType=%FE%23%D2%EB92%81%CE&EID=%99d&cnt=%9Ag%86%B3" target="_new" style="color:blue;"></a>7419)</span></li>-->
    <li class="list-group-item"><span>Israeli Startup Magic (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E4+%C5%EB7%3B%9A%9D%1C%B8%B5%A7%D4%98b%3B%FC%DC%2BQ%1B&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9F%60%87&amp;cnt=%9Ce%85"
          target="_new" style="color:blue;"></a>--->162)</span></li>
    <li class="list-group-item"><span>Smart Cities (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%3E%D6%F8%26w%B0%D4%3B%A5%B1%A6&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9F%60%82&amp;cnt=%9Cc%8F%BB"
          target="_new" style="color:blue;"></a>--->1081)</span></li>
    <li class="list-group-item"><span>Future of Work (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EB%26%C3%FF+2%D3%D2%29%EC%83%BA%D2%86&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%8E&amp;cnt=%9Ce%84%BF"
          target="_new" style="color:blue;"></a>--->1635)</span></li>
    <li class="list-group-item"><span>Impact Investment (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E4%3E%C7%EB1%23%D3%F4%21%BA%B1%A6%D4%80wu%C5&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fc%81&amp;cnt=%9B%60%80%B8"
          target="_new" style="color:blue;"></a>--->6372)</span></li>
    <li class="list-group-item"><span>Hiring &amp; Workforce (<!---<a
          href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E5%3A%C5%E3%3C0%D3%9Bo%9B%BB%A7%CB%8B%7Di%D2%D8&amp;ShowType=%FE%23%D2%EB92%81%CE&amp;EID=%9Fb%81&amp;cnt=%9Cc%8E"
          target="_new" style="color:blue;"></a>--->109)</span></li>

    <!--li class="list-group-item"><span>Cloud Technologies/Services (<a href="Show_Event_Speakers.asp?SrcType=%EE%3F%D8%FF6w%A7%D8%2C%A4%BA%BA%CC%82ur%D4%CEck%1D%D8%7D%1E7%E0%01&ShowType=%FE%23%D2%EB92%81%CE&EID=%98c%9B%BBjc&cnt=%9Fc%85%BDc" target="_new" style="color:blue;"></a>20271)</span></li>
    
    <li class="list-group-item"><span>Digital Health (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E9%3A%D0%E3%266%9F%9D%07%A9%B5%B9%D4%85&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Cc%9B%BBkb&cnt=%9Fd%86" target="_new" style="color:blue;"></a>271)</span></li>
    <li class="list-group-item"><span>Diversity, Equity & Inclusion (DEI) (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E9%3A%C1%EF+%24%9A%C96%E0%F4%90%D1%98%7Bo%C8%9Dj%181%C4h%1B%21%F6%1B%EBr&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Fc%82&cnt=%9Fd%86" target="_new" style="color:blue;"></a>271)</span></li>
    <li class="list-group-item"><span>Diversity Equity & Inclusion (DEI) (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E9%3A%C1%EF+%24%9A%C96%EC%91%A4%D5%84fb%91%9Blq%16%C9g%02%27%EC%1D%EA%3C%B4%C7%138%B8&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Fc%82" target="_new" style="color:blue;"></a>271)</span></li>
    
    <li class="list-group-item"><span>Smart Cities (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%FE%3E%D6%F8%26w%B0%D4%3B%A5%B1%A6&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Ek" target="_new" style="color:blue;"></a>271)</span></li>
              <li class="list-group-item"><span>Fashion & Design (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EB2%C4%E2%3B8%9D%9Di%EC%90%B0%D3%84uu&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Cf" target="_new" style="color:blue;"></a>271)</span></li>
  <li class="list-group-item"><span>Biotech (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EF%3A%D8%FE74%9B&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Ce%8F" target="_new" style="color:blue;"></a>271)</span></li>
              <li class="list-group-item"><span>Blockchain (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EF%3F%D8%E994%9B%DC%26%A2&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Bf%9B%BBje" target="_new" style="color:blue;"></a>271)</span></li>
              <li class="list-group-item"><span>Cybersecurity (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%EE%2A%D5%EF+%24%96%DE%3A%BE%BD%A1%D9&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Ba%9B%BBje" target="_new" style="color:blue;"></a>271)</span></li>
              <li class="list-group-item"><span>Diversity, Equity & Inclusion (DEI) (<a href="https://www.strategyr.com/evolv/Show_Event_Speakers.asp?SrcType=%E9%3A%C1%EF+%24%9A%C96%E0%F4%90%D1%98%7Bo%C8%9Dj%181%C4h%1B%21%F6%1B%EBr%BC%AB%124%D8%A9&ShowType=%FE%23%D2%EB92%81%CE&EID=%9Ba%9B%BBje%DF%8F%7F%F9" target="_new" style="color:blue;"></a>271)</span></li-->


  </ul></div>
							
							
							
							
							</div>
							
							
							<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 ">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Sponsors" role="button" aria-expanded="false" aria-controls="collapseExample">
							
							<div  style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">ZING<sup>TM</sup> SPONSORS</h3>							
							 <h3 class="mt-2 text-capitalize   h2  counter">
							 <span class=' font-display3 counter' data-min='1' data-max='731574' data-delay='5' data-increment='10000'>22476</span>
							 </h3>
							</div>
							</a>
						<hr/>
						<!--<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Sponsors" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">SPONSORS</h5></a>-->
							<div class="collapse" id="EVOLV_Sponsors">
							<!--&SRCWord=[A]-->
							    <ul class="list-group list-group-flush mb-3 event_speaker_list">
      <li class="list-group-item"><span>Supply Chain Management (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Supply Chain Management&amp;ShowType=Speakers&amp;EID=202" target="_new" style="color:blue;"></a>--->542)</span></li>
      <li class="list-group-item"><span>Artificial Intelligence/Machine Learning (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Artificial Intelligence/Machine Learning&amp;ShowType=Speakers&amp;EID=26" target="_new" style="color:blue;"></a>--->2425)</span></li>
      <li class="list-group-item"><span>Robotics (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Robotics&amp;ShowType=Speakers&amp;EID=36" target="_new" style="color:blue;"></a>--->588)</span></li>
      <li class="list-group-item"><span>Enterprise &amp; Cloud Security (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Enterprise and Cloud Security&amp;ShowType=Speakers&amp;EID=7" target="_new" style="color:blue;"></a>--->5258)</span></li>
      <li class="list-group-item"><span>AutoTech (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=AutoTech&amp;ShowType=Speakers&amp;EID=203" target="_new" style="color:blue;"></a>--->621)</span></li>
      <li class="list-group-item"><span>Gaming (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Gaming&amp;ShowType=Speakers&amp;EID=19,90" target="_new" style="color:blue;"></a>--->1175)</span></li>
      <li class="list-group-item"><span>Health Tech (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=HealthTech&amp;ShowType=Speakers&amp;EID=10,195" target="_new" style="color:blue;"></a>--->3513)</span></li>
      <li class="list-group-item"><span>AgTech (Food Tech) (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=AgTech (Food Tech)&amp;ShowType=Speakers&amp;EID=581" target="_new" style="color:blue;"></a>--->581)</span></li>
      <li class="list-group-item"><span>Education/Online Learning (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Education/Online Learning&amp;ShowType=Speakers&amp;EID=13,197" target="_new" style="color:blue;"></a>--->1420)</span></li>
      <li class="list-group-item"><span>Augmented Reality (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Augmented Reality&amp;ShowType=Speakers&amp;EID=42,51" target="_new" style="color:blue;"></a>--->1096)</span></li>
      <li class="list-group-item"><span>Big Data (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Supply Chain Management&amp;ShowType=Speakers&amp;EID=4" target="_new" style="color:blue;"></a>--->675)</span></li>
      <li class="list-group-item"><span>CleanTech (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=CleanTech&amp;ShowType=Speakers&amp;EID=6,183,201" target="_new" style="color:blue;"></a>--->914)</span></li>
      <li class="list-group-item"><span>Cloud Technologies/Services (<!---<a href="https://www.strategyr.com/evolv/Show_Event_Sponsors.asp?SrcType=Cloud Technologies/Services&amp;ShowType=Speakers&amp;EID=50,184" target="_new" style="color:blue;"></a>--->3668)</span></li>
      
    </ul></div>
							
							</div>
							
							
							
							<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 ">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Media" role="button" aria-expanded="false" aria-controls="collapseExample">
								<div  style="height:55px;">
								<h3 class="mt-4 text-capitalize  h3 ">WORLD MEDIA</h3>							
								<h3 class="mt-2 text-capitalize   h2  counter">
								 <span class=' font-display3 counter' data-min='1' data-max='731574' data-delay='5' data-increment='10000'>210045</span>
								</h3>
								</div>
							</a>
							<hr/>
							<!--<a class="collapse_click collapsed" data-toggle="collapse" href="#EVOLV_Media" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">MEDIA</h5></a>-->
							<div class="collapse" id="EVOLV_Media">							
							<ul class="list-group list-group-flush mb-3 event_speaker_list">							
							<li class="list-group-item"><span>Companies (<!---a href="https://www.strategyr.com/evolv/Show_Media_Companies.asp?GTcountry=World&SRCWord=[A]&ShowType=Media" target="_new" style="color:blue;"></a-->32549)</span></li>
							
							<li class="list-group-item"><span>Executives (<!---a href="https://www.strategyr.com/evolv/Show_Media_People.asp?SRCWord=%F6%12%EA&GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33" target="_new" style="color:blue;"></a-->88748)</span></li>
							
							<li class="list-group-item list-group-sub"><span>Writer (<!--a href="https://www.strategyr.com/evolv/Show_Media_People.asp?GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33&actType=%FA%21%DE%FE7%25" target="_new" style="color:blue;">5012</a-->5012)</span></li>
							<li class="list-group-item list-group-sub"><span>Journalist (<!--a href="https://www.strategyr.com/evolv/Show_Media_People.asp?SRCWord=%F6%12%EA&GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33&actType=%E7%3C%C2%F8%3C6%9F%D4%3C%B8" target="_new" style="color:blue;">2007</a-->2007)</span></li>
							<li class="list-group-item list-group-sub"><span>Editor (<!--a href="https://www.strategyr.com/evolv/Show_Media_People.asp?SRCWord=%F6%12%EA&GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33&actType=%E87%DE%FE%3D%25" target="_new" style="color:blue;"></a--->13823)</span></li>
							<li class="list-group-item list-group-sub"><span>Reporter (<!--a href="https://www.strategyr.com/evolv/Show_Media_People.asp?SRCWord=%F6%12%EA&GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33&actType=%FF6%C7%E5+%23%96%CF" target="_new" style="color:blue;"></a--->1845</a>)</li>
							<li class="list-group-item list-group-sub"><span>Blogger (<!--a href="https://www.strategyr.com/evolv/Show_Media_People.asp?SRCWord=%F6%12%EA&GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33&actType=%EF%3F%D8%ED52%81" target="_new" style="color:blue;"></a--->3351)</span></li>
							<li class="list-group-item list-group-sub"><span>Publisher (<!--a href="https://www.strategyr.com/evolv/Show_Media_People.asp?SRCWord=%F6%12%EA&GTcountry=%FA%3C%C5%E66&ShowType=%E06%D3%E33&actType=%FD%26%D5%E6%3B%24%9B%D8%3D" target="_new" style="color:blue;"></a--->1601)</span></li>
							<li class="list-group-item list-group-sub"><span>Others (<!--a  style="color:blue;"></a--->61109)</span></li>
							
							</ul></div>
							
							
							
							
							
							</div>
							<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 ">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#AnalystFirms" role="button" aria-expanded="false" aria-controls="collapseExample">
								<div style="height:55px;" >
								<h3 class="mt-4 text-capitalize  h3 " >ANALYSTS</h3>
								<h3 class="mt-2 text-capitalize   h2  counter">
								 <span class=' font-display3 counter' data-min='1' data-max='731574' data-delay='5' data-increment='10000'>10295</span>
								 </h3>							
								</div>
							</a>
							<hr/>
						
						<!--	<a class="collapse_click collapsed" data-toggle="collapse" href="#AnalystFirms" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">ANALYSTS</h5></a> -->
							<div class="collapse" id="AnalystFirms">	
							<ul class="list-group list-group-flush mb-3 event_speaker_list">
							<li class="list-group-item"><span>Executives (<!---a href="https://www.strategyr.com/evolv/Show_AnalystFirms_People.asp?GTcountry=World&SRCWord=[A]&ShowType=Analyst Firm" target="_new" style="color:blue;"></a--->10295)</span></li>
							</ul></div>
							
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
 <script   src="https://code.jquery.com/jquery-3.6.3.js"integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
 <script src="./plugins/animated-counter/numscroller-1.0.js"/></script>

 
 
<script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.FloatPosition.TOP_LEFT}, 'google_translate_element');
    }

	function triggerHtmlEvent(element, eventName) {
	  var event;
	  if (document.createEvent) {
		event = document.createEvent('HTMLEvents');
		event.initEvent(eventName, true, true);
		element.dispatchEvent(event);
	  } else {
		event = document.createEventObject();
		event.eventType = eventName;
		element.fireEvent('on' + event.eventType, event);
	  }
	}

	jQuery('.lang-select').click(function() {
	  var theLang = jQuery(this).attr('data-lang');
	  jQuery('.goog-te-combo').val(theLang);

	  //alert(jQuery(this).attr('href'));
	  window.location = jQuery(this).attr('href');
	  location.reload();

	});
  </script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>

</html>