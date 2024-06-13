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
}</style>
<script>
function SaveData(){               
		    
			//var iSno = rno;			
			var vfrist_name = $("#frist_name").val();
			var vlast_name = $("#last_name").val();
			var vcompany = $("#company").val();
			var vtitle = $("#title").val();
			var vemail = $("#email").val();
			var vphone = $("#Phone").val();
			var vcompanyURL = $("#companyURL").val();
			
		 
         // alert(vReportName);
		 if (vemail != null && vemail != '' )		 
			 {
			 //alert(vReportName);
			  $.ajax({
						url: "Ajax_AddNotifyme.asp",
						type: "POST",
						data:'vcompanyURL='+encodeURIComponent(vcompanyURL)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vtitle='+encodeURIComponent(vtitle)+'&vcompany='+encodeURIComponent(vcompany)+'&vfrist_name='+encodeURIComponent(vfrist_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
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
			
			<form action="#" class="text-center">
				<!-- First Name -->
				<div class="position-relative"><span class="clsmandatory">*</span><input class="form-control main mb-2 border-radius-0" type="text" placeholder="First Name" id="frist_name" name="frist_name" required></div>
				<!-- Last Name -->
				<div class="position-relative"><span class="clsmandatory">*</span><input class="form-control main mb-2 border-radius-0 " type="text" placeholder="Last Name"  id="last_name" name="last_name" required></div>
				
				<div class="position-relative"><input class="form-control main mb-2 border-radius-0" type="text" placeholder="Designation"  id="title" name="tile" ></div>
				
				<!-- Company Name -->
				<div class="position-relative"><span class="clsmandatory">*</span><input class="form-control main mb-2 border-radius-0" type="text" placeholder="Company Name"  id="company" name="company" required></div>

				<div class="position-relative"><span class="clsmandatory">*</span><input class="form-control main mb-2 border-radius-0" type="text" placeholder="Company URL"  id="companyURL" name="companyURL" required></div>
				<!-- Company Name -->
				<div class="position-relative"><span class="clsmandatory">*</span><input class="form-control main mb-2 border-radius-0" type="mail" placeholder="Work Email"  id="email" name="email" required></div>
				<!-- Company Name -->
				<div class="position-relative"><input class="form-control main mb-2 border-radius-0" type="number" placeholder="Phone"  id="Phone" name="phone"></div>
				<p class="text-left" style="font-size:13px;font-style:italic;">Fields marked with <span style="color:red">*</span> are mandatory</p>
				<button class="btn btn-main-sm mx-auto text-center p-2" style="background-color:#04489b;font-size:20px; margin-top:20px" onclick="SaveData()">Submit</button></div>
			</form>
		
		</div>


</body>

</html>