<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>INNOVATOR ECOSYSTEMS - Evolve Silicon Valley</title>
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
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css" />
  <link rel="stylesheet" href="plugins/slick/slick.css" />
  <link rel="stylesheet" href="plugins/slick/slick-theme.css" />
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="plugins/aos/aos.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />

  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
</head>
<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<!--============================
=            HEADER           =
=============================-->
<header-component></header-component>
<!--============================
    PLACEKEEPTER BANNER
=============================--> 
<div class="body-content">
  <section class="section mt-0 pt-0 ">
    <div class="container">
      <!---<div class="row">      
        <h1 class="font-display1 text-center main-font-color col-lg-11 col-md-12 mx-auto" style="text-transform: uppercase;">Sustainability</h1>
    </div> --->   

   <div  id="collapseblock border-none"> 
      <%If trim(request("GetTypePage"))="STARTUPS" Then%>
			<%If trim(request("GetSubTypePage"))="REGION" Then%>
			  <div class="mt-0  " id="domain-experts" data-parent="#collapseblock" >  
			  
				<iframe class="Show_Region_Countries_Companies" src="https://www.strategyr.com/evolv/Show_Region_Countries_Companies.asp?GTregion=<%=Server.URLEncode(trim(request("GTregion")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>
			<!--	<iframe class="Show_Region_Countries_Companies" src="Show_Region_Countries_Companies.asp?GTregion=<%=Server.URLEncode(trim(request("GTregion")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>-->
			  </div>
			<%ElseIf trim(request("GetSubTypePage"))="COUNTRY" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Country_Companies" src="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=<%=Server.URLEncode(trim(request("GTcountry")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>
			  </div>
			<%End If%>
      <%ElseIf trim(request("GetTypePage"))="INVESTORS" Then%>
			<%If trim(request("GetSubTypePage"))="REGION" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Investor_country_Companies" src="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=<%=Server.URLEncode(trim(request("GTcountry")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&InvType=<%=Server.URLEncode(trim(request("InvType")))%>"></iframe>
			  </div>
			<%ElseIf trim(request("GetSubTypePage"))="TYPE" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Investor_country_Companies" src="https://www.strategyr.com/evolv/Show_Investor_country_Companies.asp?GTcountry=<%=Server.URLEncode(trim(request("GTcountry")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&InvType=<%=Server.URLEncode(trim(request("InvType")))%>"></iframe>
			  </div>
			<%ElseIf trim(request("GetSubTypePage"))="PEOPLE" Then%>
			  <div class="mt-0  " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Investor_country_Companies_people" src="https://www.strategyr.com/evolv/Show_Investor_country_Companies_people.asp?GTcountry=<%=Server.URLEncode(trim(request("GTcountry")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&InvType=<%=Server.URLEncode(trim(request("InvType")))%>"></iframe>
			  </div>
			<%End If%>
      <%ElseIf trim(request("GetTypePage"))="ENTERPRISES" Then%>
			<%If trim(request("GetSubTypePage"))="REGION" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_enterprise_country_Companies" src="https://www.strategyr.com/evolv/Show_enterprise_country_Companies.asp?GTregion=<%=Server.URLEncode(trim(request("GTregion")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>
			  </div>
			<%ElseIf trim(request("GetSubTypePage"))="COUNTRY" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Country_Companies" src="https://www.strategyr.com/evolv/Show_Country_Companies.asp?GTcountry=<%=Server.URLEncode(trim(request("GTcountry")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>
			  </div>
			<%End If%>
      <%ElseIf trim(request("GetTypePage"))="INFLUENCERS" Then%>
			<%If trim(request("GetSubTypePage"))="REGION" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Region_Country_People" src="https://www.strategyr.com/evolv/Show_Region_Country_People.asp?GTregion=<%=Server.URLEncode(trim(request("GTregion")))%>&ShowType=<%=Server.URLEncode(trim(request("ShowType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>
			  </div>
			<%ElseIf trim(request("GetSubTypePage"))="TIER" Then%>
			  <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
				<iframe class="Show_Country_People" src="https://www.strategyr.com/evolv/Show_Country_People.asp?SrcType=<%=Server.URLEncode(trim(request("SrcType")))%>&SRCWord=<%=Server.URLEncode(trim(request("SRCWord")))%>"></iframe>
			  </div>
			<%End If%>
      <%End If%>
    </div>
  </section>
</div>
</div>
<!--====  End of Page Title  ====-->
<!--============================
  Footer            
=============================-->
<footer-component></footer-component>
  <!---============================
           ScrollTop        
=============================--->
<scrolltop-component></scrolltop-component>

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
  <script src="./js/submenu_select.js"></script>

  <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script type="text/javascript">
    $(document).ready(function(){
$('#google_translate_element').bind('DOMNodeInserted', function(event) {
$('.goog-te-menu-value span:first').html('LANGUAGE');
$('.goog-te-menu-frame.skiptranslate').load(function(){
    setTimeout(function(){
    $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('LANGUAGE');    
    }, 100);
});
});
});
</script>
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
</body>
</html>