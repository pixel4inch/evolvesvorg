<!DOCTYPE html>
<%@Language="VBScript"%>
    <!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css" />
    <link rel="stylesheet" href="plugins/slick/slick.css" />
    <link rel="stylesheet" href="plugins/slick/slick-theme.css" />
    <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="plugins/aos/aos.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

    <!---WEB COMPONETNS-->
    <script src="./webcomponts/headerComponents.js"></script>
    <script src="./webcomponts/FooterComponent.js"></script>
    <script src="./webcomponts/ScrollToTop.js"></script>
    <script src="./webcomponts/dummytext.js"></script>


    <!-- JAVASCRIPTS -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/fancybox/jquery.fancybox.min.js"></script>
    <script src="plugins/syotimer/jquery.syotimer.min.js"></script>
    <script src="plugins/aos/aos.js"></script>
    <html lang="en">

    <head>
        <% dim PGreferer 
		PGreferer=trim(Request.ServerVariables("HTTP_REFERER"))
		'' response.write "Referer Page = " &  PGreferer %>
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
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
            <style>
                .clsmandatory {
                    position: absolute !important;
                    left: 10px;
                    top: 8px;
                    font-weight: bold;
                    color: red !important;

                    .formmandatory {
                        position: absolute;
                        left: 10px;
                        top: 5px;
                        color: red;
                        font-size: 13px;
                    }

                }
            </style>
            <script>

                function SaveRecommendData() {
                    //alert ("HI");
                    //var iSno = rno;			
                    var nfirst_name = $("#nfirst_name").val();
                    var nlast_name = $("#nlast_name").val();
                    var nlinkedin = $("#nlinkedin").val();
                    var ncompany = $("#ncompany").val();
                    var nposition = $("#nposition").val();
                    var nemail = $("#nemail").val();
                    var efirst_name = $("#efirst_name").val();
                    var elast_name = $("#elast_name").val();
                    var elinkedin = $("#elinkedin").val();
                    var ecompany = $("#ecompany").val();
                    var eposition = $("#eposition").val();
                    var eemail = $("#eemail").val();
                    var page_source = $("#page_source").val();



                    // alert(vReportName);
                    if (nemail != null && nemail != '') {
                        //alert(nemail);
                        //alert(page_source1);
                        $.ajax({
                            url: "Ajax_AddRecommend.asp",
                            type: "POST",
                            data: 'page_source=' + encodeURIComponent(page_source) + '&nfirst_name=' + encodeURIComponent(nfirst_name) + '&nlast_name=' + encodeURIComponent(nlast_name) + '&nlinkedin=' + encodeURIComponent(nlinkedin) + '&ncompany=' + encodeURIComponent(ncompany) + '&nposition=' + encodeURIComponent(nposition) + '&nemail=' + encodeURIComponent(nemail) + '&efirst_name=' + encodeURIComponent(efirst_name) + '&elast_name=' + encodeURIComponent(elast_name) + '&elinkedin=' + encodeURIComponent(elinkedin) + '&ecompany=' + encodeURIComponent(ecompany) + '&eposition=' + encodeURIComponent(eposition) + '&eemail=' + encodeURIComponent(eemail) + '',
                            success: function (data) {
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
                    else {

                        alert("values can't be left blank");

                    }



                }
            </script>
    </head>

    <body class="body-wrapper d-flex align-items-center" data-spy="scroll" data-target=".privacy-nav">



        <!-- Content -->
        <div class="row mx-0">
            <div class="col-xl-7 col-lg-8 col-md-10 col-12 mx-auto p-3 ">
                <div class="w-100">
                    <h3 class="font-display4 mt-3  mb-4">Please nominate another domain expert you know or self-nominate
                        for a prompt consideration and on-boarding. You must be first registered and logged-in on our
                        service to nominate.</h3>
                </div>



                <!---nested collapse-->
                <div class="row mx-0 mb-2">
                    <div class="d-flex mr-4 mb-2  p-0">
                        <input type="radio" data-toggle="collapse" data-target="#collapse-nomanate"
                            name="collapseGroup" checked/>
                        <p class="para-display1 ml-1 font-weight-bold ">I Nominate Myself</p>
                    </div>
					 <div class="d-flex mr-4 mb-2  p-0">
                    <input name="collapseGroup" type="radio" data-toggle="collapse"
                        data-target="#collapserecommended" />
                    <p class="para-display1 ml-1 font-weight-bold">I Nominate Another Domain Expert</p>
					</div>
                </div>

                <div class="w-100  border " id="recommend_forms">

                    <div id="collapse-nomanate" class="panel-collapse collapse show p-2" data-parent="#recommend_forms">

                        <!----JOIN US START---->


                        <!-- Page Title -->
                        <% Dim PageType 
						PageType=""
						PageType=trim(request("pageType")) %>
                           
                            <div class="w-100 p-0">
                                <h3 class="font-display4 pb-2 border-bottom text-center main-font-color w-100">CREATE
                                    PROFILE &
                                    JOIN US</h3>
                                <div class="col-12 d-flex   justify-content-center flex-column h-100"
                                    style="align-items: baseline;">
                                    <h4 class="font-display4 mb-0 text-center w-100 mb-3"> Edit Profile Picture</h4>
                                </div>
                                <form action="#">

                                    <div class="row position-relative d-flex align-items-center">
                                        <div class="col-12 medium-2 large-2 columns text-center">
                                            <div class="circle mx-auto">
                                                <img class="profile-pic"
                                                    src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541">
                                            </div>
                                            <div class="p-image">
                                                <i class="fa fa-camera upload-button"></i>
                                                <input class="file-upload" type="file" accept="image/*" />
                                            </div>
                                        </div>


                                </form>

                            </div>

                            <div class="w-100 mt-2" id="formblock">

                                <hr />

                                <div class="row mx-0">
                                    <!-- First Name -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">First Name<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1 " type="text" placeholder=""
                                            id="first_name" name="first_name" required="">
                                    </div>
                                    <!-- Last Name -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Last Name<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="text" placeholder="" id="last_name"
                                            name="last_name" required="">
                                    </div>

                                    <!-- Email -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Email<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="email" placeholder=" " id="email"
                                            name="email" required="">
                                    </div>
                                    <!-- Password -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Password<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="password" placeholder=""
                                            id="password" name="password" required="">
                                    </div>
                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">Confirm Password<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="password" placeholder=""
                                            id="Confirmpassword" name="Confirmpassword" required="">
                                    </div>
                                    <!-- Mobile Phone -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Company<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="text" placeholder="" id="company"
                                            name="company" required="">
                                    </div>

                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Designation<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=""
                                            id="designation" name="designation" required="">
                                    </div>

                                    <!-- Website -->
                                    <!--div class="col-sm-6 mb-2 p-1">
                   <span class="floating-label">Company URL<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="Website" placeholder="" id="Website"
                    name="Website" required="">
                </div-->


                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">LinkedIn URL<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=" "
                                            id="linkedin_url" name="linkedin_url" required="">
                                    </div>

                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">Twitter Handle<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=" "
                                            id="twitter_url" name="twitter_url" required="">
                                    </div>

                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">YouTube Channel<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=" "
                                            id="youtube_url" name="youtube_url" required="">
                                    </div>

                                    <!-- Website -->
                                    <div class="col-sm-12 mb-0 p-1 mt-0 border-bottom pb-2 ">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <span class="formmandatory">* </span>
                                            <p class="font-weight-bold main-font-color mb-0 ml-3">SPEAKING INTERESTS</p>

                                        </div>
                                    </div>

                                    <div class="col-sm-12 mb-0 p-1 mt-1  pb-2 ">
                                        <p class="text-left pl-3 mt-0 mb-2">Annual Speaking Engagements </p>

                                        <div class="d-flex  justify-content-start align-items-center  pl-2 w-100  ">
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="5" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;&lt; 5</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="5-10" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;5-10</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "><input
                                                    type="radio" value="11-20" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;11-20 </p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="20+" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;&gt; 20</p>
                                            </span>

                                        </div>
                                    </div>

                                    <div class="col-sm-12 mb-0 p-1 mt-1  pb-2 ">
                                        <p class="text-left pl-3 mt-0 mb-2">Future Speaking Interest </p>

                                        <div class="d-flex  justify-content-start align-items-center  pl-2 w-100  ">
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="Virtual" id="linkedIn_engage"
                                                    name="Featurespeaking">
                                                <p>&nbsp;Virtual </p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="Hybrid" id="linkedIn_engage"
                                                    name="Featurespeaking">
                                                <p>&nbsp;Hybrid</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "><input
                                                    type="radio" value="In-Person" id="linkedIn_engage"
                                                    name="Featurespeaking">
                                                <p>&nbsp;In-Person</p>
                                            </span>


                                        </div>
                                    </div>



                                    <div class="col-sm-12 mb-0 p-1 mt-2  border-bottom pb-2 ">
                                        <div class="d-flex justify-content-start align-items-center">
                                            <span class="formmandatory">* </span>
                                            <input type="checkbox" data-toggle="collapse" href="#collapseExample"
                                                role="button" aria-expanded="false" aria-controls="collapseExample"
                                                class="ml-3" />
                                            <p class="font-weight-bold main-font-color mb-0 ml-2">DOMAIN EXPERTISE</p>

                                        </div>
                                    </div>
                                    <div class="w-100 collapse  m-2 " id="collapseExample">
                                        <div class="col-sm-12 mb-0 p-0 border-bottom">
                                            <div>
                                                <!--input type="text" id="myInput" class="domain-search" onkeyup="myFunction()" placeholder="Search Domain" title="Type in a name" class="border shadow-sm my-3 col-11 mx-auto" style="width:90%; margin:0 auto; margin-bottom:10px"-->
                                                <div class="domain-table-block">
                                                    <table id="myTable" class="table mb-0  table-striped"
                                                        id="domain-list-table">
                                                        <tr class="header" style="background-color:#f7e1d7">
                                                            <th class="text-center py-1   col-9">Domain</th>
                                                            <th class="text-center py-1   col-2">Primary</th>
                                                            <th class="text-center py-1   col-3">Relevant</th>
                                                        </tr>
                                                        <tbody id="domain-list">

                                                            <script src="https://code.jquery.com/jquery-3.6.3.js"
                                                                integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
                                                                crossorigin="anonymous"></script>
                                                            <script>
                                                                $(document).ready(function () {
                                                                    $.getJSON("./data/DomainName.json", function (data) {
                                                                        var output = '';
                                                                        console.log(data)
                                                                        $.each(data.domainlist, function (key, value) {
                                                                            output += `
                                      <tr>
                                        <td class="text-left py-1  pl-4 col-9">` + value.Name + `</td>
                                        <td class="text-center py-1 col-3"> <input type="radio" value="`+ value.Name + `" id="primarydomainlist" name="primarydomainlist"/> </td>
                                        <td class="text-center py-1 col-3"> <input type="checkbox" value="`+ value.Name + `" id="secondarydomainlist_` + value.Id + `" name="secondarydomainlist"/> </td>
                                      </tr> `;
                                                                        });
                                                                        $('#domain-list').html(output);
                                                                    }).fail(function () {
                                                                        document.write("An error has occurred.");
                                                                    });
                                                                });
                                                            </script>
                                                            <tr>
                                                                <td class="text-left py-1  pl-4 col-9"><input
                                                                        type="text" name="new_domain" id="new_domain">
                                                                </td>
                                                                <td class="text-center py-1 col-3"> <input type="radio"
                                                                        value="" id="new_domain_primary"
                                                                        name="new_domain_primary" />
                                                                </td>
                                                                <td class="text-center py-1 col-3"> <input
                                                                        type="checkbox" value=""
                                                                        id="new_domain_secondary"
                                                                        name="new_domain_secondary" /> </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>



                                                </div>
                                            </div>

                                            <div class="row mx-0 border-top mt-3">
                                                <div
                                                    class="d-flex justify-content-center w-100 my-3 align-items-center">

                                                    <lable class="mx-3 para-display2 text-uppercase font-weight-bold">
                                                        OTHER
                                                    </lable>
                                                    <input type="text" id="txtodoamin" name="txtodoamin">
                                                    <button class="btn btn-sm text-white " type="submit"
                                                        onclick="savedomain()">SUBMIT</button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 mb-0 p-1 mt-3  pb-2 d-flex  align-items-center ml-3">
                                        <input type="checkbox" class="form-check-input ml-0" id="check_social"
                                            name="check_social" />
                                        <p class="font-weight-bold main-font-color mb-0 ml-4 mt-1">I will support your
                                            programs
                                            on social media</p>
                                        <br />
                                    </div>
                                    <div class="row mx-0" id="collapseblock">
                                        <p class=" main-font-color mb-0  ml-4 pl-1">&nbsp;&nbsp;&nbsp;Select preferred
                                            social
                                            media</p>
                                        <div
                                            class="d-flex  justify-content-start align-items-center ml-4 pl-2 w-100 mt-3 ">
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="linkedIn_engage"
                                                    name="linkedIn_engage" />
                                                <p>&nbsp;LinkedIn</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="facebook_engage"
                                                    name="facebook_engage" />
                                                <p>&nbsp;Facebook</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "><input
                                                    type="checkbox" value="Yes" id="twitter_engage"
                                                    name="twitter_engage" />
                                                <p>&nbsp;Twitter</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="instagram_engage"
                                                    name="instagram_engage" />
                                                <p>&nbsp;Instagram</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="youtube_engage"
                                                    name="youtube_engage" />
                                                <p>&nbsp;YouTube </p>
                                            </span>
                                        </div>

                                        <!--div class="w-100 collapse   m-2 " id="social_support1" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="LinkedIn" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support2" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder=" Facebook" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support3" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Twitter" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support4" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Instagarm" id="LinkedIn" name="LinkedIn" required="">
                </div>
                <div class="w-100 collapse   m-2 " id="social_support5" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Youtube" id="LinkedIn" name="LinkedIn" required="">
                </div-->
                                    </div>

                                    <div class="w-100 pt-2 border-top">
                                        <p class=" main-font-color mb-0 font-weight-bold text-left mt-3  ml-3 pl-1">What
                                            influencer categories best represents you?</p>

                                        <div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_enterpreneur"
                                                name="check_enterpreneur" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Tech Entrepreneur </p>
                                        </div>

                                        <div class="col-sm-12 mb-0 pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_investor"
                                                name="check_investor" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Venture Investor </p>
                                        </div>

                                        <div class="col-sm-12 mb-0 pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_excutive"
                                                name="check_excutive" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Enterprise Executive </p>
                                        </div>



                                        <div class="col-sm-12 mb-0  pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_social"
                                                name="check_social" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Ecosystem Facilitator </p>
                                        </div>

                                        <div class="col-sm-12 mb-0  mt-0  pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_social"
                                                name="check_social" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Academia </p>
                                        </div>

                                        <div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_media"
                                                name="check_media" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Media </p>
                                        </div>
                                        <div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_other"
                                                name="check_other" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Other</p>
                                        </div>

                                        <input type="hidden" name="source_type" id="source_type" value="<%=PageType%>">

                                        <!-- Submit Button -->
                                        <div class="col-12 text-center">
                                            <button class="btn btn-main-md   mx-auto py-2 px-2 my-4"
                                                onclick="SaveData()">SUBMIT</button>

                                        </div>
                                        <p class="text-left mr-2" style="font-size:13px;font-style:italic;">Fields
                                            marked <span style="color:red">*</span> are mandatory</p>
                                    </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Page Title -->
                    </div>




                    <!----JOIN US END----->




                </div>

                <div id="collapserecommended" class="panel-collapse collapse  p-2 " data-parent="#recommend_forms">
                   
				   <!-- Page Title -->
                        <%  
						PageType=""
						PageType=trim(request("pageType")) %>
                            
							 <div class=" w-100 ml-1 pl-1 pb-2 d-flex align-items-center  justify-content-start mb-4 pt-1 border-bottom">
								<label class="form-check-labe  font-weight-bold mb-0 mt-1 font-display4 main-font-color"
								  for="exampleCheck1">NOMINATOR </label>
							  </div>
							  <!----NOMINTOR FORM---->
							  
							   <div class="w-100">

            <div class="w-100" id="formblock">
              <div class="row mx-0">
                <!-- fName -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="First Name" required=""
                    name="nfirst_name" id="nfirst_name">
                </div>
                <!-- lName -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Last Name" required=""
                    name="nlast_name" id="nlast_name">
                </div>

                <!-- Linkedin -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="LinkedIn Link" required=""
                    name="nlinkedin" id="nlinkedin">
                </div>
                <!-- Position -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Position" required=""
                    name="nposition" id="nposition">
                </div>


                <!-- Email -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder=" Company" required=""
                    name="ncompany" id="ncompany">
                </div>
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="email" placeholder="Email" name="nemail"
                    id="nemail">
                </div>

              </div>

             
           

            </div>
           
          </div>
							  
							  
							  <!----NOMINOTOR FORM ENDS--->
							  
							
							


							 <div class=" w-100 ml-1 pl-1 pb-2 d-flex align-items-center  justify-content-start mb-4 pt-3 border-bottom">
								<label class="form-check-labe  font-weight-bold mb-0 mt-1 font-display4 main-font-color"
								  for="exampleCheck1">RECOMMENDED DOMAIN EXPERT</label>
							  </div>

                   

                            <div class="w-100 mt-2" id="formblock">

                             

                                <div class="row mx-0">
                                    <!-- First Name -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">First Name<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1 " type="text" placeholder=""
                                            id="first_name" name="first_name" required="">
                                    </div>
                                    <!-- Last Name -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Last Name<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="text" placeholder="" id="last_name"
                                            name="last_name" required="">
                                    </div>

                                    <!-- Email -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Email<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="email" placeholder=" " id="email"
                                            name="email" required="">
                                    </div>
                                    <!-- Password -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Password<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="password" placeholder=""
                                            id="password" name="password" required="">
                                    </div>
                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">Confirm Password<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="password" placeholder=""
                                            id="Confirmpassword" name="Confirmpassword" required="">
                                    </div>
                                    <!-- Mobile Phone -->
                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Company<span class="text-danger">*</span> </span>
                                        <input class="form-control main mb-1" type="text" placeholder="" id="company"
                                            name="company" required="">
                                    </div>

                                    <div class="col-sm-6 mb-2 p-1">
                                        <span class="floating-label">Designation<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=""
                                            id="designation" name="designation" required="">
                                    </div>

                                    <!-- Website -->
                                    <!--div class="col-sm-6 mb-2 p-1">
                   <span class="floating-label">Company URL<span class="text-danger">*</span> </span>
                  <input class="form-control main mb-1" type="Website" placeholder="" id="Website"
                    name="Website" required="">
                </div-->


                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">LinkedIn URL<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=" "
                                            id="linkedin_url" name="linkedin_url" required="">
                                    </div>

                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">Twitter Handle<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=" "
                                            id="twitter_url" name="twitter_url" required="">
                                    </div>

                                    <div class="col-sm-12 mb-2 p-1">
                                        <span class="floating-label">YouTube Channel<span class="text-danger">*</span>
                                        </span>
                                        <input class="form-control main mb-1" type="text" placeholder=" "
                                            id="youtube_url" name="youtube_url" required="">
                                    </div>

                                    <!-- Website -->
                                    <div class="col-sm-12 mb-0 p-1 mt-0 border-bottom pb-2 ">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <span class="formmandatory">* </span>
                                            <p class="font-weight-bold main-font-color mb-0 ml-3">SPEAKING INTERESTS</p>

                                        </div>
                                    </div>

                                    <div class="col-sm-12 mb-0 p-1 mt-1  pb-2 ">
                                        <p class="text-left pl-3 mt-0 mb-2">Annual Speaking Engagements </p>

                                        <div class="d-flex  justify-content-start align-items-center  pl-2 w-100  ">
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="5" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;&lt; 5</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="5-10" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;5-10</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "><input
                                                    type="radio" value="11-20" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;11-20 </p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="20+" id="linkedIn_engage" name="speaking">
                                                <p>&nbsp;&gt; 20</p>
                                            </span>

                                        </div>
                                    </div>

                                    <div class="col-sm-12 mb-0 p-1 mt-1  pb-2 ">
                                        <p class="text-left pl-3 mt-0 mb-2">Future Speaking Interest </p>

                                        <div class="d-flex  justify-content-start align-items-center  pl-2 w-100  ">
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="Virtual" id="linkedIn_engage"
                                                    name="Featurespeaking">
                                                <p>&nbsp;Virtual </p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="radio" value="Hybrid" id="linkedIn_engage"
                                                    name="Featurespeaking">
                                                <p>&nbsp;Hybrid</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "><input
                                                    type="radio" value="In-Person" id="linkedIn_engage"
                                                    name="Featurespeaking">
                                                <p>&nbsp;In-Person</p>
                                            </span>


                                        </div>
                                    </div>



                                    <div class="col-sm-12 mb-0 p-1 mt-2  border-bottom pb-2 ">
                                        <div class="d-flex justify-content-start align-items-center">
                                            <span class="formmandatory">* </span>
                                            <input type="checkbox" data-toggle="collapse" href="#collapseExample"
                                                role="button" aria-expanded="false" aria-controls="collapseExample"
                                                class="ml-3" />
                                            <p class="font-weight-bold main-font-color mb-0 ml-2">DOMAIN EXPERTISE</p>

                                        </div>
                                    </div>
                                    <div class="w-100 collapse  m-2 " id="collapseExample">
                                        <div class="col-sm-12 mb-0 p-0 border-bottom">
                                            <div>
                                                <!--input type="text" id="myInput" class="domain-search" onkeyup="myFunction()" placeholder="Search Domain" title="Type in a name" class="border shadow-sm my-3 col-11 mx-auto" style="width:90%; margin:0 auto; margin-bottom:10px"-->
                                                <div class="domain-table-block">
                                                    <table id="myTable" class="table mb-0  table-striped"
                                                        id="domain-list-table">
                                                        <tr class="header" style="background-color:#f7e1d7">
                                                            <th class="text-center py-1   col-9">Domain</th>
                                                            <th class="text-center py-1   col-2">Primary</th>
                                                            <th class="text-center py-1   col-3">Relevant</th>
                                                        </tr>
                                                        <tbody id="domain-list">

                                                            <script src="https://code.jquery.com/jquery-3.6.3.js"
                                                                integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
                                                                crossorigin="anonymous"></script>
                                                            <script>
                                                                $(document).ready(function () {
                                                                    $.getJSON("./data/DomainName.json", function (data) {
                                                                        var output = '';
                                                                        console.log(data)
                                                                        $.each(data.domainlist, function (key, value) {
                                                                            output += `
                                      <tr>
                                        <td class="text-left py-1  pl-4 col-9">` + value.Name + `</td>
                                        <td class="text-center py-1 col-3"> <input type="radio" value="`+ value.Name + `" id="primarydomainlist" name="primarydomainlist"/> </td>
                                        <td class="text-center py-1 col-3"> <input type="checkbox" value="`+ value.Name + `" id="secondarydomainlist_` + value.Id + `" name="secondarydomainlist"/> </td>
                                      </tr> `;
                                                                        });
                                                                        $('#domain-list').html(output);
                                                                    }).fail(function () {
                                                                        document.write("An error has occurred.");
                                                                    });
                                                                });
                                                            </script>
                                                            <tr>
                                                                <td class="text-left py-1  pl-4 col-9"><input
                                                                        type="text" name="new_domain" id="new_domain">
                                                                </td>
                                                                <td class="text-center py-1 col-3"> <input type="radio"
                                                                        value="" id="new_domain_primary"
                                                                        name="new_domain_primary" />
                                                                </td>
                                                                <td class="text-center py-1 col-3"> <input
                                                                        type="checkbox" value=""
                                                                        id="new_domain_secondary"
                                                                        name="new_domain_secondary" /> </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>



                                                </div>
                                            </div>

                                            <div class="row mx-0 border-top mt-3">
                                                <div
                                                    class="d-flex justify-content-center w-100 my-3 align-items-center">

                                                    <lable class="mx-3 para-display2 text-uppercase font-weight-bold">
                                                        OTHER
                                                    </lable>
                                                    <input type="text" id="txtodoamin" name="txtodoamin">
                                                    <button class="btn btn-sm text-white " type="submit"
                                                        onclick="savedomain()">SUBMIT</button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 mb-0 p-1 mt-3  pb-2 d-flex  align-items-center ml-3">
                                        <input type="checkbox" class="form-check-input ml-0" id="check_social"
                                            name="check_social" />
                                        <p class="font-weight-bold main-font-color mb-0 ml-4 mt-1">I will support your
                                            programs
                                            on social media</p>
                                        <br />
                                    </div>
                                    <div class="row mx-0" id="collapseblock">
                                        <p class=" main-font-color mb-0  ml-4 pl-1">&nbsp;&nbsp;&nbsp;Select preferred
                                            social
                                            media</p>
                                        <div
                                            class="d-flex  justify-content-start align-items-center ml-4 pl-2 w-100 mt-3 ">
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="linkedIn_engage"
                                                    name="linkedIn_engage" />
                                                <p>&nbsp;LinkedIn</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="facebook_engage"
                                                    name="facebook_engage" />
                                                <p>&nbsp;Facebook</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "><input
                                                    type="checkbox" value="Yes" id="twitter_engage"
                                                    name="twitter_engage" />
                                                <p>&nbsp;Twitter</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="instagram_engage"
                                                    name="instagram_engage" />
                                                <p>&nbsp;Instagram</p>
                                            </span>
                                            <span class="mx-2 d-flex  justify-content-start align-items-center "> <input
                                                    type="checkbox" value="Yes" id="youtube_engage"
                                                    name="youtube_engage" />
                                                <p>&nbsp;YouTube </p>
                                            </span>
                                        </div>

                                        <!--div class="w-100 collapse   m-2 " id="social_support1" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="LinkedIn" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support2" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder=" Facebook" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support3" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Twitter" id="LinkedIn" name="LinkedIn" required="">
                </div>

                <div class="w-100 collapse   m-2 " id="social_support4" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Instagarm" id="LinkedIn" name="LinkedIn" required="">
                </div>
                <div class="w-100 collapse   m-2 " id="social_support5" data-parent="#collapseblock">
                  <input class="form-control main mb-1 w-100 mx-auto" type="text" placeholder="Youtube" id="LinkedIn" name="LinkedIn" required="">
                </div-->
                                    </div>

                                    <div class="w-100 pt-2 border-top">
                                        <p class=" main-font-color mb-0 font-weight-bold text-left mt-3  ml-3 pl-1">What
                                            influencer categories best represents you?</p>

                                        <div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_enterpreneur"
                                                name="check_enterpreneur" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Tech Entrepreneur </p>
                                        </div>

                                        <div class="col-sm-12 mb-0 pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_investor"
                                                name="check_investor" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Venture Investor </p>
                                        </div>

                                        <div class="col-sm-12 mb-0 pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_excutive"
                                                name="check_excutive" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Enterprise Executive </p>
                                        </div>



                                        <div class="col-sm-12 mb-0  pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_social"
                                                name="check_social" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Ecosystem Facilitator </p>
                                        </div>

                                        <div class="col-sm-12 mb-0  mt-0  pl-1 d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_social"
                                                name="check_social" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Academia </p>
                                        </div>

                                        <div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_media"
                                                name="check_media" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Media </p>
                                        </div>
                                        <div class="col-sm-12 mb-0 pl-1  d-flex  align-items-center ml-3">
                                            <input type="checkbox" class="form-check-input ml-0" id="check_other"
                                                name="check_other" />
                                            <p class=" main-font-color mb-0 ml-4 mt-1">Other</p>
                                        </div>

                                        <input type="hidden" name="source_type" id="source_type" value="<%=PageType%>">

                                        <!-- Submit Button -->
                                        <div class="col-12 text-center">
                                            <button class="btn btn-main-md   mx-auto py-2 px-2 my-4"
                                                onclick="SaveData()">SUBMIT</button>

                                        </div>
                                        <p class="text-left mr-2" style="font-size:13px;font-style:italic;">Fields
                                            marked <span style="color:red">*</span> are mandatory</p>
                                    </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Page Title -->
				   
				   
				   
                </div>


            </div>

        </div>


        </div>
        </div>

    </body>

    </html>