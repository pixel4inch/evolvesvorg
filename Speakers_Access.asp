<!DOCTYPE html>

<html lang="en">

<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Evolv</title>

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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />
  <link href="css/jquery.readall.css" rel="stylesheet" />
	<script>
  function returnvalcheckaccess()
{
	var checkval,emid;	
	checkval = mytrimval(document.frmcheck.Code.value);	
	
	if ((checkval=="") || (checkval==" "))
	{
		alert ("Privileged Access Code cannot be left blank");
		document.frmcheck.Code.focus();
		return false;
	}
	if (checkval.length<=5)
	{
		alert ("Check the Privileged Access Code");
		document.frmcheck.Code.focus();
		return false;
	}
	//alert (valpass(txtpwd));
}
</script>

</head>

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">



  <!--============================
=            HEADER           =
=============================-->

  <header-component></header-component>

 

  


  <!--============================
    PLACEKEEPTER BANNER
=============================-->
<div class="body-content">
  <section class="section py-5">
    <div class="container">
      <div class="row tex-center ">
        <div class="col-sm-12 m-auto text-center">
            <!-- Page Title -->
            <h1 class="font-display1 main-font-color">PRIVILEGED SPEAKER GATEWAY</h1>
        </div>
        <div class="col-lg-5 col-md-9 col-sm-11 col-12 m-auto ">

            <div class=" w-100  p-2  border-radius-2">
              <!--  <form class="form-inline w-100" id="formblock">-->
					<form method="post" action="speaker_checkaccess.asp?btnsubmit=GO" id=frmcheck name=frmcheck  onsubmit="return returnvalcheckaccess();" class="form-inline w-100" id="formblock">	
                    <div class="form-group w-100 d-flex mb-0 justify-content-center align-items-center ">
                       
                        <div class="col-sm-10 col-10 px-0 ">
                         
                          <input type="password" class="form-control w-100 border-radius-0" id="code" name="Code" placeholder="Passcode" required>
                        </div>
                        
                        <div class="col-sm-1 col-2 p-0">
                        <button type="submit" class="btn btn-primary btn-primary border-radius-0" value="GO" name="btnsubmit">GO</button>
                        </div>
                        
                      </div>
                  </form>
            </div>
            <!-- Page Title -->
          
        </div>

      </div>
    </div>
  </section>
</div>
 


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
  <script src="./js/jquery.readall.js"></script>


  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
  <script src="./webcomponts/banner.js"></script>

  <script>
    $('.textless').readall({
      showheight: null,
      showrows: 8
    });


  </script>




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