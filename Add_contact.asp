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
			var vphone = $("#Phone").val();
			
			var vmessage = $("#message").val();	
       // alert(vReportName);
		 if (vemail != null && vemail != '' )		 
			 {
			 //alert(vReportName);
			  $.ajax({
						url: "Ajax_AddContacts.asp",
						type: "POST",
						data:'vmessage='+encodeURIComponent(vmessage)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vfrist_name='+encodeURIComponent(vfrist_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
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
			<form action="#" method="POST" id="">
				<div class="row mx-0">
					<!-- Name -->
					<div class="col-sm-6 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1 " type="text" placeholder="First Name" id="frist_name" name="frist_name" required="">
					</div>
					<!-- Name -->
					<div class="col-sm-6 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1" type="text" placeholder="Last Name" id="last_name" name="last_name" required="">
					</div>
					<!-- Email -->
					<div class="col-sm-6 mb-1 p-1">
						<span class="formmandatory">* </span>
						<input class="form-control main mb-1" type="email" placeholder=" Email " id="email" name="email" required="">
					</div>
					<!-- subject -->
					<div class="col-sm-6 mb-1 p-1">
						<input class="form-control main mb-1" type="number" placeholder="Phone No" id="phone" name="phone">
					</div>
					<!-- Message -->
					<div class="col-sm-12 mb-1 p-1">
						<span class="formmandatory">* </span>
						<textarea class="form-control main mb-1" name="message" rows="5" id="message" name="message" placeholder="Your Message" required=""></textarea>
					</div>
					<p class="text-left ml-2" style="font-size:13px;font-style:italic;">Fields marked with <span style="color:red">*</span> are mandatory</p>
					<!-- Submit Button -->
					<div class="col-12 text-center">
						<button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SaveData()">Submit</button>
					</div>
				</div>
			</form>
		</div>


</body>

</html>