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
<script>
function SaveData(){               
		    
			//var iSno = rno;			
			var vfrist_name = $("#frist_name").val();
			var vlast_name = $("#last_name").val();
			var vemail = $("#email").val();
			var vphone = $("#phone").val();
			
			var vlnkedin = $("#lnkedin").val();
			var vlocation= $("#location").val();
			
			var vchkwillvolunteer = document.getElementById("chkwillvolunteer").checked;
			var vchkroadshow = document.getElementById("chkroadshow").checked;
			var vchktechsummit = document.getElementById("chktechsummit").checked;
			var vchkg20Summit = document.getElementById("chkg20Summit").checked;
		
		 if (vemail != null && vemail != '' )		 
			 {
			//alert(vchkwillvolunteer);
			  $.ajax({
						url: "Ajax_AddVolunteer.asp",
						type: "POST",
						data:'vchkg20Summit='+encodeURIComponent(vchkg20Summit)+'&vchktechsummit='+encodeURIComponent(vchktechsummit)+'&vchkroadshow='+encodeURIComponent(vchkroadshow)+'&vchkwillvolunteer='+encodeURIComponent(vchkwillvolunteer)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vlocation='+encodeURIComponent(vlocation)+'&vlnkedin='+encodeURIComponent(vlnkedin)+'&vfrist_name='+encodeURIComponent(vfrist_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
						success: function(data){
						//alert(data);
						 alert("Thank you for applying. We will respond by email within 3-4 business days. ");
						
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
		<div class="w-100">
			<form action="#" method="POST">
				<div class="row mx-0">
					<!-- First Name -->
					<div class="col-sm-6 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1 " type="text" placeholder="First Name" id="frist_name" name="frist_name" required="">
					</div>
					<!-- Last Name -->
					<div class="col-sm-6 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1" type="text" placeholder="Last Name" id="last_name" name="last_name" required="">
					</div>
					<!-- Email -->
					<div class="col-sm-6 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1" type="email" placeholder=" Email  " id="email" name="email" required="">
					</div>
					<!-- Mobile Phone -->
					<div class="col-sm-6 mb-1 p-1">
						
						<input class="form-control main mb-1" type="number" placeholder="Mobile Phone" id="phone" name="phone" required="">
					</div>
					<!--LinkedIn Link-->
					<div class="col-sm-12 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1" type="text" placeholder="LinkedIn Link" id="lnkedin" name="lnkedin" required="">
					</div>
					<!--LinkedIn Link-->
					<div class="col-sm-12 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1" type="text" placeholder="Location (Country & City)" id="location" name="location" required="">
					</div>

					<div class="col-sm-12 mb-1 p-1 mt-2">
							<div class="ml-4">
							<input type="checkbox" class="form-check-input" id="chkwillvolunteer" name="chkwillvolunteer">
							<label class="form-check-label font-weight-bold ml-2" for="exampleCheck1">Will volunteer virtually</label>
							</div>
					</div>

					<div class="col-sm-12 mb-1 p-1 mt-2">
						<div class="ml-1">
						<label class="form-check-label main-color_font  font-weight-bold" for="exampleCheck1">Will volunteer virtually & in-person at events planned in the Silicon Valley; Europe & India</label>
						</div>
					</div>

					<div class="col-sm-12 mb-1 p-1 mt-1">
						<div class="ml-1">
						<label class="form-check-label font-weight-bold" for="exampleCheck1">Will attend in person:</label>
						</div>
					</div>

					<div class="col-sm-12 mb-1 p-1 mb-2 ">
						<div class="ml-4">
						<input type="checkbox" class="form-check-input" id="chkroadshow" name="chkroadshow">
						<label class="form-check-labe ml-2" for="exampleCheck1">Evolv Kickoff & B20 Roadshow <br/>Silicon Valley, California <br/>March 27-31, 2023</label>
						</div>
					</div>

					<div class="col-sm-12 mb-1 p-1 mb-2 ">
						<div class="ml-4">
						<input type="checkbox" class="form-check-input" id="chktechsummit" name="chktechsummit">
						<label class="form-check-labe ml-2" for="exampleCheck1">Evolv Annual Tech Summit & Innovator Awards Night <br/>Silicon Valley, California  <br/>June 26-30, 2023</label>
						</div>
					</div>

					<div class="col-sm-12 mb-1 p-1 mb-2 ">
						<div class="ml-4">
						<input type="checkbox" class="form-check-input" id="chkg20Summit" name="chkg20Summit"> 
						<label class="form-check-labe ml-2" for="exampleCheck1">G20 & B20 Summit 2023 <br/>New Delhi, India   <br/>September 9 & 10, 2023</label>
						</div>
					</div>					
					
					<!-- Submit Button -->
					<div class="col-12 text-center">
						<button class="btn btn-main-md mx-auto py-2 px-2 my-4" onclick="SaveData()">Submit</button>
					</div>
					<p class="text-left mr-2" style="font-size:13px;font-style:italic;">Fields marked with <span style="color:red">*</span> are mandatory</p>
				</div>
			</form>
		</div>
  <script>
           /* let form = document.getElementsByTagName("form")[0];
                form.addEventListener("submit", (e) => {
                e.preventDefault();
                alert("Thank you for applying. We will respond by email within 3-4 business days. ");
                });*/
 </script>

</body>

</html>