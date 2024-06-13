<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Innovator Synergies - Evolv.cc</title>
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
<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" ><!--onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"-->
  <!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
  <!--============================
    PLACEKEEPTER BANNER
=============================-->    
<div class="body-content">
  <section class="section ">
    <div class="container">
      <div class="row">      
          <h1 class="font-display1 text-center main-font-color col-lg-11 col-md-12 mx-auto" style="text-transform: uppercase;">INNOVATOR SYNERGIES</h1>
      </div>
      <div class="col-lg-10 col-md-12 mx-auto mt-2">
        <h3 class="font-weight-bold main-font-color font-display2 my-3 text-center text-capitalize">To Engage And Empower Entrepreneurs Globally With Action-Oriented Programs. Focused On A New Generation Of Tech Entrepreneurs. </h3>      
      </div>		
	   <!--div class="col-11  mx-auto my-3">
          <img src="./images/evolv/data/InnovatorSynergies.jpg" class="border shadow mb-2 p-2 img-fluid d-block m-3 mx-auto">
          <p class="infolink mt-1 text-right mb-5">Source: <a href="https://www.strategyr.com/" target="_blank" class="linkblue"> StrategyR</a></p>   
       </div-->
        <div  id="collapseblock">
			<%If trim(request("GetTypePage"))="SPONSOR" Then%>
			<!--p class="infolink mt-1 text-right mb-5">SPONSOR </p-->
			<div class="mt-0  border-top  border-bottom" id="SPONSOR" data-parent="#collapseblock" >  
			  <iframe src="https://www.evolv.cc/Add_sponsors.asp?PageType=INNOVATOR%20SYNERGIES" class="sponsors-frame "></iframe>
			</div>
			<%End If%>
			<%If trim(request("GetTypePage"))="SYNNOVATE100" Then%>
			<div class="mt-0  border-top  border-bottom" id="SYNNOVATE" data-parent="#collapseblock" >  
			 
			 
			 <iframe src="https://www.evolv.cc/Add_Awards.asp?PgType=SYNNOVATE" class="sponsors-frame"></iframe>
			</div>
			<%End If%>
			<%If trim(request("GetTypePage"))="OMNISCALE" Then%>
			<div class="mt-0  border-top  border-bottom" id="OMNISCALE" data-parent="#collapseblock" >  
			  <iframe src="https://www.evolv.cc/Add_Awards.asp?PgType=OMNISCALE" class="sponsors-frame "></iframe>
			</div>
			<%End If%>
			<%If trim(request("GetTypePage"))="JOINUS" Then%>
			<div class="mt-0  border-top  border-bottom" id="JOINUS" data-parent="#collapseblock" >  
			  <iframe src="https://www.evolv.cc/JoinUs.asp?PageType=INNOVATOR%20SYNERGIES" class="sponsors-frame "></iframe>
			</div>
			<%End If%>
			<%If trim(request("GetTypePage"))="ECOSYSTEMS" Then%>
			<div class="mt-0  border-top  border-bottom" id="ECOSYSTEMS" data-parent="#collapseblock" >  
			  <iframe src="https://www.evolv.cc/Innovator_Synergies.asp" class="sponsors-frame "></iframe>
			</div>
			<%End If%>
			
       </div>
 
      </div>
    </div>
  </section>
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