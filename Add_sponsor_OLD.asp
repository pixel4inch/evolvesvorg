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
			var vcompany = $("#company").val();
			var vpostion = $("#postion").val();
			var vemail = $("#email").val();
			var vphone = $("#Phone").val();
			var vRequest_Sponsorship_Details = document.getElementById("Request_Sponsorship_Details").checked;
			
		 
         // alert(vReportName);
		 if (vemail != null && vemail != '' )		 
			 {
			 //alert(vReportName);
			  $.ajax({
						url: "Ajax_AddSponsors.asp",
						type: "POST",
						data:'vRequest_Sponsorship_Details='+encodeURIComponent(vRequest_Sponsorship_Details)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vpostion='+encodeURIComponent(vpostion)+'&vcompany='+encodeURIComponent(vcompany)+'&vfrist_name='+encodeURIComponent(vfrist_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
						success: function(data){
						//alert(data);
						alert('Thanks for submitting!');
						
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
			<form action="contact.html" method="POST">
				<div class="row mx-0">
					<div class="col-xl-9 col-lg-9 col-md-12 col-12 mx-auto p-3 shadow-sm">
	
					  <div class=" w-100 ml-4 pl-1 pb-2 d-flex align-items-center  justify-content-start my-2">
						<input type="checkbox" class="form-check-input" id="Request_Sponsorship_Details" name="Request_Sponsorship_Details">
						<label class="form-check-labe ml-2 font-weight-bold mb-0 mt-1" for="exampleCheck1">Request Sponsorship Details</label>
						</div>
	
					<div class="w-100">
					  <form action="#" method="POST">
						<div class="row mx-0">
						  <!-- Name -->
						  <div class="col-sm-6 mb-1 p-1">
							<span class="formmandatory">* </span>
							<input class="form-control main mb-1 " type="text" placeholder="First Name" id="first_name" name="first_name" required="">
						  </div>
						  <!-- Name -->
						  <div class="col-sm-6 mb-1 p-1">
							<span class="formmandatory">* </span>
							<input class="form-control main mb-1" type="text" placeholder="Last Name" id="last_name" id="last_name" required="">
						  </div>
	
	
						   <!-- Email -->
						   <div class="col-sm-6 mb-1 p-1">
							<span class="formmandatory">* </span>
							<input class="form-control main mb-1" type="text" placeholder=" Position  " id="postion" name="postion" required="">
						  </div>
						  <!-- subject -->
						  <div class="col-sm-6 mb-1 p-1">
							<span class="formmandatory">* </span>
							<input class="form-control main mb-1" type="text" placeholder="Company " id="company" name="company" >
						  </div>
						  <!-- Email -->
						  <div class="col-sm-6 mb-1 p-1">
							<span class="formmandatory">* </span>
							<input class="form-control main mb-1" type="email" placeholder=" Email " id="email" name="email" required="">
						  </div>
						  <!-- subject -->
						  <div class="col-sm-6 mb-1 p-1">
							<span class="formmandatory">* </span>
							<input class="form-control main mb-1" type="number" placeholder="Phone No">
						  </div>
						  <!-- Submit Button -->
						  <div class="col-12 text-center my-4">
							<button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SaveData()>Submit</button>
						  </div>
						</div>
					  </form>
					</div>
					</div>
				  </div>
			</form>
		</div>


</body>

</html>