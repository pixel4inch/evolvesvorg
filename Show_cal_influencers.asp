<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Sustainability - Evolv</title>
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
  <section class="section pt-3 ">
   
      <!---<div class="row">      
        <h1 class="font-display1 text-center main-font-color col-lg-11 col-md-12 mx-auto" style="text-transform: uppercase;">Sustainability</h1>
    </div> --->   		
   <div  id="collapseblock border-none"> 
      <%If trim(request("EventId"))="ism" Then%>
      <div class="mt-0  border-top " id="collapseExample2" data-parent="#collapseblock" >  
        <iframe src="https://www.strategyr.com/evolv/Show_Israeli_Companies_People.asp?GTcountry=%FB6%D9%FE%27%25%96%9D%0C%AD%A4%BC%D4%8C%7E&SRCWord=%F6%12%EA&ShowType=%E4%1D%E1%CF%01%03%BC%EFo%9B%9B%87%EC%A9&InvType=%E4%1D%E1%CF%01%03%BC%EF" class="sponsors-frame "></iframe>
      </div>
      <%End If%>
	  <%If trim(request("EventId"))="femalelead" Then%> 
      <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
        <iframe class="domain-iframe" src="https://www.strategyr.com/evolv/Show_Women_Led_People.asp?GTcountry=&ShowType=%FE%23%D2%EB92%81%CE&InvType=&Start=%9D&E=&SrcType=%EF%BF%BD%20%EF%BF%BD%EF%BF%BD7;%EF%BF%BD%EF%BF%BD%1C%EF%BF%BD%EF%BF%BD%EF%BF%BD%D4%98b;%EF%BF%BD%EF%BF%BD%20Q%1B&SRCWord=&EncryptSTR="></iframe>
      </div>
	  <%End If%>
	  <%If trim(request("EventId"))="femaleunicon" Then%> 
      <div class="mt-0   " id="domain-experts" data-parent="#collapseblock" >  
        <iframe class="domain-iframe" src="https://www.strategyr.com/evolv/Show_Women_Founders_People.asp?GTcountry=&ShowType=%FE%23%D2%EB92%81%CE&InvType=&Start=%9D&E=&SrcType=%EF%BF%BD%20%EFBF%BD%EF%BF%BD7;%EF%BF%BD%EF%BF%BD%1C%EF%BF%BD%EF%BF%BD%EF%BF%BD%D4%98b;%EF%BF%BD%EF%BF%BD%20Q%1B&SRCWord=&EncryptSTR="></iframe>
      </div>
	  <%End If%>
      
   
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