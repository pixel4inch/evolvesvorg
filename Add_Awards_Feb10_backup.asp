<!DOCTYPE html>
  <%@Language="VBScript"%>
<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->
 <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>
<html lang="en">
<head>
<%
dim PGreferer
PGreferer = trim(Request.ServerVariables("HTTP_REFERER"))
''response.write "Referer Page = "& PGreferer
%>

 <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Awards - Evolv.cc</title>

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
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- PLUGINS CSS STYLE -->
  <link rel="stylesheet" href="https://www.evolv.cc/plugins/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.evolv.cc/plugins/themify-icons/themify-icons.css">
  <!-- CUSTOM CSS -->
  <link href="https://www.evolv.cc/css/style.css" rel="stylesheet">
  <link href="https://www.evolv.cc/css/custome.css" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>.clsmandatory{
    position: absolute !important;
    left: 10px;
    top: 8px;
    font-weight: bold;
    color:red !important;

	.formmandatory {
    position: absolute;
    left: 10px;
    top: 5px;
    color: red;
    font-size: 13px;
}

}</style>

<script type="text/javascript">


$(document).ready(function(){
$('#checkbox1').change(function(){
if(this.checked)
$('#SYNNOVATE1').fadeIn('slow');
else
$('#SYNNOVATE1').fadeOut('slow');

});
});

</script>

<script>
function SaveSponsorData(){               
		    
			//var iSno = rno;			
			var vfirst_name = $("#first_name").val();
			var vlast_name = $("#last_name").val();
			var vcompany = $("#company").val();
			var vtitle = $("#title").val();
			var vemail = $("#email").val();
			var vphone = $("#phone").val();
			var page_source = $("#page_source").val();
			var vcheckSponsor = $('#exampleCheck1').is(':checked'); 
		 
         // alert(vReportName);
		 if (vemail != null && vemail != '' )	 
			 {
			 //alert(vReportName);
			  $.ajax({
						url: "Ajax_AddSponsors.asp",
						type: "POST",
						data:'vcheckSponsor='+encodeURIComponent(vcheckSponsor)+'&page_source='+encodeURIComponent(page_source)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vtitle='+encodeURIComponent(vtitle)+'&vcompany='+encodeURIComponent(vcompany)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
						success: function(data){
						alert(data);
						//alert('Thanks for submitting!');
						
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				   
				//window.opener.location.reload(false);
				//window.opener.location.reload()
			 } 
			 else
			 {
			    
				alert("values can't be left blank");
			  
			}
        


			}
</script>
</head> 

<body class="body-wrapper d-flex align-items-center" data-spy="scroll" data-target=".privacy-nav">


				
		<!-- Content -->
		<div class="w-100 mx-0">
            <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3  ">
            <%If trim(request("PgType"))="SYNNOVATE" Then%>
			<h3><b>SYNNOVATE 100<sup>TM</sup></b></h3>
			<h3 class="font-display4 mt-3 p-3 mb-3" "="">This is a One-on-one partnership initiative designed for  deep-tech innovator anchoring by a single domain-suited big enterprise for bartered co-development and/or funded geographic licensing. Can also be an alternative or deferment to the conventional often tenuous fundraising process innovators commonly endure until they're on a secured footing. Process requires a compelling and validated IP with POC involving expert due diligence and validation. Limited to 100 companies.  </h3>
			<div class=" w-100 ml-4 pl-2 pb-2 d-flex align-items-center  justify-content-start my-1">
                 <!--a target="_blank" data-toggle="collapse" href="#SYNNOVATE1" role="button" aria-expanded="false"  aria-controls="collapseExample" class="btn main-bg-color text-white">NOMINATE</a-->
                <input type="checkbox" class="form-check-input" id="checkbox1" name="checkbox1">
                <label class="form-check-labe ml-2 font-weight-bold mb-0 mt-1" for="exampleCheck1">REGISTER</label>
                </div>
			<%ElseIf trim(request("PgType"))="OMNISCALE" Then%>
			<h3><b>OMNISCALE<sup>TM</sup></b></h3>
			<h3 class="font-display4 mt-3 p-3 mb-3" "="">Designed for fast-track scaling of mid-late stage tech innovators with validated unique product/service offerings matched with domain-suited big enterprises. Usually business licensing or partnering in a non-exclusive omni-channel setting. Innovator benefits from big enterprise's strong captive market and financial power. Evolv<sup>TM</sup> acts as a facilitator for mutually beneficial direct engagements.</h3>
			<div class=" w-100 ml-4 pl-2 pb-2 d-flex align-items-center  justify-content-start my-1">
				<!--a target="_blank" data-toggle="collapse" href="#SYNNOVATE1" role="button" aria-expanded="false"  aria-controls="collapseExample" class="btn main-bg-color text-white">REGISTER</a-->
                <input type="checkbox" class="form-check-input" id="checkbox1" name="checkbox1">
                <label class="form-check-labe ml-2 font-weight-bold mb-0 mt-1" for="exampleCheck1">REGISTER</label>
                </div>
			<%Else%>
			<div class=" w-100 ml-4 pl-2 pb-2 d-flex align-items-center  justify-content-start my-1">
				<input type="checkbox" class="form-check-input" id="exampleCheck1" name="exampleCheck1">
                <label class="form-check-labe ml-2 font-weight-bold mb-0 mt-1" for="exampleCheck1">REGISTER</label>
                </div>
			<%End If%>
              
			<div class="collapse   mt-0  border-top  border-bottom" id="SYNNOVATE1" >
              <div class="row mx-0" id="formblock">
                <!-- Fname -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="First Name" required="" id="first_name" name="first_name">
                </div>
                <!-- LName -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Last Name" required="" id="last_name" name="last_name">
                </div>


                                  <!-- Designation -->
                  <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Designation" required="" id="title" name="title">
                </div>
                <!-- company -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Company Name" required="" id="company" name="company">
                </div>

                <!-- email -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Work Email" required="" id="email" name="email">
                </div>
                  <!-- phone -->
                <div class="col-sm-6 mb-3 px-1">
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Phone" id="phone" name="phone">
                </div>
                <p class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory</p>
                <!-- Submit Button -->
								<input type="hidden" name="page_source" id="page_source" value="<%=PGreferer%>">

                <div class="col-12 text-center my-4">
                  <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SaveSponsorData();">Submit</button>
                </div>
              </div>
           </div> 
          </div>
          </div>

</body>

</html>