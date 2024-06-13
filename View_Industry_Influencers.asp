<!DOCTYPE html>
<!--#include file="LoadingImage.asp"-->
<html lang="en">

<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>DOMAIN EXPERT NETWORK</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="description" content="Evolv">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Evolv ">
  <meta name="generator" content="Evolv">
  
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
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet"/>
    <!---WEB COMPONETNS-->
    <script src="./webcomponts/headerComponents.js"></script>
    <script src="./webcomponts/FooterComponent.js"></script>
    <script src="./webcomponts/ScrollToTop.js"></script>
    <script src="./webcomponts/dummytext.js"></script>
  
  <script>
  window.onbeforeunload = function () {
  window.scrollTo(0, 0);
	}
  </script>
<%


Function SelectedActive(val1,val2)
	IF trim(val1) = trim(val2) then
		SelectedActive = "active"		
	else
		SelectedActive = ""
	End IF
END Function

'' for paging
	dim k,rec_per_page
	rec_per_page=36
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp

%>

<style>
.no-list-style, .no-list-style li {
	list-style: none;
}

</style>
<%
''Response.ExpiresAbsolute = 0
''Response.CodePage = 65001
'Response.CharSet = "utf-8"

''Response.CodePage = 65001
''Response.CharSet = "utf-8"
Server.ScriptTimeout = 2000
%>
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="rc4.inc"-->


<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
 <!--div id="overlay">
    <div id="progstat" ></div>
    <div id="progress"></div>
    </div>
  
  </div-->
<!--============================
=           Top Strip     Start   =
=============================-->
	<!--include file="ASPIncludes/topstrip.asp"-->
<header-component></header-component>
<!--============================
=            Top Strip      End   =
=============================-->




<!--================================
=            Page Title            =
=================================-->

<section class="section pt-3">
	<div class="container">
		<div class="row">
			<div class="w-100">
				<!-- Page Title -->
				<div class=" mb-3 position-relative">
				
				<%
				'''
				''test = EnDeCrypt("Internet of Things",CHkGiaPSWD)
				''response.write server.urlencode(test)
				dim ShowTypeSTR, SRCWordSTR, GTcountrySTR, InvTypeSTR
				dim industry,sno
				industry = trim(request("industry"))
				sno = trim(request("sno"))
				
				ShowTypeSTR = EnDeCrypt(trim(request("ShowType")),CHkGiaPSWD)
				SRCWordSTR = EnDeCrypt(trim(request("SRCWord")),CHkGiaPSWD)
				GTcountrySTR = EnDeCrypt(trim(request("GTcountry")),CHkGiaPSWD)
				InvTypeSTR = EnDeCrypt(trim(request("InvType")),CHkGiaPSWD)
				SrcTypeSTR = EnDeCrypt(trim(request("SrcType")),CHkGiaPSWD)
				EIDSTR = EnDeCrypt(trim(request("EID")),CHkGiaPSWD)
				cntSTR = EnDeCrypt(trim(request("cnt")),CHkGiaPSWD)
				'''ENCRYPT AGAIN
				dim REShowTypeSTR, RESRCWordSTR, REGTregionSTR, REInvTypeSTR
				REShowTypeSTR = server.urlencode(EnDeCrypt(trim(ShowTypeSTR),CHkGiaPSWD))
				RESRCWordSTR = server.urlencode(EnDeCrypt(trim(SRCWordSTR),CHkGiaPSWD))
				REGTcountrySTR = server.urlencode(EnDeCrypt(trim(GTcountrySTR),CHkGiaPSWD))
				REInvTypeSTR = server.urlencode(EnDeCrypt(trim(InvTypeSTR),CHkGiaPSWD))
				RESrcTypeSTR = server.urlencode(EnDeCrypt(trim(SrcTypeSTR),CHkGiaPSWD))
				REEIDSTR = server.urlencode(EnDeCrypt(trim(EIDSTR),CHkGiaPSWD))
				REcntSTR = server.urlencode(EnDeCrypt(trim(cntSTR),CHkGiaPSWD))
				
				Dim GetStatrtVal
				GetStatrtVal = EnDeCrypt(trim(request("Start")),CHkGiaPSWD)
				''response.write SrcTypeSTR
				Dim Start1, StartBack
							If trim(GetStatrtVal)<>"" Then
								Start1 = trim(GetStatrtVal)+30
								If trim(GetStatrtVal)<>0 then
									StartBack = trim(GetStatrtVal) - 30
								else
									StartBack = 0
								End If
							Else
								Start1 = 30
								StartBack = 0
							End If
						
				If trim(SRCWordSTR)="[" Then
					SRCWordSTR = "[S]"
				elseIf trim(SRCWordSTR)="" Then
					SRCWordSTR = "[A]"
				End If%>
					
				
				<!---h1 class="font-display2 text-center main-font-color mb-0" style="line-height: normal !important;">
				
					<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseCategory" aria-expanded="false" aria-controls="collapseCategory">VIEW DOMAIN EXPERTS BY CATEGORY</button>  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseALPHA" aria-expanded="false" aria-controls="collapseALPHA">VIEW DOMAIN EXPERTS ALPHABETICALLY</button></h1--->
					<div class="collapse" id="collapseCategory">
					  <div class="card card-body">
					  <!-- Industry-->
						<div class="container">
        <!--div class="row">
          <h3 class="b-0 text-center w-100 font-display1 main-font-color">DOMAIN EXPERTS BY CATEGORY</h3>

        </div--->
		
        <div class="row mt-3">
          <div class="row mx-0 pb-4 d-flex flex-wrap aling-items-center justify-content-center" id="domain-list">
            <script src="https://code.jquery.com/jquery-3.7.0.js"
              integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

            <script>
              // Fetch the JSON data file
              fetch('./data/showdomains.json')
                .then(response => response.json())
                .then(data => {
                  // Sort the data based on the 'name' property
                  const sortedData = data.sort((a, b) => a.Title.localeCompare(b.Title));
                   // Display the sorted data in the document
                   var output = '';
                   var preevent= 'A';
                   output += `
                              `;
                   $.each(sortedData, function (key, value) {
                    
                      if(preevent == value.alphapatic){
                        output += `   
                                <div class=" col-lg-3 col-md-4 col-sm-6 col-6 px-0 mb-3 mx-0 domain-items `+ value.alphapatic + `">
                                 <a href="./domain_innerpage.html?EventId=` + value.EventId + `" target="_blank"  class="mx-2 domain-list-items  ">`+ value.Title + ` </a>       
                              </div>`                             
                          }else{
                            output += `</div>
                             
                                <div class="alphaindex"> 
                                <p>`+ value.alphapatic + `</p>
                                </div>
                                <div class=" col-lg-3 col-md-4 col-sm-6 col-6 mb-3 px-0 mx-0 domain-items `+ value.alphapatic + `">
                                 <a href="./domain_innerpage.html?EventId=` + value.EventId + `" target="_blank"  class="mx-2 domain-list-items  ">`+ value.Title + ` </a>       
                              </div>                               
                              `;
                            } 
                            preevent= value.alphapatic;
                      });

                           
               

                  $('#domainlist').html(output);
                }).fail(function () {
                  document.write("An error has occurred.");
                });
            </script>
          </div>



          <div id="domainlist" class="domainlist d-flex flex-wrap justify-content-cener align-items-center p-2">



          </div>

        </div>
						
						
						<!--end industry -->
					  </div>
					</div>
					
				<%If trim(Start1)>=101 Then%>
					<div class="w-100   mb-1" style="display: flex;justify-content: center;gap:0px;align-items-center width: 100%;padding: 10px;z-index:999;/* height:30px; */">
						<a class="a_back a_nav  <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&InvType=<%=trim(REInvTypeSTR)%>&Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>" style=" margin: 5px align-items: center; display:flex ;  font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-left " aria-hidden="true"></i></a>
						
					</div>
					<!--div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 999; position: fixed !important; display: flex;justify-content: center; align-items: center;">
								<p align='center'><B> <font color='red' ><strong style='color:red;size:18px;'>VIEWING PRIVILEGES LIMITED. REQUEST FULL STACK ACCESS.</strong></font></p><a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://www.evolv.cc/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" style=" align-items: center;   font-weight: 900;   font-size: 20px;">Register</a>
							</div-->
							<div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 999; position: fixed !important; display: flex;justify-content: start; align-items: start; padding-top: 100px;">
								<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://www.evolv.cc/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 20px;">MEMEBER ZONE</a>
							</div>
					<%else
	
					If trim(Start1)=30 Then
						''response.write  trim(Start1) & "MMMMMMM"
					%>
					
					<div class="w-100   mb-1" style="display: flex;justify-content: center;gap:0px;align-items-center width: 100%;padding: 10px;z-index:999;/* height:30px; */">
					DOMAIN EXPERTS COUNT# 5202573
					</div>
					
					<div class="w-100   mb-1" style="display: flex;justify-content: center;gap:0px;align-items-center width: 100%;padding: 10px;z-index:999;/* height:30px; */">
						<a class=" a_back a_nav a_link_default <%=SelectedActive(request("Cp"),GTnum) %>"  style=" margin: 5px; align-items: center; display:flex ;  font-weight:900;   font-size: 20px;"><i class="fa fa-angle-double-left " style="color:#c4c4c4 !important;" aria-hidden="true"></i></a>
						<!--<a class="a_back a_nav  <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&InvType=<%=trim(REInvTypeSTR)%>&Start=<%=server.urlencode(EnDeCrypt(StartBack,CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(request("SrcType"))%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>" target="_blank" style=" margin: 5px;  align-items: center; display:flex ;  font-weight:900;   font-size: 20px;"><i class="fa fa-angle-double-left " aria-hidden="true"></i></a>-->
						
						<h1 class="font-display2 text-center main-font-color mb-0" style="line-height: normal !important;">
						<%'=request("ititle")
						%> 
						GLOBAL DOMAIN EXPERT NETWORK POOL</h1>
						
						<a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin: 5px;    align-items: center; display:flex ;font-weight:900;   font-size: 20px;"><i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
					</div>
					
					<%else
					
					response.write  trim(Start1) & "MMMMMMM"%>
					<div class="w-100   mb-1" style="display: flex;justify-content: center;gap:0px;align-items-center width: 100%;padding: 10px;z-index:999;/* height:30px; */">
					DOMAIN EXPERTS COUNT# 5202573
					</div>
						<div class="w-100   mb-1" style="display: flex;justify-content: center;gap:0px;align-items-center width: 100%;padding: 10px;z-index:999;/* height:30px; */">
						<a class="a_back  a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin:5px; align-items: center; display:flex ;  font-weight:900;   font-size: 20px;"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a>
								
								<h1 class="font-display2 text-center main-font-color mb-0" style="line-height: normal !important;">
								<%'=request("ititle")
								%> GLOBAL DOMAIN EXPERT NETWORK POOL</h1>
								<a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin:5px;   align-items: center; display:flex ;font-weight: 900;   font-size: 20px;"><i class="fa fa-angle-double-right" aria-hidden="true"></i> </a>
					</div>
					
					
					<%end if
					
					end if
						
					'''response.write "Industries = "&trim(CondQry)
					%>
				<!--h1 class="font-display2 col-lg-10 col-md-10 col-sm-10 col-10 text-center mx-auto" id="section-top">
					<%=UCase(industry)%> SPEAKERS [<span class="main-font-color" ><%=cntSTR%></span>]</h2-->
					
					
						
						
				</div>
				<!-- Page Description -->
				
			

			</div>
			
			
			
			<div class="col-12 mx-auto"  >
			<div class="w-100 mx-auto d-flex justify-content-center flex-wrap align-items-center" style="margin-top:-11px">
		
			<div class="d-flex justify-content-cener align-items-center" style="gap:0px">
			<%If trim(Start1)=36 Then%>
			<a class=" a_back a_nav a_link_default <%=SelectedActive(request("Cp"),GTnum) %>"  style=" margin:5px; align-items: center; display:flex ;  font-weight: 900;   font-size: 30px;"><i class="fa fa-caret-left" style="color:#c4c4c4 !important;" aria-hidden="true"></i></a>
			<%else%>
			<a class="a_back  a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin: 5px; align-items: center; display:flex ;  font-weight: 900;   font-size: 38px;color:#E82329;"><i class="fa fa-caret-left" aria-hidden="true"></i></a>
		    <%end if%>
							<p class="Alp_Display w-100  text-center mt-0 " style="margin-top:-10px !important"> 
							  <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&srctype=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">A</a> 
							  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">B</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">C</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">D</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">E</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">F</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">G</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">H</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">I</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">J</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">K</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">L</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">M</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">N</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">O</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">P</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Q</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">R</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[S]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[S]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">S</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">T</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">U</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">V</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">W</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">X</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Y</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Z</a>
				  		   </p>
						   <%If trim(Start1)>=151 Then%>
						   <a class="a_next a_nav a_link_default  <%=SelectedActive(request("Cp"),GTnum) %>"   style=" margin:5px;   align-items: center; display:flex ;font-weight: 900;   font-size: 30px;"><i class="fa fa-caret-right" style="color:#c4c4c4 !important;"  aria-hidden="true"></i> </a>  
						   <div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 999; position: fixed !important; display: flex;justify-content: start; align-items: start; padding-top:100px">
								
								<div class="b-0 text-center font-display4  my-4 collapseBtn " style="background: #b52424;">
									MEMEBER ZONE
								</div>
							</div>
						   <%else%>
						   <a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin:0px;   align-items: center; display:flex ;font-weight:900;   font-size: 38px;color:#E82329;"><i class="fa fa-caret-right" aria-hidden="true"></i> </a>
						  <%end if%>
					 </div>
			</div>
				<div class="rounded  p-2 bg-white" >
					
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Companies</h5>
					 </div-->
							 <div id="delegation_speakers" class="pt-2 d-flex flex-wrap  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center">
							<%	
							'''[EvolveSV].[dbo].[Speakers_List_DO_Tool]
						
							''CountryQry="SELECT * FROM   dbo.Curated_industry_Speakers  WHERE industry='"&trim(industry)&"' and sno not in (" & sno &") and Image_url not like ('https://exchange%')"
							
							''CountryQry="SELECT distinct first_name,last_name,headline,company_name,image_path FROM   dbo.evolv_industry_people  WHERE image_path not like ('https://exchange%') "
							
							CountryQry="SELECT distinct first_name,last_name,headline,company_name,Image_url FROM [EvolveSV].[dbo].[Speakers_List_DO_Tool]  WHERE (headline like ('%CEO%') OR headline like ('%President%') OR headline like ('%Chief%') OR headline like ('%founder%')) and Image_url is not null and trim(Image_url)<>'' and last_name Not like ('% %') and company_name is not null and relevance=1 "
							
							''CountryQry="SELECT distinct first_name,last_name,headline,company_name,Image_url FROM   dbo.Curated_industry_Speakers  WHERE  sno not in (" & sno &") and Image_url not like ('https://exchange%')"
							
							CountryQry="select  companyname as company_name,first_name,last_name,title as headline,image_path as Image_url from gia_mc_program.dbo.InfluencersPeople where filename in (select filename from gia_mc_program.dbo.vw_InfluencersCompanies_Sub_McpCodes_New where mcpcode in (select code from stat_globind.dbo.vw_MCPNewTopics where catid='"&trim(request("industry"))&"')) and image_path  is not null and image_path <>'NULL' and image_path <>''"
                         	
							If Trim(SRCWordSTR) <> "" Then
							''CountryQry = CountryQry & " and (a.last_name like '"&Trim(SRCWordSTR)&"%') "	
							           CountryQry = CountryQry & " and (last_name like '"&Trim(SRCWordSTR)&"%') "										
							End If									
							''CountryQry = CountryQry & " and " & CondQry & " order by a.last_name "	
				                     CountryQry = CountryQry &  " order by last_name "							
							
						
							Dim LimitSTR
							LimitSTR = ""
							''OFFSET 0 ROWS -- START FROM RECORD
							''FETCH NEXT 32 ROWS ONLY
							If trim(GetStatrtVal)="" then
								LimitSTR = " OFFSET 0 ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY"
							Else
								LimitSTR = " OFFSET "&trim(GetStatrtVal)&" ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY" 
								'''"limit "&trim(request("Start"))&", "&trim(request("E"))
							End If
							
							CountryQry = CountryQry & "  " &LimitSTR
							''response.write CountryQry
							''response.end
							
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.CursorType = 3				
							RSCountry.PageSize = cdbl(rec_per_page)	
							RSCountry.Open CountryQry, Datasource1
							
							If Not RSCountry.EOF Then 
							
							While Not RSCountry.EOF%>
							
							 
							<div class="delegation-card ">
								<div class="item">
								  <div class="img-block text-center">
								 
									<img class="w-100 shadow border" class="mx-auto" src="<%=trim(RSCountry("Image_url"))%>" alt="<%=trim(RSCountry("first_name"))%>&nbsp;<%=trim(RSCountry("last_name"))%>">
									</div>
									<div class="card-content">
										<h3><%=trim(RSCountry("first_name"))%>&nbsp;<%=trim(RSCountry("last_name"))%></h3>
										<h4 title="<%=trim(RSCountry("headline"))%>"><%=trim(RSCountry("headline"))%></h4>
										<h4 title="<%=trim(RSCountry("company_name"))%>"><%=trim(RSCountry("company_name"))%></h4>
									</div>
								</div>
							</div>
							<%
							RSCountry.movenext
							wend
							else
							response.write "<div class='text-center w-100 '><font color='red'>No Records Found With this Search</font></div>"
							End If
							set RSCountry = nothing
							
							
							%>	
							</div>
							
							
						
					</div>
					<br/>
					<div class="w-100 mx-auto d-flex justify-content-center flex-wrap align-items-center" style="margin-top:-11px">
		
			<div class="d-flex justify-content-cener align-items-center" style="gap:0px">
			<%If trim(Start1)=30 Then%>
			<a class=" a_back a_nav a_link_default <%=SelectedActive(request("Cp"),GTnum) %>"  style=" margin:5px; align-items: center; display:flex ;  font-weight: 900;   font-size: 30px;"><i class="fa fa-caret-left" style="color:#c4c4c4 !important;" aria-hidden="true"></i></a>
			<%else%>
			<a class="a_back  a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin: 5px; align-items: center; display:flex ;  font-weight: 900;   font-size: 38px;color:#E82329;"><i class="fa fa-caret-left" aria-hidden="true"></i></a>
		    <%end if%>
							<p class="Alp_Display w-100  text-center mt-0 " style="margin-top:-10px !important"> 
							  <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&srctype=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">A</a> 
							  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">B</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">C</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">D</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">E</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">F</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">G</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">H</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">I</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">J</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">K</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">L</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">M</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">N</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">O</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">P</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Q</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">R</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[S]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[S]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">S</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">T</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">U</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">V</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">W</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">X</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Y</a>
							  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="View_Industry_Influencers.asp?industry=<%=request("industry")%>&EID=<%=trim(REEIDSTR)%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>&ShowType=<%=trim(REShowTypeSTR)%>&SrcType=<%=trim(RESrcTypeSTR)%>&cnt=<%=trim(REcntSTR)%>">Z</a>
				  		   </p>
						   
						   
						   <a class="a_next a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="View_Industry_Influencers.asp?industry=<%=trim(request("industry"))%>&sno=<%=trim(request("sno"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=Trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&ShowType=<%=trim(REShowTypeSTR)%>&EID=<%=trim(REEIDSTR)%>&cnt=<%=trim(REcntSTR)%>#section-top"  style=" margin:0px;   align-items: center; display:flex ;font-weight:900;   font-size: 38px;color:#E82329;"><i class="fa fa-caret-right" aria-hidden="true"></i> </a>
						  
					 </div>
			</div>
				</div>




		</div>


</div>
	
</section>

<!--====  End of Page Title  ====-->




<!--============================
=            Footer            =
=============================-->
<!--============================
=            Footer       Start   =
=============================-->
	<!--include file="ASPIncludes/footer.asp"-->
	<footer-component></footer-component>
<!--============================
=            Footer       End   =
=============================-->

  <!-- To Top 
  <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>
  -->
  
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

  <!---scroll animation--->
<script src="./plugins/animated-counter/multi-animated-counter.js"></script>

</body>

<script id="jsbin-javascript">
  ;(function(){
    function id(container){return document.getElementById(container); }
    function loadbar() {
      var ovrl = id("overlay"),
          prog = id("progress"),
          stat = id("progstat"),
          img = document.images,
          c = 0;
          tot = img.length;
  
      function imgLoaded(){
        c += 1;
        var perc = ((100/tot*c) << 0) +"%";
        prog.style.width = perc;
        stat.innerHTML = "Loading <div><span></span></div>"+ "<i>" + perc + "</i>";
        if(c===tot) return doneLoading();
      }
      function doneLoading(){
        ovrl.style.opacity = 0;
        setTimeout(function(){ 
          ovrl.style.display = "none";
        }, 1200);
      }
      for(var i=0; i<tot; i++) {
        var tImg     = new Image();
        tImg.onload  = imgLoaded;
        tImg.onerror = imgLoaded;
        tImg.src     = img[i].src;
      }    
    }
    document.addEventListener('DOMContentLoaded', loadbar, false);
  }());
  </script>
  <script type="text/javascript">
	$(document).ready(function() {
		$("#overlay_loading").hide();
	});
</script>
</html>