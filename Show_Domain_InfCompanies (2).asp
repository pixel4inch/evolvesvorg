<!DOCTYPE html>
<!--#include file="LoadingImage.asp"-->
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Evolv - DASHBOARD</title>

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
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css"/>
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css"/>
  <link rel="stylesheet" href="plugins/slick/slick.css"/>
  <link rel="stylesheet" href="plugins/slick/slick-theme.css"/>
  <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css"/>
  <link rel="stylesheet" href="plugins/aos/aos.css"/>
<link rel="stylesheet" href="https://www.strategyr.com/css/CardsDesing.css"/>

  <!-- CUSTOM CSS -->
   <link href="https://www.evolvsv.org/css/style.css" rel="stylesheet"/>
  <link href="https://evolvesv.org/css/custome.css" rel="stylesheet"/>
  <link href="https://www.evolvsv.org/css/view_speakers.css" rel="stylesheet"/>
  <link href="css/phoca-flags.css" rel="stylesheet"/>
  <link href="./plugins/jsvectormap-master/dist/css/jsvectormap.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  
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
Response.flush
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
</head>

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<!--#include file="Encrypt_Decrypt_Links.asp"-->
<!--#include file="rc4.inc"-->
<body class="body-wrapper" id="container" data-spy="scroll" data-target=".privacy-nav" onBeforePrint="document.body.style.display='none';" onAfterPrint="document.body.style.display='block';" onContextmenu="return false" onSelectstart="return false" onDragstart="return false"  topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<!--<div id="overlay">
    <div id="progstat" ></div>
    <div id="progress"></div>
    </div>
  
  </div>-->
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
<!--<div id="endPopup" >
						<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://www.evolv.cc/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 20px;">MEMBER ZONE</a>
					</div>-->
					
<section class="section pt-0">
	<div class="">
		<div class="row">
			<div class="w-100">
				<!-- Page Title -->
				
				<%
				dim ShowTypeSTR, SRCWordSTR, GTcountrySTR
				ShowTypeSTR = EnDeCrypt(trim(request("ShowType")),CHkGiaPSWD)
				SRCWordSTR = EnDeCrypt(trim(request("SRCWord")),CHkGiaPSWD)
				GTcountrySTR = EnDeCrypt(trim(request("GTcountry")),CHkGiaPSWD)
				
				'''ENCRYPT AGAIN
				dim REShowTypeSTR, RESRCWordSTR, REGTregionSTR
				REShowTypeSTR = server.urlencode(EnDeCrypt(trim(ShowTypeSTR),CHkGiaPSWD))
				RESRCWordSTR = server.urlencode(EnDeCrypt(trim(SRCWordSTR),CHkGiaPSWD))
				REGTcountrySTR = server.urlencode(EnDeCrypt(trim(GTcountrySTR),CHkGiaPSWD))
				
				Dim GetStatrtVal 
				GetStatrtVal = EnDeCrypt(trim(request("start")),CHkGiaPSWD)
				''response.write 	GTcountrySTR
				ShowTypeSTR="DOMAIN"
				Dim Start1, StartBack
							If trim(GetStatrtVal)<>"" Then
								Start1 = cint(trim(GetStatrtVal))+36
								If trim(GetStatrtVal)<>0 then
									StartBack = cint(trim(GetStatrtVal)) - 36
								else
									StartBack = 0
								End If
							Else
								Start1 = 36
								StartBack = 0
							End If%>
								<h2 class="main-font-color mb-0 font-display1 text-center" id="section-top" >GLOBAL INNOVATION ECOSYSTEMS</h2>
					<h4 class="text-center font-weight-bold mt-3"><%''=ucase(trim(ShowTypeSTR))%>COMPANIES IN <%=ucase(trim(GTcountrySTR))%></h4>		
						<%	''If trim(Start1)>=900 Then
							''	Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
							''	response.end
							''End If%>	
							
							
					
				
				
				<!-- Page Description -->

			</div>

			<div class="col-12 mx-auto"  >
				<div class="  p-2 bg-white" >
					<div class="row mb-4 d-flex flex-nowrap justify-content-center align-items-center mb-0">
					<%	If trim(Start1)>72 Then
				
					''Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
					''response.end
					%>
					<div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 9999; position: fixed !important; display: flex;justify-content: start; align-items: start; padding-top:100px">
								
								<div class="b-0 text-center font-display4  my-4 collapseBtn " style="background: #b52424;">
									MEMEBER ZONE
								</div>
							</div>
				<%else%>
				
				
								<a class="a_back_nav a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Domain_Companies.asp?GTCountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style="z-index:9999;  align-items: center; display:flex ;  font-weight: bold; font-size: 25px;color:red;"><i class="fa fa-caret-left" aria-hidden="true"></i></a>
								<a class="a_next_nav a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Domain_Companies.asp?GTCountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style="z-index:9999;  align-items: center; display:flex ;font-weight: bold;   font-size: 25px;color:red;order: 2; "><i class="fa fa-caret-right" aria-hidden="true"></i> </a>
							
				<%end if%>
							<p class="Alp_Display  text-center mb-0  "> 
					<%'if trim(chkOpt)="Company" then%>					
					<a class="<%=SelectedActive(SRCWordSTR,"[0-9]") %>" style="width:42px !important" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[0-9]",CHkGiaPSWD))%>">0-9</a>&nbsp;
					<%'end if%>
                  <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>">A</a> 
				  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>">B</a>
                  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>">C</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>">D</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>">E</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>">F</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>">G</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>">H</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>">I</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>">J</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>">K</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>">L</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>">M</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>">N</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>">O</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>">P</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>">Q</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>">R</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"S") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("S",CHkGiaPSWD))%>">S</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>">T</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>">U</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>">V</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>">W</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>">X</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>">Y</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>">Z</a>
				  		   </p>
					 </div> 
					 <!--div class="row">	
							<h5 class="font-weight-bold text-center w-100">By Companies</h5>
					 </div-->
							<div id="delegation_speakers" class="pt-2 d-flex flex-wrap  justify-content-lg-center  justify-content-xl-center justify-content-md-center justify-content-center">
							<%
							''StageQry="select 'SEED STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where  try_cast(Total_Funding_Amount_Currency_in_USD as float) between 0 and 999999  union all  select 'GROWTH STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) between 1000000 and 25000000  union all  select 'LATE STAGE' as type,count(*) as Stage_count from  CB_Global_Startup_Companies where try_cast(Total_Funding_Amount_Currency_in_USD as float) > 25000000"
							''select organization_name ,website,image_url as Company_Image_url,country   from CB_Companies_All where industries like '%battery%' and ([organization_name] like '[D]%')  and image_url is not null order by image_url  OFFSET 0 ROWS FETCH NEXT 28 ROWS ONLY
							dim TBlName
							TBlName = "CB_Global_Startup_Companies"
							If ucase(trim(ShowTypeSTR))="STARTUPS" Then
								TBlName = "CB_Global_Startup_Companies"
								If (trim(GTcountrySTR)="SEED STAGE" OR trim(GTcountrySTR)="GROWTH STAGE" OR trim(GTcountrySTR)="LATE STAGE") Then
								CountryQry="select *,image_path as Company_Image_url from "&TBlName&" where 1=1 "
								else
								CountryQry="select *,image_path as Company_Image_url from "&TBlName&" where country = '"&trim(GTcountrySTR)&"'  "
								End IF
								
								If trim(request("StupType"))<> "" Then
										If trim(request("StupType"))="SEED STAGE" Then
											CountryQry = CountryQry & " and (try_cast(Total_Funding_Amount_Currency_in_USD as float) between 0 and 999999) "
										elseIf trim(request("StupType"))="GROWTH STAGE" Then
											CountryQry = CountryQry & " and (try_cast(Total_Funding_Amount_Currency_in_USD as float) between 1000000 and 25000000) "
										elseIf trim(request("StupType"))="LATE STAGE" Then
											CountryQry = CountryQry & " and (try_cast(Total_Funding_Amount_Currency_in_USD as float) > 25000000) "
																			
										End If
										
								End If
								If Trim(SRCWordSTR) <> "" Then
										''CountryQry = CountryQry & " and ([Organization_Name] like '"&Trim(SRCWordSTR)&"%') "									
								End If
							ElseIf trim(ShowTypeSTR)="Enterprises" Then
								TBlName = "uld_marketglass_company_images"
								CountryQry="select *,Company_Name as Organization_Name,company_website as website  from "&TBlName&" where country = '"&trim(GTcountrySTR)&"' and [Company_Sales] not in ('$1 Million - $10 Million','Under $1 Million','NULL')"
								If Trim(SRCWordSTR) <> "" Then
										''CountryQry = CountryQry & " and ([Company_Name] like '"&Trim(SRCWordSTR)&"%') "									
								End If
							ElseIf trim(ShowTypeSTR)="DOMAIN" Then
								TBlName = "CB_Industry_Wise_Companies"
								CountryQry="select organization_name ,website,image_path as Company_Image_url,country   from "&TBlName&" where GIA_KW = '"&trim(GTcountrySTR)&"'"
								''CountryQry="select organization_name ,website,image_path as Company_Image_url,country   from "&TBlName&" where GIA_KW = '"&trim(GTcountrySTR)&"'"
								WhereQry="SELECT * FROM EVOLV_DB.DBO.Industry_List_new where industry='"&trim(GTcountrySTR) &"'"
								Set RSWhere = Server.CreateObject("ADODB.Recordset")
								RSWhere.CursorType = 3				
								RSWhere.Open WhereQry, Datasource4
								If Not RSWhere.EOF Then
									strWhere=RSWhere("wherCondition")
								end if
								set RSWhere =nothing
								''select distinct organization_name ,website,image_url as Company_Image_url,country   from ts_data.dbo.CB_Companies_All 
								''where Image_url is not null and  (industries like ('%Autonomous Vehicles%') or industries like ('%Autonomous Vehicles%')) and ([organization_name] like '[B]%') 
								CountryQry="select distinct organization_name ,website,image_url as Company_Image_url,country   from ts_data.dbo.CB_Companies_All where Image_url is not null and ("& strWhere &")"
								''industries like '%"&trim(GTcountrySTR)&"%'"
								If Trim(SRCWordSTR) <> "" Then
										CountryQry = CountryQry & " and ([organization_name] like '"&Trim(SRCWordSTR)&"%') "									
								End If	
						    ''else
							  '' response.write("ShowTypeSTR")
							End If
							''response.write CountryQry
							
							''limit 100, 200
							Dim LimitSTR
							LimitSTR = ""
							''OFFSET 0 ROWS -- START FROM RECORD
							''FETCH NEXT 28 ROWS ONLY
							If trim(GetStatrtVal)="" then
								LimitSTR = " OFFSET 0 ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY"
							Else
								LimitSTR = " OFFSET "&trim(GetStatrtVal)&" ROWS FETCH NEXT "&cdbl(rec_per_page)&" ROWS ONLY" 
								'''"limit "&trim(GetStatrtVal)&", "&trim(request("E"))
							End If
							If ((trim(ShowTypeSTR)="DOMAIN") OR (ucase(trim(ShowTypeSTR))="STARTUPS" )) Then		
							  CountryQry = CountryQry & " and image_url is not null order by image_url " & LimitSTR
							 else
							  CountryQry = CountryQry & " and Company_Image_url is not null order by Company_Image_url " & LimitSTR
							end if
							response.write CountryQry '& " and image_path is not null order by image_path " & LimitSTR
							response.end
							Set RSCountry = Server.CreateObject("ADODB.Recordset")
							RSCountry.CursorType = 3				
							RSCountry.PageSize = cdbl(rec_per_page)	
							
							RSCountry.Open CountryQry, Datasource4
							If Not RSCountry.EOF Then 
							While Not RSCountry.EOF
							
							
							%>
							<div class="delegation-card ">
							<!--<li class="col-xl-2 col-lg-2 col-md-3 col-sm-4 col-6 mx-auto mt-0 text-center mb-0 p-2">-->
								<div class="col-12 card-desing-1 mx-auto p-2">
								<div class="item">
								<!--	<a href="<%=trim(RSCountry("website"))%>" target="new" class="lablehreflink">-->
									<div class="d-flex justify-content-start align-items-center flex-column">

										<div class="img-block text-center">
											<%
											If trim(RSCountry("Company_Image_url"))<>"NA" Then%>
											<img src="<%=trim(RSCountry("Company_Image_url"))%>" <img class="w-100  ">
											<%End If
											%>
										</div>

										<div class="card-content">
											
												<h3><%=trim(RSCountry("Organization_name"))%></h>
												<h4> <%=trim(RSCountry("Country"))%></h4>
												<!--<h3><%=trim(RSCountry("website"))%></h3>-->
							
											
										</div>
							
									</div>
									<!--</a>-->
									</div>
							
								</div>
							</div>
							<%
							RSCountry.movenext
							wend
							else
							response.write "<li class='col-xl-4 col-lg-4 col-md-6 col-sm-12 mx-auto mt-2 text-center mb-2 '><font color='red'>No Companies Found With this Search</font></li>"
							End If
							set RSCountry = nothing
							
							%>	
							</ul>
							
							

						<!--div class="col-xl-3 col-lg-6 col-md-10 col-sm-12 mx-auto   mt-2 text-center mb-2">
							
							<h3 class="mt-4 text-capitalize  h3 ">INFLUENCERS</h3>
							<h3 class="mt-2 text-capitalize  h2 "><span class=" counter d-block" data-TargetNum="1524" data-Speed="2500">7321</span></h3>
							
							<hr/>
							<div  class="col-lg-11 col-12 mx-auto  text-left px-3">
							<h5 class="font-weight-bold text-left">Enterprise Level</h5>
							
							<ul class="list-group list-group-flush">
								<li class="list-group-item">Enterprise Level-1</li>
								<li class="list-group-item">Enterprise Level-2</li>
								<li class="list-group-item">Enterprise Level-3</li>
								<li class="list-group-item">Enterprise Level-4</li>
								<li class="list-group-item">Enterprise Level-5</li>
							  </ul>							
							
							</div>
						</div-->
					</div>
					<div class="row mb-4 d-flex flex-nowrap justify-content-center align-items-center mb-0">
					<%	If trim(Start1)>72 Then
				
					''Response.write "<p align='center'><B> <font color='red'><strong style='color:red;'>VIEWING LIMIT EXCEEEDED. PLEASE CONTACT XING FOR MORE INFORMATION ON VIWING RESTRICTIONS. THANK YOU</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>"
					''response.end
					%>
					<!--<div class="w-100 position-absolute  mb-1" style="display: flex;  top:-16px;  justify-content: space-between;    width: 100%;    padding: 10px;">
						<a class="a_back a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Domain_Companies.asp?GTCountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style=" margin: 10px 10px 10px 35px; align-items: center; display:flex ;  font-weight: bold;   font-size: 17px;"><i class="fa fa-angle-double-left " aria-hidden="true"></i></a>
					</div>
					<div id="endPopup" style="width: 100%;height: 100vh;justify-content: space-between;flex-direction:column; left: 0px;top: 0px;background: rgba(200,200,200,0.9);z-index: 999; position: fixed !important; display: flex;justify-content: center; align-items: center;">
						<a class="btn btn-sm btn-danger mt-3 <%=SelectedActive(request("Cp"),GTnum) %>" href="https://www.evolv.cc/JoinUs.asp?PageType=<%=trim(SrcTypeSTR)%>" target="_blank" style=" align-items: center;   font-size: 20px;">Login  to  Continue</a>
					</div>-->
				<%else%>
				
				
								<a class="a_back_nav a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Domain_Companies.asp?GTCountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(StartBack),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style="z-index:9999;  align-items: center; display:flex ;  font-weight: bold;   font-size: 25px;color:red;"><i class="fa fa-caret-left" aria-hidden="true"></i></a>
								<a class="a_next_nav a_nav <%=SelectedActive(request("Cp"),GTnum) %>" href="Show_Domain_Companies.asp?GTCountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&Start=<%=server.urlencode(EnDeCrypt(trim(Start1),CHkGiaPSWD))%>&amp;E=<%=E1%>&amp;SrcType=<%=trim(RESrcTypeSTR)%>&amp;SRCWord=<%=Trim(RESRCWordSTR)%>&amp;EncryptSTR=<%=Trim(request("EncryptSTR"))%>&chkOpt=<%=chkOpt%>" style="z-index:9999;  align-items: center; display:flex ;font-weight: bold;   font-size: 25px;color:red;order: 2; "><i class="fa fa-caret-right" aria-hidden="true"></i> </a>
							
				<%end if%>
							<p class="Alp_Display  text-center  mb-0"> 
					<%'if trim(chkOpt)="Company" then%>					
					<a class="<%=SelectedActive(SRCWordSTR,"[0-9]") %>"  style="width:42px !important" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[0-9]",CHkGiaPSWD))%>">0-9</a>&nbsp;
					<%'end if%>
                  <a class="<%=SelectedActive(SRCWordSTR,"[A]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[A]",CHkGiaPSWD))%>">A</a> 
				  <a class="<%=SelectedActive(SRCWordSTR,"[B]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[B]",CHkGiaPSWD))%>">B</a>
                  <a class="<%=SelectedActive(SRCWordSTR,"[C]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[C]",CHkGiaPSWD))%>">C</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[D]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[D]",CHkGiaPSWD))%>">D</a>
			      <a class="<%=SelectedActive(SRCWordSTR,"[E]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[E]",CHkGiaPSWD))%>">E</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[F]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[F]",CHkGiaPSWD))%>">F</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[G]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[G]",CHkGiaPSWD))%>">G</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[H]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[H]",CHkGiaPSWD))%>">H</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[I]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[I]",CHkGiaPSWD))%>">I</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[J]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[J]",CHkGiaPSWD))%>">J</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[K]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[K]",CHkGiaPSWD))%>">K</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[L]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[L]",CHkGiaPSWD))%>">L</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[M]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[M]",CHkGiaPSWD))%>">M</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[N]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[N]",CHkGiaPSWD))%>">N</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[O]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[O]",CHkGiaPSWD))%>">O</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[P]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[P]",CHkGiaPSWD))%>">P</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Q]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Q]",CHkGiaPSWD))%>">Q</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[R]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[R]",CHkGiaPSWD))%>">R</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"S") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("S",CHkGiaPSWD))%>">S</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[T]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[T]",CHkGiaPSWD))%>">T</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[U]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[U]",CHkGiaPSWD))%>">U</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[V]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[V]",CHkGiaPSWD))%>">V</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[W]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[W]",CHkGiaPSWD))%>">W</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[X]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[X]",CHkGiaPSWD))%>">X</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Y]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Y]",CHkGiaPSWD))%>">Y</a>
				  <a class="<%=SelectedActive(SRCWordSTR,"[Z]") %>" href="Show_Domain_Companies.asp?GTcountry=<%=trim(REGTcountrySTR)%>&ShowType=<%=trim(REShowTypeSTR)%>&CHKType=<%=trim(RECHKTypeSTR)%>&StupType=<%=trim(request("StupType"))%>&SRCWord=<%=server.urlencode(EnDeCrypt("[Z]",CHkGiaPSWD))%>">Z</a>
				  		   </p>
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

  <!-- To Top -->
 <!-- <div class="scroll-top-to">
    <i class="ti-angle-up"></i>
  </div>-->
  
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