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
<!--#include file="Encrypt_Decrypt_Links.asp"-->
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>INNOVATOR SYNERGIES - Evolv</title>

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



<!---body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"--->

<body class="body-wrapper" id="container">


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
					<h2 class="main-font-color">INNOVATOR ECOSYSTEMS</h2>
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
							
							 
								<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%EC5%C5%E316&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_blank" style="color:blue;">3459</a>)</span></li>
								<!--<li class="list-group-item">Africa (80)</li>-->
							
							 
								<li class="list-group-item"><span>Asia (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_blank" style="color:blue;">99354</a>)</span></li>
								<!--<li class="list-group-item">Asia-Pacific (34523)</li>-->
							
							 
								<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E8%26%C5%E5%222&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_blank" style="color:blue;">118178</a>)</span></li>
								<!--<li class="list-group-item">Europe (93772)</li>-->
							
							 
								<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_blank" style="color:blue;">12504</a>)</span></li>
								<!--<li class="list-group-item">Latin America (6496)</li>-->
							
							 
								<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_blank" style="color:blue;">5421</a>)</span></li>
								<!--<li class="list-group-item">Middle East (2417)</li>-->
								<%
								link="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp"
								''target="_blank"
								%>
						<!--		<li class="list-group-item"><span>North America (<a href="view_Innovator_Synergies.asp?link=<%=link%>&GTregion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_new" style="color:blue;">492659</a>)</span></li>-->
							 
								<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&ShowType=%FE%07%F6%D8%06%02%A3%EE&SRCWord=%F6%12%EA" target="_blank" style="color:blue;">492659</a>)</span></li>
								<!--<li class="list-group-item">North America (469129)</li>-->
								
							  </ul>
							 </div>

							<a class="collapse_click collapsed" data-toggle="collapse" href="#startups_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">COUNTRY</h5></a>
							<div class="collapse" id="startups_bycountry"> 
							<ul class="list-group list-group-flush mb-3">
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags au"></div><span>Australia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+6%9F%D4%2E&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">16909</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Australia&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">16909</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags at"></div><span>Austria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+%3E%92&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">980</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Austria&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">980</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags be"></div><span>Belgium (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF6%DB%ED%3B%22%9E&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">3858</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Belgium&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">3858</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags br"></div><span>Brazil (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%21%D6%F0%3B%3B&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">4974</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Brazil&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">4974</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags bg"></div><span>Bulgaria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%26%DB%ED3%25%9A%DC&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">117</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Bulgaria&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">117</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ca"></div><span>Canada (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%D9%EB66&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">32043</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Canada&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">32043</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cn"></div><span>China (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3B%DE%E43&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">2091</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=China&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2091</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hr"></div><span>Croatia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%21%D8%EB%26%3E%92&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">124</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Croatia&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">124</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags dk"></div><span>Denmark (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E96%D9%E73%25%98&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">2950</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Denmark&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2950</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fi"></div><span>Finland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%3A%D9%E639%97&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">241</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Finland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">241</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fr"></div><span>France (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%21%D6%E412&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">7129</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=France&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">7129</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags de"></div><span>Germany (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA6%C5%E739%8A&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">9033</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Germany&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">9033</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gr"></div><span>Greece (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%21%D2%EF12&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">182</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Greece&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">182</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hu"></div><span>Hungary (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E5%26%D9%ED3%25%8A&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">223</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Hungary&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">223</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags in"></div><span>India (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%3D%D3%E33&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">11627</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=India&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">11627</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ie"></div><span>Ireland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%21%D2%E639%97&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">433</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Ireland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">433</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags il"></div><span>Israel (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4+%C5%EB7%3B&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">2417</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Israel&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2417</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags it"></div><span>Italy (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%27%D6%E6%2B&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">3066</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Italy&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">3066</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mx"></div><span>Mexico (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E06%CF%E318&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">1522</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Mexico&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">1522</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nl"></div><span>Netherlands (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E36%C3%E27%25%9F%DC%21%A8%A7&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">834</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Netherlands&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">834</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags no"></div><span>Norway (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E3%3C%C5%FD3%2E&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">242</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Norway&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">242</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pl"></div><span>Poland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%DB%EB%3C3&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">444</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Poland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">444</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pt"></div><span>Portugal (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%C5%FE%270%92%D1&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">391</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Portugal&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">391</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ro"></div><span>Romania (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FF%3C%DA%EB%3C%3E%92&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">264</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Romania&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">264</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sg"></div><span>Singapore (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3A%D9%ED3%27%9C%CF%2A&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">2312</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Singapore&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2312</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kr"></div><span>South Korea (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3C%C2%FE%3Aw%B8%D2%3D%A9%B5&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">1135</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=South Korea&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">1135</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags es"></div><span>Spain (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%23%D6%E3%3C&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">4162</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Spain&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">4162</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags se"></div><span>Sweden (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%D2%EE79&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">6405</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Sweden&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">6405</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ch"></div><span>Switzerland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%DE%FE%282%81%D1%2E%A2%B0&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">2545</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Switzerland&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">2545</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tw"></div><span>Taiwan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F92%DE%FD39&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">449</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=Taiwan&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">449</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gb"></div><span>United Kingdom (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%F6%26%A2%B3%B1%CF%80&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">50149</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=United Kingdom&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">50149</a>-->
							
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags us"></div><span>United States (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%EE%3B%AD%A0%B0%D3&SRCWord=%F6%12%EA&ShowType=%FE%07%F6%D8%06%02%A3%EE" target="_blank" style="color:blue;">437086</a>)</span></li>
							<!--<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=United States&SRCWord=[A]&ShowType=Startups" target="_new" style="color:blue;">437086</a>-->
							
							<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags "></div><span>Others (<a  style="color:blue;">125237</a>)</span></li>							
								
							  </ul>
								</div>
								
								
							
							
							
							</div>


						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12    mt-2 text-center mb-2  px-md-4">
							<div style="height:55px;">
							<h3 class="mt-4 text-capitalize  h3 ">INVESTORS</h3>
							<h3 class="mt-2 text-capitalize  h2 ">
							<span class=' font-display3 counter' data-min='1' data-max='114870' data-delay='5' data-increment='10000'>114871</span>
							
						
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#Investors_byRegion" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							<h5 class="font-weight-bold text-left">REGION</h5></a>
							<div class="collapse" id="Investors_byRegion">
							<ul class="list-group list-group-flush mb-3">
								<!--%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9-->
							                                                                       
								<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC5%C5%E316&SRCWord=%F6%12%EA&ShowType=<%=server.urlencode(EnDeCrypt("INVESTOR WORLD",CHkGiaPSWD))%>&InvType=%FF%16%F0%C3%1D%19" target="_blank" style="color:blue;">1092</a>)</span></li>
								<!--<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Africa&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">778</a>)</span></li>-->
								<!--<li class="list-group-item">Africa (778)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_blank" style="color:blue;">34858</a>)</span></li>
								<!--<li class="list-group-item"><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Asia-Pacific&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">24704</a>)</span></li>-->
								<!--<li class="list-group-item">Asia-Pacific (24704)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E8%26%C5%E5%222&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_blank" style="color:blue;">23182</a>)</span></li>
								<!--<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Europe&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">16430</a>)</span></li>-->
								<!--<li class="list-group-item">Europe (16430)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_blank" style="color:blue;">1932</a>)</span></li>
								<!--<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Latin America&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">1368</a>)</span></li>-->
								<!--<li class="list-group-item">Latin America (1368)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_blank" style="color:blue;">2214</a>)</span></li>
								<!--<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=Middle East&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">1566</a>)</span></li>-->
								<!--<li class="list-group-item">Middle East (1566)</li>-->
							
							                                                                       
								<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%FF%16%F0%C3%1D%19" target="_blank" style="color:blue;">51593</a>)</span></li>
								
								<!--<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_InvestorRegion_Countries.asp?GTregion=North America&ShowType=INVESTOR WORLD" target="_new" style="color:blue;">36561</a>)</span></li>-->
								<!--<li class="list-group-item">North America (36561)</li>-->
								
							  </ul>
							</div>  
							  <a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_bytype" role="button" aria-expanded="false" aria-controls="collapseExample">
							  <h5 class="font-weight-bold text-left">TYPE</h5></a>
							  <div class="collapse" id="INVESTORS_bytype">
								<ul class="list-group list-group-flush mb-3">
								<li class="list-group-item "><span>Venture Capital (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%FB6%D9%FE%27%25%96%9D%0C%AD%A4%BC%D4%8C%7E&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">66943</a>)</span></li>
								<li class="list-group-item "><span>Angel Group (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC%3D%D0%EF%3Ew%B4%CF+%B9%A4&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">5094</a>)</span></li>
								<li class="list-group-item "><span>Accelerator (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EC0%D4%EF%3E2%81%DC%3B%A3%A6&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">6099</a>)</span></li>
								<li class="list-group-item "><span>Incubator (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%E4%3D%D4%FF06%87%D2%3D&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">3495</a>)</span></li>
								<li class="list-group-item "><span>Family Investment Office (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EB2%DA%E3%3E%2E%D3%F4%21%BA%B1%A6%D4%80wu%C5%9D%03%5E%1E%C3h%12&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">3085</a>)</span></li>
								<li class="list-group-item "><span>Private Equity Firm (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%FD%21%DE%FC3%23%96%9D%0A%BD%A1%BC%D4%942%5D%D8%CF%21&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">26425</a>)</span></li>
								<li class="list-group-item "><span>Corporate Venture Capital (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=%EE%3C%C5%FA%3D%25%92%C9%2A%EC%82%B0%CE%99gi%D4%9D%0FY%08%C3%7F%168&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">3730</a>)</span></li>
								</ul>
							  </div>
<a class="collapse_click collapsed" data-toggle="collapse" href="#INVESTORS_byperson" role="button" aria-expanded="false" aria-controls="collapseExample">	  
							
							  <h5 class="font-weight-bold text-left">PEOPLE</h5></a>
							  <div class="collapse" id="INVESTORS_byperson">
								<ul class="list-group list-group-flush mb-3"><!--%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&-->
								<li class="list-group-item "><span>Investors (<a href="https://www.strategyr.com/evolv/Show_Investor_country_Companies_people.asp?GTcountry=%FB6%D9%FE%27%25%96%9D%0C%AD%A4%BC%D4%8C%7E&SRCWord=%F6%12%EA&ShowType=<%=server.urlencode(EnDeCrypt("INVESTORS",CHkGiaPSWD))%>&InvType=%E4%1D%E1%CF%01%03%BC%EF" target="_blank" style="color:blue;">85411</a>)</span></li>
							</ul>
</div>
							
							
							
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12     mt-2 text-center mb-2 ">
							<div style="height:55px;">						
							<h3 class="mt-4 text-capitalize  h3 ">ENTERPRISES</h3>
							<h3 class="mt-2 text-capitalize  h2 ">
							 <span class=' font-display3 counter' data-min='1' data-max='ENTERPRISES2369083' data-delay='5' data-increment='10000'>813545</span>
							
														
							</div>
							<hr/>
							<div  class="col-lg-12 col-12 mx-auto  text-left px-2">
							<a class="collapse_click collapsed" data-toggle="collapse" href="#ENTERPRISES_byregion" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">REGION</h5></a>	
							<div class="collapse" id="ENTERPRISES_byregion"> 							
							<ul class="list-group list-group-flush">							
							
																																				
								<li class="list-group-item"><span>Africa (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%EC5%C5%E316&SRCWord=%F6%12%EA&ShowType=<%=server.urlencode(EnDeCrypt("ENTERPRISES",CHkGiaPSWD))%>" target="_blank" style="color:blue;">7006</a>)</span></li>
								
								<!--li class="list-group-item">Africa (6893)%E8%1D%E3%CF</li-->
								
							
																																				
								<li class="list-group-item"><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_blank" style="color:blue;">262262</a>)</span></li>
								<!--li class="list-group-item">Asia-Pacific (150064)</li-->
								
							
																																				
								<li class="list-group-item"><span>Europe (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E8%26%C5%E5%222&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_blank" style="color:blue;">193474</a>)</span></li>
								<!--li class="list-group-item">Europe (193361)</li-->
								
							
																																				
								<li class="list-group-item"><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_blank" style="color:blue;">12936</a>)</span></li>
								<!--li class="list-group-item">Latin America (12823)</li-->
								
							
																																				
								<li class="list-group-item"><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_blank" style="color:blue;">11913</a>)</span></li>
								<!--li class="list-group-item">Middle East (11800)</li-->
								
							
																																				
								<li class="list-group-item"><span>North America (<a href="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1&SRCWord=%F6%12%EA&ShowType=%E8%1D%E3%CF" target="_blank" style="color:blue;">325954</a>)</span></li>
								<!--li class="list-group-item">North America (325841)</li-->
								
								
								
							  </ul>
							 </div>
							<a class="collapse_click collapsed" data-toggle="collapse" href="#ENTERPRISES_bycountry" role="button" aria-expanded="false" aria-controls="collapseExample">
							<h5 class="font-weight-bold text-left">COUNTRY</h5></a>
							<div class="collapse" id="ENTERPRISES_bycountry" style=""> 
							
							<ul class="list-group list-group-flush mb-3">
								

									<li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ar"></div><span>Argentina (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%21%D0%EF%3C%23%9A%D3%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1179)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags au"></div><span>Australia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+6%9F%D4%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">26474)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags at"></div><span>Austria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EC%26%C4%FE+%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2038)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags bd"></div><span>Bangladesh (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF2%D9%ED%3E6%97%D8%3C%A4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">887)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags by"></div><span>Belarus (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF6%DB%EB+%22%80&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">243)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags be"></div><span>Belgium (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF6%DB%ED%3B%22%9E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3987)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags br"></div><span>Brazil (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%21%D6%F0%3B%3B&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">7069)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags bg"></div><span>Bulgaria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EF%26%DB%ED3%25%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">806)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kh"></div><span>Cambodia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%DA%E8%3D3%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">179)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cm"></div><span>Cameroon (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%DA%EF+8%9C%D3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">55)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ca"></div><span>Canada (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE2%D9%EB66&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">33155)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cl"></div><span>Chile (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3B%DE%E67&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">975)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cn"></div><span>China (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3B%DE%E43&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">30254)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags co"></div><span>Colombia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%3C%DB%E5%3F5%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">859)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hr"></div><span>Croatia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%21%D8%EB%26%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">602)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags cz"></div><span>Czech Republic (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EE%29%D2%E9%3Aw%A1%D8%3F%B9%B6%B9%C9%8E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2705)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags dk"></div><span>Denmark (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E96%D9%E73%25%98&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3882)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags do"></div><span>Dominican Republic (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E9%3C%DA%E3%3C%3E%90%DC%21%EC%86%B0%D0%98pw%D8%DE&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">90)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ec"></div><span>Ecuador (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E80%C2%EB68%81&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">135)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags eg"></div><span>Egypt (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E84%CE%FA%26&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">803)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags et"></div><span>Ethiopia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E8%27%DF%E3%3D%27%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">96)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fi"></div><span>Finland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%3A%D9%E639%97&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3165)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags fr"></div><span>France (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EB%21%D6%E412&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">16396)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags de"></div><span>Germany (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA6%C5%E739%8A&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">28713)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gh"></div><span>Ghana (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%3B%D6%E43&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">235)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gr"></div><span>Greece (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%21%D2%EF12&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1310)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gt"></div><span>Guatemala (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%EA%26%D6%FE7%3A%92%D1%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">56)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hk"></div><span>Hong Kong (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E5%3C%D9%EDr%1C%9C%D3%28&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">4990)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags hu"></div><span>Hungary (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E5%26%D9%ED3%25%8A&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1374)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags in"></div><span>India (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%3D%D3%E33&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">36444)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags id"></div><span>Indonesia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%3D%D3%E5%3C2%80%D4%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2311)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ir"></div><span>Iran (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%21%D6%E4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">365)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ie"></div><span>Ireland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%21%D2%E639%97&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">4169)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags il"></div><span>Israel (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4+%C5%EB7%3B&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">7047)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags it"></div><span>Italy (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E4%27%D6%E6%2B&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">19345)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags jp"></div><span>Japan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E72%C7%EB%3C&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">17060)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags jo"></div><span>Jordan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E7%3C%C5%EE39&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">271)</a></span>
								DashBoardDisplay
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ke"></div><span>Kenya (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E66%D9%F33&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">771)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kw"></div><span>Kuwait (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E6%26%C0%EB%3B%23&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">140)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags lb"></div><span>Lebanon (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E16%D5%EB%3C8%9D&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">279)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags my"></div><span>Malaysia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E02%DB%EB%2B%24%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">4119)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mx"></div><span>Mexico (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E06%CF%E318&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1812)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ma"></div><span>Morocco (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E0%3C%C5%E514%9C&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">194)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags mm"></div><span>Myanmar (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E0%2A%D6%E4%3F6%81&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">99)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nl"></div><span>Netherlands (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E36%C3%E27%25%9F%DC%21%A8%A7&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2989)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags nz"></div><span>New Zealand (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E36%C0%AA%082%92%D1%2E%A2%B0&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3416)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ng"></div><span>Nigeria (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E3%3A%D0%EF+%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1143)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags no"></div><span>Norway (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E3%3C%C5%FD3%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3083)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags om"></div><span>Oman (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%E2%3E%D6%E4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">79)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pk"></div><span>Pakistan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD2%DC%E3%21%23%92%D3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1215)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pa"></div><span>Panama (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD2%D9%EB%3F6&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">165)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pe"></div><span>Peru (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD6%C5%FF&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">306)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ph"></div><span>Philippines (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3B%DE%E6%3B%27%83%D4%21%A9%A7&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_new" style="color:blue;">2509)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pl"></div><span>Poland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%DB%EB%3C3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">4247)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags pt"></div><span>Portugal (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FD%3C%C5%FE%270%92%D1&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2203)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags qa"></div><span>Qatar (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FC2%C3%EB+&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">186)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ro"></div><span>Romania (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FF%3C%DA%EB%3C%3E%92&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1914)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ru"></div><span>Russia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FF%26%C4%F9%3B6&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1215)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sa"></div><span>Saudi Arabia (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE2%C2%EE%3Bw%B2%CF%2E%AE%BD%B4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">769)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags sg"></div><span>Singapore (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3A%D9%ED3%27%9C%CF%2A&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">8008)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags za"></div><span>South Africa (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3C%C2%FE%3Aw%B2%DB%3D%A5%B7%B4&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3054)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags kr"></div><span>South Korea (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%3C%C2%FE%3Aw%B8%D2%3D%A9%B5&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">5134)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags es"></div><span>spain (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%DE%23%D6%E3%3C&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">12986)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags lk"></div><span>Sri Lanka (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%21%DE%AA%1E6%9D%D6%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">300)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags se"></div><span>Sweden (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%D2%EE79&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">6564)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ch"></div><span>Switzerland (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FE%24%DE%FE%282%81%D1%2E%A2%B0&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">8109)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tw"></div><span>Taiwan (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F92%DE%FD39&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3548)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tz"></div><span>Tanzania (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F92%D9%F039%9A%DC&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">124)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags th"></div><span>Thailand (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F9%3B%D6%E3%3E6%9D%D9&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1711)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags tr"></div><span>TURKEY (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F9%06%E5%C1%17%0E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">3389)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ug"></div><span>Uganda (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F84%D6%E466&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">183)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ua"></div><span>Ukraine (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F88%C5%EB%3B9%96&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2491)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ae"></div><span>United Arab Emirates (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%FC%3D%AD%B6%F5%E5%80%7Bi%D0%C9%29K&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">2653)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags gb"></div><span>United Kingdom (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%F6%26%A2%B3%B1%CF%80&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">55433)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags us"></div><span>United States (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F8%3D%DE%FE73%D3%EE%3B%AD%A0%B0%D3&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">292618)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags ve"></div><span>Venezuela (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FB6%D9%EF%28%22%96%D1%2E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">78)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags vn"></div><span>Vietnam (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%FB%3A%D2%FE%3C6%9E&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">1382)</a></span>
								
								

									</li><li class="list-group-item phoca-box-flags"><div class="phoca-flag-flags zw"></div><span>Zimbabwe (<a href="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=%F7%3A%DA%E835%84%D8&amp;SRCWord=%F6%12%EA&amp;ShowType=%E8%3D%C3%EF+%27%81%D4%3C%A9%A7" target="_blank" style="color:blue;">109)</a></span>
								
								DashBoardDisplay
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
							
							
								<li class="list-group-item "><span>Africa (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%EC5%C5%E316" target="_blank" style="color:blue;">33933</a>)</span></li>
							
							
								<li class="list-group-item "><span>Asia-Pacific (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%EC+%DE%EB%7F%07%92%DE%26%AA%BD%B6" target="_blank" style="color:blue;">509195</a>)</span></li>
							
							
								<li class="list-group-item "><span>Europe (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E8%26%C5%E5%222" target="_blank" style="color:blue;">964350</a>)</span></li>
							
							
								<li class="list-group-item "><span>Latin America (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E12%C3%E3%3Cw%B2%D0%2A%BE%BD%B6%C1" target="_blank" style="color:blue;">31307</a>)</span></li>
							
							
								<li class="list-group-item "><span>Middle East (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E0%3A%D3%EE%3E2%D3%F8%2E%BF%A0" target="_blank" style="color:blue;">58872</a>)</span></li>
							
							
								<li class="list-group-item "><span>North America (<a href="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTRegion=%E3%3C%C5%FE%3Aw%B2%D0%2A%BE%BD%B6%C1" target="_blank" style="color:blue;">3277675</a>)</span></li>
								
							  </ul>
							  </div>
							 
							<a class="collapse_click collapsed" data-toggle="collapse" href="#INFLUENCERS_byTier" role="button" aria-expanded="false" aria-controls="collapseExample"> 
							<h5 class="font-weight-bold text-left">TIER</h5></a>
							<div class="collapse" id="INFLUENCERS_byTier"> 
							<ul class="list-group list-group-flush mb-3">
							
							
							<li class="list-group-item "><span>CXO (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%EE%0B%F8" target="_blank" style="color:blue;">244540</a>)</span></li>
							<li class="list-group-item list-group-sub"><span>CEO (105654)</span></li>
							<li class="list-group-item list-group-sub"><span>CMO (10543)</span></li>
							<li class="list-group-item list-group-sub"><span>CIO (25692)</span></li>
							<li class="list-group-item list-group-sub"><span>CTO (39054)</span></li>
							<li class="list-group-item list-group-sub"><span>CFO (41088)</span></li>
							<li class="list-group-item "><span>VP (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%FB%03" target="_blank" style="color:blue;">570618</a>)</span></li>
							<li class="list-group-item "><span>DIRECTOR (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%E9%1A%E5" target="_blank" style="color:blue;">1030955</a>)</span></li>
							<li class="list-group-item "><span>MANAGER (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%E0%14%E5" target="_blank" style="color:blue;">1883468</a>)</span></li>
							<li class="list-group-item "><span>OTHER (<a href="https://www.strategyr.com/evolv/Show_Country_People.asp?SRCWord=%F6%12%EA&SrcType=%FF%16%E4%DE" target="_blank" style="color:blue;">923719</a>)</span></li>
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
				</div>
			</div>
		</div>
	</div>
	<iframe name="DashBoardDisplay" id="DashBoardDisplay" class="programdetial-frame"></iframe>
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