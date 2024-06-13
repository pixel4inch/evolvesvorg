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


  <!-- CUSTOM CSS -->
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/custome.css" rel="stylesheet" />
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet" />


  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>

  <style>
    .placekeeper_section{
      display: none;
    }
  
    .placekeeper_section.theme-11{
      display: block;
    }
  </style>
<script>
	function SaveData(){               
				
				//var iSno = rno;			
				var vCompany = $("#txtCompany").val();
				var vSalutation = $("#txtSalutation").val();
				var vFirst_Name = $("#txtFirst_Name").val();
				var vLast_Name = $("#txtLast_Name").val();
				var vJobTitle = $("#txtJobTitle").val();
				var vEmail = $("#txtEmail").val();
				var vPhone = $("#txtPhone").val();
				var vSteetAddress = $("#txtSteetAddress").val();
				var vAddressLine = $("#txtAddressLine").val();
				var vCity = $("#txtCity").val();
				var vState = $("#txtState").val();
				var vzip = $("#txtzip").val();
				var vcountry = $("#txtcountry").val();
				var vwebsite = $("#txtwebsite").val();
				var vDOMAIN_EXPERTISE_Primary = $("#txtDOMAIN_EXPERTISE_Primary").val();
				var vDOMAIN_EXPERTISE_Relevant = $("#txtDOMAIN_EXPERTISE_Relevant").val();
				var vPrimary_Product_service_solution = $("#txtPrimary_Product_service_solution").val();
				var vBusinessModel = $("#txtBusinessModel").val();
				var vMainCompetitors = $("#txtMainCompetitors").val();
				var vPrimary_AdvantageOver_Competitors = $("#txtPrimary_AdvantageOver_Competitors").val();
				var vKeyCustomers = $("#txtKeyCustomers").val();
				var vTotalFundingReveived_InUSD = $("#txtTotalFundingReveived_InUSD").val();
				var vTotalRoundsofFunding = $("#txtTotalRoundsofFunding").val();
				var vSubmitter_FirstName = $("#txtSubmitter_FirstName").val();
				var vSubmitter_LastName = $("#txtSubmitter_LastName").val();
				var vSubmitter_Company = $("#txtSubmitter_Company").val();
				var vSubmitter_email = $("#txtSubmitter_email").val();
				var vSubmitter_Confim_email = $("#txtSubmitter_Confim_email").val();
				var vSubmitter_phone = $("#txtSubmitter_phone").val();
				var vCreated_Date = $("#txtCreated_Date").val();
				var vStatus = $("#txtStatus").val();
				var vPageSource = '';//$("#page_source").val();

			
			 
			  
			 if (vEmail != null && vEmail != '' )	 
				 {
				
				  $.ajax({
							url: "Ajax_AddDeepTech_Innovator.asp",
							type: "POST",
								  
							
							data:'vCompany='+encodeURIComponent(vCompany)+'& vSalutation='+encodeURIComponent(vSalutation)+'&vFirst_Name='+encodeURIComponent(vFirst_Name)+'&vLast_Name='+encodeURIComponent(vLast_Name)+'&vJobTitle='+encodeURIComponent(vJobTitle)+'&vEmail='+encodeURIComponent(vEmail)+'&vPhone='+encodeURIComponent(vPhone)+'&vSteetAddress='+encodeURIComponent(vSteetAddress)+'&vAddressLine='+encodeURIComponent(vAddressLine)+'&vCity='+encodeURIComponent(vCity)+'&vState='+encodeURIComponent(vState)+'&vzip='+encodeURIComponent(vzip)+'&vcountry='+encodeURIComponent(vcountry)+'&vwebsite='+encodeURIComponent(vwebsite)+'&vDOMAIN_EXPERTISE_Primary='+encodeURIComponent(vDOMAIN_EXPERTISE_Primary)+'&vDOMAIN_EXPERTISE_Relevant='+encodeURIComponent(vDOMAIN_EXPERTISE_Relevant)+'&vPrimary_Product_service_solution='+encodeURIComponent(vPrimary_Product_service_solution)+'&vBusinessModel='+encodeURIComponent(vBusinessModel)+'&vMainCompetitors='+encodeURIComponent(vMainCompetitors)+'&vPrimary_AdvantageOver_Competitors='+encodeURIComponent(vPrimary_AdvantageOver_Competitors)+'&vKeyCustomers='+encodeURIComponent(vKeyCustomers)+'&vTotalFundingReveived_InUSD='+encodeURIComponent(vTotalFundingReveived_InUSD)+'&vTotalRoundsofFunding='+encodeURIComponent(vTotalRoundsofFunding)+'&vSubmitter_FirstName='+encodeURIComponent(vSubmitter_FirstName)+'&vSubmitter_LastName='+encodeURIComponent(vSubmitter_LastName)+'&vSubmitter_Company='+encodeURIComponent(vSubmitter_Company)+'&vSubmitter_Confim_email='+encodeURIComponent(vSubmitter_Confim_email)+'&vSubmitter_phone='+encodeURIComponent(vSubmitter_phone)+'&vPageSource='+encodeURIComponent(vPageSource)+'',
							success: function(data){
							//alert(data);
							alert('Thank you for Register.');
							
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

<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">






  <!--============================
    PLACEKEEPTER BANNER
=============================-->
  <!---section class="section placekeeper_section theme-11">
    <div class="container">
      <div class="row align-items-center">


      </div>
    </div>
  </section-->

  <!--================================
=            Page Title            =
=================================-->
<div class="body-content">
  <div class="w-100 mt-3">
    <form action="Register_new.asp" method="POST" id="formblock">
      <div class="row mx-0">
        <!-- Name -->
        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0" id="txtCompany" name="txtCompany" type="text" required="">
          <span class="floating-label">
            Company Name<span class="text-danger">*</span> </span>
        </div>
        <!--CEO-->
        <div class="w-100 mb-1">
          <p class="font-weight-bold small-display mb-1 ml-2">CEO NAME</p>
        </div>
        <div class="col-sm-3 mb-3 px-1">
          <select id="txtSalutation" name="txtSalutation" class="form-control">
            <option>Salutation</option>
            <option value="Mr">Mr</option>
            <option value="Mrs">Mrs</option>
            <option value="Dr">Dr</option>
            <option value="Prof">Prof</option>
          </select>
        </div>
        <div class="col-sm-5 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtFirst_Name" name="txtFirst_Name" type="text" required="">
          <span class="floating-label">
           First Name <span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-4 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtLast_Name" name="txtLast_Name" type="text" required="">
          <span class="floating-label">
           Last Name <span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtJobTitle" name="txtJobTitle" type="text" required="">
          <span class="floating-label">
            Job Title<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="email" id="txtEmail" name="txtEmail" type="text" required="">
          <span class="floating-label">
            Email<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="number" id="txtPhone" name="txtPhone">
          <span class="floating-label">Phone</span>
        </div>
        <!--ADDRESS-->
        <div class="w-100 mt-2">
          <p class="font-weight-bold small-display mb-2 ml-2">GLOBAL HQ ADDRESS</p>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtSteetAddress" name="txtSteetAddress" type="text">
          <span class="floating-label">
            Street Address<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtAddressLine" name="txtAddressLine" type="text">
          <span class="floating-label"> Street Line</span>
        </div>
        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtCity" name="txtCity" type="text" required="">
          <span class="floating-label">
            City<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtState" name="txtState" type="text" required="">
          <span class="floating-label">
           State / Province / Region <span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="txtzip" name="txtzip" type="number" required="">
          <span class="floating-label">
           ZIP / Postal Code <span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-12 mb-3 px-1">
          <select id="txtcountry" name="txtcountry" class="form-control" id="selectcountry" name="selectcountry">
            <option value="Afghanistan">Select Country</option>
            <option value="Afghanistan">Afghanistan</option>
            <option value="Åland Islands">Åland Islands</option>
            <option value="Albania">Albania</option>
            <option value="Algeria">Algeria</option>
            <option value="American Samoa">American Samoa</option>
            <option value="Andorra">Andorra</option>
            <option value="Angola">Angola</option>
            <option value="Anguilla">Anguilla</option>
            <option value="Antarctica">Antarctica</option>
            <option value="Antigua and Barbuda">Antigua and Barbuda</option>
            <option value="Argentina">Argentina</option>
            <option value="Armenia">Armenia</option>
            <option value="Aruba">Aruba</option>
            <option value="Australia">Australia</option>
            <option value="Austria">Austria</option>
            <option value="Azerbaijan">Azerbaijan</option>
            <option value="Bahamas">Bahamas</option>
            <option value="Bahrain">Bahrain</option>
            <option value="Bangladesh">Bangladesh</option>
            <option value="Barbados">Barbados</option>
            <option value="Belarus">Belarus</option>
            <option value="Belgium">Belgium</option>
            <option value="Belize">Belize</option>
            <option value="Benin">Benin</option>
            <option value="Bermuda">Bermuda</option>
            <option value="Bhutan">Bhutan</option>
            <option value="Bolivia">Bolivia</option>
            <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
            <option value="Botswana">Botswana</option>
            <option value="Bouvet Island">Bouvet Island</option>
            <option value="Brazil">Brazil</option>
            <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
            <option value="Brunei Darussalam">Brunei Darussalam</option>
            <option value="Bulgaria">Bulgaria</option>
            <option value="Burkina Faso">Burkina Faso</option>
            <option value="Burundi">Burundi</option>
            <option value="Cambodia">Cambodia</option>
            <option value="Cameroon">Cameroon</option>
            <option value="Canada">Canada</option>
            <option value="Cape Verde">Cape Verde</option>
            <option value="Cayman Islands">Cayman Islands</option>
            <option value="Central African Republic">Central African Republic</option>
            <option value="Chad">Chad</option>
            <option value="Chile">Chile</option>
            <option value="China">China</option>
            <option value="Christmas Island">Christmas Island</option>
            <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
            <option value="Colombia">Colombia</option>
            <option value="Comoros">Comoros</option>
            <option value="Congo">Congo</option>
            <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
            <option value="Cook Islands">Cook Islands</option>
            <option value="Costa Rica">Costa Rica</option>
            <option value="Cote D'ivoire">Cote D'ivoire</option>
            <option value="Croatia">Croatia</option>
            <option value="Cuba">Cuba</option>
            <option value="Cyprus">Cyprus</option>
            <option value="Czech Republic">Czech Republic</option>
            <option value="Denmark">Denmark</option>
            <option value="Djibouti">Djibouti</option>
            <option value="Dominica">Dominica</option>
            <option value="Dominican Republic">Dominican Republic</option>
            <option value="Ecuador">Ecuador</option>
            <option value="Egypt">Egypt</option>
            <option value="El Salvador">El Salvador</option>
            <option value="Equatorial Guinea">Equatorial Guinea</option>
            <option value="Eritrea">Eritrea</option>
            <option value="Estonia">Estonia</option>
            <option value="Ethiopia">Ethiopia</option>
            <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
            <option value="Faroe Islands">Faroe Islands</option>
            <option value="Fiji">Fiji</option>
            <option value="Finland">Finland</option>
            <option value="France">France</option>
            <option value="French Guiana">French Guiana</option>
            <option value="French Polynesia">French Polynesia</option>
            <option value="French Southern Territories">French Southern Territories</option>
            <option value="Gabon">Gabon</option>
            <option value="Gambia">Gambia</option>
            <option value="Georgia">Georgia</option>
            <option value="Germany">Germany</option>
            <option value="Ghana">Ghana</option>
            <option value="Gibraltar">Gibraltar</option>
            <option value="Greece">Greece</option>
            <option value="Greenland">Greenland</option>
            <option value="Grenada">Grenada</option>
            <option value="Guadeloupe">Guadeloupe</option>
            <option value="Guam">Guam</option>
            <option value="Guatemala">Guatemala</option>
            <option value="Guernsey">Guernsey</option>
            <option value="Guinea">Guinea</option>
            <option value="Guinea-bissau">Guinea-bissau</option>
            <option value="Guyana">Guyana</option>
            <option value="Haiti">Haiti</option>
            <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
            <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
            <option value="Honduras">Honduras</option>
            <option value="Hong Kong">Hong Kong</option>
            <option value="Hungary">Hungary</option>
            <option value="Iceland">Iceland</option>
            <option value="India">India</option>
            <option value="Indonesia">Indonesia</option>
            <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
            <option value="Iraq">Iraq</option>
            <option value="Ireland">Ireland</option>
            <option value="Isle of Man">Isle of Man</option>
            <option value="Israel">Israel</option>
            <option value="Italy">Italy</option>
            <option value="Jamaica">Jamaica</option>
            <option value="Japan">Japan</option>
            <option value="Jersey">Jersey</option>
            <option value="Jordan">Jordan</option>
            <option value="Kazakhstan">Kazakhstan</option>
            <option value="Kenya">Kenya</option>
            <option value="Kiribati">Kiribati</option>
            <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
            <option value="Korea, Republic of">Korea, Republic of</option>
            <option value="Kuwait">Kuwait</option>
            <option value="Kyrgyzstan">Kyrgyzstan</option>
            <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
            <option value="Latvia">Latvia</option>
            <option value="Lebanon">Lebanon</option>
            <option value="Lesotho">Lesotho</option>
            <option value="Liberia">Liberia</option>
            <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
            <option value="Liechtenstein">Liechtenstein</option>
            <option value="Lithuania">Lithuania</option>
            <option value="Luxembourg">Luxembourg</option>
            <option value="Macao">Macao</option>
            <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
            <option value="Madagascar">Madagascar</option>
            <option value="Malawi">Malawi</option>
            <option value="Malaysia">Malaysia</option>
            <option value="Maldives">Maldives</option>
            <option value="Mali">Mali</option>
            <option value="Malta">Malta</option>
            <option value="Marshall Islands">Marshall Islands</option>
            <option value="Martinique">Martinique</option>
            <option value="Mauritania">Mauritania</option>
            <option value="Mauritius">Mauritius</option>
            <option value="Mayotte">Mayotte</option>
            <option value="Mexico">Mexico</option>
            <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
            <option value="Moldova, Republic of">Moldova, Republic of</option>
            <option value="Monaco">Monaco</option>
            <option value="Mongolia">Mongolia</option>
            <option value="Montenegro">Montenegro</option>
            <option value="Montserrat">Montserrat</option>
            <option value="Morocco">Morocco</option>
            <option value="Mozambique">Mozambique</option>
            <option value="Myanmar">Myanmar</option>
            <option value="Namibia">Namibia</option>
            <option value="Nauru">Nauru</option>
            <option value="Nepal">Nepal</option>
            <option value="Netherlands">Netherlands</option>
            <option value="Netherlands Antilles">Netherlands Antilles</option>
            <option value="New Caledonia">New Caledonia</option>
            <option value="New Zealand">New Zealand</option>
            <option value="Nicaragua">Nicaragua</option>
            <option value="Niger">Niger</option>
            <option value="Nigeria">Nigeria</option>
            <option value="Niue">Niue</option>
            <option value="Norfolk Island">Norfolk Island</option>
            <option value="Northern Mariana Islands">Northern Mariana Islands</option>
            <option value="Norway">Norway</option>
            <option value="Oman">Oman</option>
            <option value="Pakistan">Pakistan</option>
            <option value="Palau">Palau</option>
            <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
            <option value="Panama">Panama</option>
            <option value="Papua New Guinea">Papua New Guinea</option>
            <option value="Paraguay">Paraguay</option>
            <option value="Peru">Peru</option>
            <option value="Philippines">Philippines</option>
            <option value="Pitcairn">Pitcairn</option>
            <option value="Poland">Poland</option>
            <option value="Portugal">Portugal</option>
            <option value="Puerto Rico">Puerto Rico</option>
            <option value="Qatar">Qatar</option>
            <option value="Reunion">Reunion</option>
            <option value="Romania">Romania</option>
            <option value="Russian Federation">Russian Federation</option>
            <option value="Rwanda">Rwanda</option>
            <option value="Saint Helena">Saint Helena</option>
            <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
            <option value="Saint Lucia">Saint Lucia</option>
            <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
            <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
            <option value="Samoa">Samoa</option>
            <option value="San Marino">San Marino</option>
            <option value="Sao Tome and Principe">Sao Tome and Principe</option>
            <option value="Saudi Arabia">Saudi Arabia</option>
            <option value="Senegal">Senegal</option>
            <option value="Serbia">Serbia</option>
            <option value="Seychelles">Seychelles</option>
            <option value="Sierra Leone">Sierra Leone</option>
            <option value="Singapore">Singapore</option>
            <option value="Slovakia">Slovakia</option>
            <option value="Slovenia">Slovenia</option>
            <option value="Solomon Islands">Solomon Islands</option>
            <option value="Somalia">Somalia</option>
            <option value="South Africa">South Africa</option>
            <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
            <option value="Spain">Spain</option>
            <option value="Sri Lanka">Sri Lanka</option>
            <option value="Sudan">Sudan</option>
            <option value="Suriname">Suriname</option>
            <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
            <option value="Swaziland">Swaziland</option>
            <option value="Sweden">Sweden</option>
            <option value="Switzerland">Switzerland</option>
            <option value="Syrian Arab Republic">Syrian Arab Republic</option>
            <option value="Taiwan">Taiwan</option>
            <option value="Tajikistan">Tajikistan</option>
            <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
            <option value="Thailand">Thailand</option>
            <option value="Timor-leste">Timor-leste</option>
            <option value="Togo">Togo</option>
            <option value="Tokelau">Tokelau</option>
            <option value="Tonga">Tonga</option>
            <option value="Trinidad and Tobago">Trinidad and Tobago</option>
            <option value="Tunisia">Tunisia</option>
            <option value="Turkey">Turkey</option>
            <option value="Turkmenistan">Turkmenistan</option>
            <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
            <option value="Tuvalu">Tuvalu</option>
            <option value="Uganda">Uganda</option>
            <option value="Ukraine">Ukraine</option>
            <option value="United Arab Emirates">United Arab Emirates</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United States">United States</option>
            <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
            <option value="Uruguay">Uruguay</option>
            <option value="Uzbekistan">Uzbekistan</option>
            <option value="Vanuatu">Vanuatu</option>
            <option value="Venezuela">Venezuela</option>
            <option value="Viet Nam">Viet Nam</option>
            <option value="Virgin Islands, British">Virgin Islands, British</option>
            <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
            <option value="Wallis and Futuna">Wallis and Futuna</option>
            <option value="Western Sahara">Western Sahara</option>
            <option value="Yemen">Yemen</option>
            <option value="Zambia">Zambia</option>
            <option value="Zimbabwe">Zimbabwe</option>
          </select>
        </div>
        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="text" id="txtwebsite" name="txtwebsite" type="number" required="">
          <span class="floating-label">
           Website <span class="text-danger">*</span> </span>
        </div>
        <!--Company Board-->
        <div class="w-100 mt-2">
          <p class="font-weight-bold small-display mb-2 ml-2">COMPANY BOARD</p>
        </div>
       
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="company_board_first_name" name="company_board_first_name" type="text" required="">
          <span class="floating-label">
            Name<span class="text-danger">*</span></span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="text" id="company_board_last_name" name="company_board_last_name" required="">
          <span class="floating-label">
            Company<span class="text-danger">*</span> </span>
        </div>
        <div class="col-12 mb-1">
            <p> Company Profile<span class="text-danger">*</span></p>
        </div>

        <div class="col-sm-12 mb-3 px-1">
          <textarea rows="4" cols="50" class="w-100" form="usrform" placeholder=" 1500 characters Limit"></textarea>
        </div>


        <div class="mt-2 row mx-0 w-100">
          <div class="col-sm-4 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="patentsissues" name="patentsissues" type="text" required="">
            <span class="floating-label">#Patents</span>
          </div>
          <div class="col-sm-4 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="yearfounded" name="yearfounded" type="text" required="">
            <span class="floating-label">Year </span>
          </div>
          <div class="col-sm-4 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="numberofemployees" name="numberofemployees" type="text" required="">
            <span class="floating-label">#Employees</span>
          </div>
        </div>
        <!---DOMAIN EXPERTS -->
        <div class="col-sm-12 mb-3 p-1 mt-2 pb-2 ">
          <div class="d-flex justify-content-start align-items-center">
            <span class="formmandatory">* </span>
            <input type="checkbox" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" class="ml-3" />
            <p class="font-weight-bold small-display mb-0 ml-2" style="margin-bottom:0px !important">RELEVANT DOMAINS</p>
          </div>
        </div>
        <div class="w-100 collapse  border shadow  mb-4   m-2 " id="collapseExample">
          <div class="col-sm-12 mb-0 p-0 border-bottom">
            <div>
              <!--input type="text" id="myInput" class="domain-search" onkeyup="myFunction()" placeholder="Search Domain" title="Type in a name" class="border shadow-sm my-3 col-11 mx-auto" style="width:90%; margin:0 auto; margin-bottom:10px"-->
              <div class="domain-table-block">
                <table id="myTable" class="table mb-0  table-striped" id="domain-list-table">
                  <tr class="header" style="background-color:#f7e1d7">
                    <th class="text-center py-1   col-9">Domain</th>
                    <th class="text-center py-1   col-2">Primary</th>
                    <th class="text-center py-1   col-3">Relevant</th>
                  </tr>
                  <tbody id="domain-list">
                    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
                    <script>
                      $(document).ready(function() {
                        $.getJSON("./data/DomainName.json", function(data) {
                          var output = '';
                          console.log(data)
                          $.each(data.domainlist, function(key, value) {
                            output += `
                        
                                                                    <tr>
                                                                      <td class="text-left py-1  pl-4 col-9">` + value.Name + `</td>
                                                                      <td class="text-center py-1 col-3">
                                                                        <input type="radio" value="` + value.Name + `" id="txtDOMAIN_EXPERTISE_Primary" name="txtDOMAIN_EXPERTISE_Primary"/>
                                                                      </td>
                                                                      <td class="text-center py-1 col-3">
                                                                        <input type="checkbox" value="` + value.Name + `" id="txtDOMAIN_EXPERTISE_Relevant_` + value.Id + `" name="txtDOMAIN_EXPERTISE_Relevant"/>
                                                                      </td>
                                                                    </tr> `;
                          });
                          $('#domain-list').html(output);
                        }).fail(function() {
                          document.write("An error has occurred.");
                        });
                      });
                    </script>
                    <tr>
                      <td class="text-left py-1  pl-4 col-9">
                        <input type="text" name="new_domain" id="new_domain">
                      </td>
                      <td class="text-center py-1 col-3">
                        <input type="radio" value="" id="new_domain_primary" name="new_domain_primary" />
                      </td>
                      <td class="text-center py-1 col-3">
                        <input type="checkbox" value="" id="new_domain_secondary" name="new_domain_secondary" />
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!---DOMAIN EXPERTS END-->
        <div class="col-12 mb-1">
            <p> What’s the primary Product/Service Solution?<span class="text-danger">*</span></p>
        </div>

        <div class="col-sm-12 mb-3 px-1">
          <textarea rows="4" cols="50" id="txtPrimary_Product_service_solution" name="txtPrimary_Product_service_solution" class="w-100" form="usrform" placeholder=" 1500 characters Limit"></textarea>
        </div>

   
        <div class="col-12 mb-1">
            <p> Business Model<span class="text-danger">*</span></p>
        </div>

        <div class="col-sm-12 mb-3 px-1">
          <textarea rows="4" cols="50" id="txtBusinessModel" name="txtBusinessModel" class="w-100" form="usrform" placeholder=" 1500 characters Limit"></textarea>
        </div>


        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="text" id="txtMainCompetitors" name="txtMainCompetitors" required />
          <span class="floating-label">
           Main Competitors<span class="text-danger">*</span> </span>
        </div>
     

        <div class="col-12 mb-1">
            <p> Primary Advantage Over Competitors<span class="text-danger">*</span></p>
        </div>

        <div class="col-sm-12 mb-3 px-1">
          <textarea rows="4" cols="50" id="txtPrimary_AdvantageOver_Competitors" name="txtPrimary_AdvantageOver_Competitors" class="w-100" form="usrform" placeholder=" 1500 characters Limit"></textarea>
        </div>


        <div class="mt-2 row mx-0 w-100">
          <div class="col-sm-3 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="txtKeyCustomers" name="txtKeyCustomers" type="text" required="">
            <span class="floating-label"> Key Customers</span>
          </div>
          <div class="col-sm-5 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="txtTotalFundingReveived_InUSD" name="txtTotalFundingReveived_InUSD" type="text" required="">
            <span class="floating-label"> Total Funding (In USD)</span>
          </div>
          <div class="col-sm-4 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="txtTotalRoundsofFunding" name="txtTotalRoundsofFunding" type="text" required="">
            <span class="floating-label"> Total Rounds of Funding</span>
          </div>
        </div>
        <div class="w-100 mt-2">
          <p class="font-weight-bold small-display mb-2 ml-2">INVESTORS</p>
        </div>
        <div class="col-sm-8 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="investingFirm" name="investingFirm" type="text" />
          <span class="floating-label">
            Firm<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-4 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " id="investingAmount" name="investingAmount" type="text" />
          <span class="floating-label"> Amount<span class="text-danger">*</span></span>
        </div>
        <div class="mt-2 row mx-0 w-100">
          <div class="col-sm-6 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " id="investingrevenue" name="investingrevenue" type="text" />
            <span class="floating-label"> 2020 Revenues (In USD)</span>
          </div>
          <div class="col-sm-6 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " type="text" required="" />
            <span class="floating-label"> 2021 Revenues (In USD)</span>
          </div>
          <div class="col-sm-12 mb-3 px-1">
            <input class="form-control w-100 border-radius-0 " type="text" required="" />
            <span class="floating-label"> 2022 Revenues (In USD)</span>
          </div>
        </div>
        <div class="col-12 mb-1">
            <p>Major Milestones Achieved<span class="text-danger">*</span></p>
        </div>

        <div class="col-sm-12 mb-3 px-1">
          <textarea rows="4" cols="50" class="w-100" form="usrform" placeholder=" 1500 characters Limit"></textarea>
        </div>

        <div class="w-100 mt-2">
          <p class="font-weight-bold small-display mb-2 ml-2"> SUBMITTER </p>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 "  id="txtSubmitter_FirstName" name="txtSubmitter_FirstName" type="text" required="">
          <span class="floating-label">
             First Name<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="text" id="txtSubmitter_LastName" name="txtSubmitter_LastName" required="">
          <span class="floating-label">
             Last Name<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="text"  id="txtSubmitter_Company" name="txtSubmitter_Company" required="">
          <span class="floating-label">
            Company Name <span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="email" id="txtSubmitter_email" name="txtSubmitter_email" required="">
          <span class="floating-label">
          Email<span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-6 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="email" id="txtSubmitter_Confim_email" name="txtSubmitter_Confim_email" required="">
          <span class="floating-label">
            Confirm Email <span class="text-danger">*</span> </span>
        </div>
        <div class="col-sm-12 mb-3 px-1">
          <input class="form-control w-100 border-radius-0 " type="number" id="txtSubmitter_phone" name="txtSubmitter_phone" required="">
          <span class="floating-label">
            Phone <span class="text-danger">*</span> </span>
        </div>

        <div class="col-sm-12 mb-3 px-1 d-flex align-items-center ">
            <p class="col-6 px-0">Share any other details via an unrestricted download link.</p>
            <input class="form-control border-radius-0 " type="text" id="" name="" required="">
          </div>

          
          
         
        </div>
        <p class="text-xl-left text-lg-left ml-2 mt-4 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory </p>
        <!-- Submit Button -->
        <div class="col-12 text-center my-4">
          <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="SaveData()">Submit</button>
        </div>
    </form>
  </div>


</div>

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

<script>
  /*let form = document.getElementsByTagName("form")[0];
    form.addEventListener("submit", (e) => {
    e.preventDefault();
    alert("Thank you for Register ");
    });*/
</script>

</body>

</html>