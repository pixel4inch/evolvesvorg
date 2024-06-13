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
	
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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
function SaveProgramData(){               
		    
			//var iSno = rno;			
			var vfirst_name = $("#first_name").val();
			var vlast_name = $("#last_name").val();
			var vcompany = $("#company").val();
			var vtitle = $("#title").val();
			var vemail = $("#email").val();
			var vphone = $("#phone").val();
			var vcompanyURL = $("#companyURL").val();
			var page_source = $("#page_source").val();
		 
         
		 if (vemail != null && vemail != '' )		 
			 {
			 //alert(vfirst_name);
			  $.ajax({
						url: "Ajax_AddProgramDetails.asp",
						type: "POST",
						data:'page_source='+encodeURIComponent(page_source)+'&vcompanyURL='+encodeURIComponent(vcompanyURL)+'&vphone='+encodeURIComponent(vphone)+'&vemail='+encodeURIComponent(vemail)+'&vtitle='+encodeURIComponent(vtitle)+'&vcompany='+encodeURIComponent(vcompany)+'&vfirst_name='+encodeURIComponent(vfirst_name)+'&vlast_name='+encodeURIComponent(vlast_name)+'',
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
            <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3  bg-white ">
              <h3 class="font-display2 main-font-color mb-0 mt-4  text-center">PROGRAM DETAILS FORTHCOMING
              </h3>
              <h4 class="font-display4   mb-4 pb-2 mt-2 text-center" style="
              font-weight: 500;
          ">
                            Sign-Up to be Informed When Registrations Open</h4>

              
              <div class="row mx-0" id="formblock">
                <!-- Fname -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label"> First Name <span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0 " type="text" required="" id="first_name" name="first_name">
                </div>
                <!-- LName -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label"> Last Name <span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="last_name" name="last_name">
                </div>


                  <!-- Designation -->
                  <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label"> Designation <span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="title" name="title">
                </div>
                <!-- company -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label"> Company Name <span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text"  required="" id="company" name="company">
                </div>

                 <!-- URL -->
                 <div class="col-sm-12 mb-3 px-1">
                  <span class="floating-label"> Company URL <span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="" required="" id="companyURL" name="companyURL">
                </div>
                <!-- email -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="floating-label"> Work Email <span class="text-danger">*</span> </span>
                  <input class="form-control w-100 border-radius-0" type="text"  required="" id="email" name="email">
                </div>
                
                <!-- phone -->
                <div class="col-sm-6 mb-3 px-1">
				<span class="floating-label"> Phone  </span>
                  <input class="form-control w-100 border-radius-0" type="number" id="phone" name="phone">
                </div>
                <p class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory</p>
				
				
				<div class="d-flex align-items-center mt-2 ml-2 pl-1">
										 <input type="checkbox" id="acceptprivacy" class="mr-2">
										 <p>I have read and agree to the Evolv Program  <a href="https://www.evolv.cc/privacy.html" style="color:blue"> Privacy Policy </a> and <a href="https://www.evolv.cc/serviceagreements.html" style="color:blue"> Service Agreement. </a> </p>					 </div>
				
                <!-- Submit Button -->
				<input type="hidden" name="page_source" id="page_source" value="<%=PGreferer%>">
                <div class="col-12 text-center my-4">
                  <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SaveProgramData();">Submit</button>
                </div>
              </div>
           
          </div>
          </div>

</body>

</html>