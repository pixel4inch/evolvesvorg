<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css" />
    <link rel="stylesheet" href="plugins/slick/slick.css" />
    <link rel="stylesheet" href="plugins/slick/slick-theme.css" />
    <link rel="stylesheet" href="plugins/fancybox/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="plugins/aos/aos.css" />
<style>
.no-list-style{
	list-style:none !important;
}

</style>

    <!-- CUSTOM CSS -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/custome.css" rel="stylesheet" />

<!--#include file="ASPIncludes/DBopen.asp"-->
<!--#include file="adovbs.asp"-->
<h1 class="font-display1 main-font-color text-center my-4">SPEAKERS</h1>
                             <div class="w-100">							 
							 <%	
							Set rsSpeakers = Server.CreateObject("ADODB.Recordset")
							SqlSpeakers="Select * from Curated_industry_Speakers where industry='" & trim(request("EventId")) & "' order by last_name"
							''response.write "for testing " & SqlSpeakers
							''response.end
							rsSpeakers.Open SqlSpeakers,Datasource4							
							IF not rsSpeakers.EOF Then
							 %>
                              <ul class="no-list-style mb-3 row mx-0 p-0 ">
							  
							  
									
									 <%while not rsSpeakers.EOF%>
									 
									 <li class="col-xl-2 col-lg-3 col-md-4 col-sm-6 col-6 mx-auto mt-2 text-center mb-2 p-1 ">
									 <div class="col-12 mx-auto  label  p-2">
									<div class="d-flex justify-content-between align-items-center flex-column">

										<div class="left-block mb-2">
											
											 <img src="<%=rsSpeakers("image_url")%>">
											
										</div>

										<div class="right-block">
											<div class="title text-center pl-2">
																 <h2><%=rsSpeakers("first_name")%>&nbsp;<%=rsSpeakers("last_name")%></h2>
																 <h3><%=rsSpeakers("company_name")%></h3>
																 <h3><%=rsSpeakers("HEADLINE")%></h3>
											</div>
										</div>
							
									</div>
							
								
									 </li>
									 
									 
									 
									 
											
									<%rsSpeakers.movenext
									wend%>
									
								</ul>
							
							</div>
							<%else%>
								 <ul id="speakerlist" class=" pagnation-group d-flex justify-content-evenly flex-wrap align-items-center">
									<div id="speakerlist" class=" d-flex justify-content-evenly flex-wrap align-items-center">
										<div class="speakerlist">
											<h4>No Speakers are available.</h4>
										</div>
									</div>
								</ul>							
							<%end if%>