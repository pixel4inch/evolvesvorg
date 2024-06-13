

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>PROFILE - Evolve SV</title>

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
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <!---WEB COMPONETNS-->
  <script src="./webcomponts/headerComponents.js"></script>
  <script src="./webcomponts/FooterComponent.js"></script>
  <script src="./webcomponts/ScrollToTop.js"></script>
  <script src="./webcomponts/dummytext.js"></script>  
  <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Frank+Ruhl+Libre:wght@300;400;500;600;700;800;900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&family=Roboto:ital,wght@0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<style>
/* set the default date text color */
input[type="date"]::-webkit-datetime-edit-year-field,
input[type="date"]::-webkit-datetime-edit-month-field,
input[type="date"]::-webkit-datetime-edit-day-field {
     color:#cababa;
   font-size: 14px;
}

/* set the slashes to gray 700 */
input[type="date"]::-webkit-datetime-edit-text,
input[type="file"],
textarea::-webkit-datetime-edit-text {
   color:#cababa;
   font-size: 14px;

}

/* adjust the placeholder style to be as dark as possible */
input[type="date"],
input[type="text",
select option
 {
     color:#cababa;
   font-size: 14px;
}

</style>
	

</head>
<!--include file="ASPIncludes/DBopen.asp"-->
<!--#include file="ADOVBS.asp"-->
<body class="body-wrapper" data-spy="scroll" data-target=".privacy-nav">
<!--============================
=            HEADER           =
=============================-->
  <header-component></header-component>
<!--============================
    PLACEKEEPTER BANNER
=============================-->
  <!--section class="section placekeeper_section theme-1">
  <div class="container">
    <div class="row align-items-center">
    </div>
  </div>
</section-->
<!--================================
=            Page Title            =
=================================-->
<script>
     function AddEventData()
	 { 
	   // alert('hi');
		 vtxtEventName=$("#txtEventName").val();
		  vtxtEvent_Desc=$("#txtEvent_Desc").val();
		   vtxtEvent_SDate=$("#txtEvent_SDate").val();
		    vtxtEvent_EDate=$("#txtEvent_EDate").val();
			// alert(vtxtEvent_EDate);
			
		if (vtxtEventName != "") 			
		  {		      
			 
			 $.ajax({
						url: "Ajax_Add_Events.asp",
						type: "POST",						
						data:'vtxtEventName='+encodeURIComponent(vtxtEventName)+'&vtxtEvent_Desc='+encodeURIComponent(vtxtEvent_Desc)+'&vtxtEvent_SDate='+encodeURIComponent(vtxtEvent_SDate)+'&vtxtEvent_EDate='+encodeURIComponent(vtxtEvent_EDate)+'',
						success: function(data){
						alert('Done');
					    // alert(data);
						location.reload();							 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				//modal.style.display = "none";
				//parent.location.reload();
			  }
			
			
			
			
	 }
	 
	 function AddEvent_Sessions()
	 { 
	   // alert('hi');
		 vOptEvent=$("#OptEvent").val();
		  vOptSession=$("#OptSession").val();
		   vOptSessionDate=$("#OptSessionDate").val();
		    vtxtSession_STime=$("#txtSession_STime").val();
			 vtxtSession_ETime=$("#txtSession_ETime").val();
			vtxtSession_Desc=$("#txtSession_Desc").val();
			
		if (vOptEvent != "") 			
		  {		      
			  //alert(vOptEvent);
			 $.ajax({
						url: "Ajax_Add_Event_Sessions.asp",
						type: "POST",						
						data:'vtxtSession_Desc='+encodeURIComponent(vtxtSession_Desc)+'&='+encodeURIComponent(vOptEvent)+'&vOptEvent='+encodeURIComponent(vOptEvent)+'&vOptSession='+encodeURIComponent(vOptSession)+'&vOptSessionDate='+encodeURIComponent(vOptSessionDate)+'&vtxtSession_STime='+encodeURIComponent(vtxtSession_STime)+'&vtxtSession_ETime='+encodeURIComponent(vtxtSession_ETime)+'',
						success: function(data){
						alert('Done');
					    // alert(data);
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				
		  }
	 }
	 
	
		
		
		$(document).ready(function(){
		  $('#OptEvent').change(function(){
			var selectedValue = $(this).val();
			//alert(selectedValue);	
		if (selectedValue != "") 			
		  {		      
			  //alert(vOptEvent);
			 $.ajax({
						url: "Ajax_GetSessionDates.asp",
						type: "POST",						
						data:'vID='+encodeURIComponent(selectedValue)+'',
						success: function(data){						
							//alert(data);
							$('#divSessiondate').empty();
							$('#divSessiondate').append(data);		
							  fn_getSessions(selectedValue);
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				//modal.style.display = "none";
				//parent.location.reload();
			  }
			
			
		  });
		});
		
	 function fn_getSessions(vID)
	 {
	    //alert("Sessions");
		
		 $.ajax({
						url: "Ajax_GetSessions.asp",
						type: "POST",						
						data:'vID='+encodeURIComponent(vID)+'',
						success: function(data){						
						//	alert(data);
							$('#SessionTable').empty();
							$('#SessionTable').append(data);				 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				
	 }
		
		
	 </script>
	 
<%

			'Set rsPeopleCont = Server.CreateObject("ADODB.Recordset")
			'sqlPeopleCnt="select * from event_Details"
			'rsPeopleCont.Open sqlPeopleCnt,Datasource1
			'IF not rsPeopleCont.EOF Then
		'			fname=rsPeopleCont("event_title")
		'			''lname=rsPeopleCont("lastname")
		'	end if 

	''response.write fname 
%>
<div class="body-content">
  <section class="section section pb-0 mb-0" style="height:auto">    
  <div class="container defatult-page-header-condent">   
    <div style="z-index:99999" >
     	
		
		<div class="col-xl-8 col-lg-8 col-md-10 col-sx-12 col-12 mx-auto mb-4">
      
		<div id="collapseThree" class="panel-collapse shadow-sm border mt-3 p-4 collapse show" data-parent="#accordion" style="">
              <div class="panel-body">
                
                <h3 class="font-display3 main-font-color text-center mb-1  pb-3">ADD EVENT </h3>
				
				
				
				
				<form action="#" method="POST" id="formEvent">
					<div class="row mx-0">
					
						<div class="col-sm-12 mb-4 px-1">
						  <input class="form-control w-100 border-radius-0" id="txtEventName" name="txtEventName" type="text" required="">
						  <span class="floating-label">
							Event Name<span class="text-danger">*</span> </span>
						</div>
						
						<div class="col-sm-12 mb-4 px-1">
						  <textarea rows="4" cols="50" class="w-100" id="txtEvent_Desc" name="txtEvent_Desc" form="usrform" placeholder=" 1500 characters Limit" class="pt-2"></textarea>
						   <span class="floating-label">
							Event Description<span class="text-danger">*</span> </span>
						</div>
						
						<div class="col-sm-6 mb-4 px-1">
						  <input class="form-control w-100 border-radius-0 " id="txtEvent_SDate" name="txtEvent_SDate" type="date" required="">
						  <span class="floating-label">
						   Event Start Date<span class="text-danger">*</span> </span>
						</div>
						
						
												
						<div class="col-sm-6 mb-4 px-1">
						  <input class="form-control w-100 border-radius-0 " id="txtEvent_EDate" name="txtEvent_EDate" type="date" required="">
						  <span class="floating-label">
						   Event End Data<span class="text-danger">*</span> </span>
						</div>
						
						<div class="col-sm-12 mb-0 px-1">
						<div class="custom-file mb-3">
							<input type="file" class="custom-file-input" id="txtEventfile" required="">
							<label class="custom-file-label" for="txtEventfile">Choose image file...</label>
							<div class="invalid-feedback">Example invalid custom file </div>
						 </div>
						 
						 </div>
						
						<div class="col-12 text-center my-4">
						  <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="AddEventData()">Add Event</button>
						</div>
					<div>
					</form>				
					<form action="#" method="POST" id="formSession">
					<div class="row w-100 mx-0">	
						<div class="col-sm-12 mb-4 px-1">
							  <select id="OptEvent" name="OptEvent" class="form-control">
							 
							  <%
									dim EventDays
									Set rsEvent = Server.CreateObject("ADODB.Recordset")
									sqlEvent="select id,event_title,Event_StartDate,DATEDIFF(day,Event_StartDate,Event_EndDate)+1 as eDays from event_Details where event_status='Y'"
									rsEvent.Open sqlEvent,Datasource1
									IF not rsEvent.EOF Then
									EventDays=rsEvent("eDays")
									EventStart=rsEvent("Event_StartDate")
									
										While Not rsEvent.EOF
										''EventDays=rsEvent("eventDays")
										%>
										
										<option value="<%=rsEvent("id")%>" ><%=rsEvent("event_title")%></option>
										
										<%EventDays=rsEvent("eDays")
									EventStart=rsEvent("Event_StartDate")

										rsEvent.MoveNext
										wend
									end if
									
									%>
							  </select>
							  <span class="floating-label">Select Event</span>
						</div>
						<div id="divSession" name="divSession" class="col-sm-12 mb-4 px-1">
							<input class="form-control w-100 border-radius-0" id="OptSession" name="OptSession" type="text" required="">
							 <!-- <select id='OptSession' name='OptSession' class='form-control'>
							      
								  <option value="Session-1">Session-1</option>
								  <option value="Session-2">Session-2</option>
								  <option value="Session-3">Session-3</option>
								   <option value="Session-4">Session-4</option>
							  <select>-->
							  <span class="floating-label">
							   Enter Session</span>
						</div>
						
						<div class="col-sm-12 mb-4 px-1">
						  <textarea rows="4" cols="50" class="w-100" id="txtSession_Desc" name="txtSession_Desc" form="usrform" placeholder=" 1500 characters Limit" class="pt-2"></textarea>
						   <span class="floating-label">
							Session Description<span class="text-danger">*</span> </span>
						</div>
							
							<div id="divSessiondate" name="divSessiondate" class="col-sm-12 mb-4 px-1">
						 <!-- <input class="form-control w-100 border-radius-0 " id="txtFirst_Name" name="txtFirst_Name" type="date" required="">-->
						  <select id="OptSessionDate" name="OptSessionDate" class="form-control">
							<%For i = 0 To EventDays-1
							 eventdate=dateadd("d",i,FormatDateTime(EventStart,0))
							%>
								
								<option value="<%=eventdate%>" ><%=eventdate%></option>
								
							<%next %>
							  </select>
						  <span class="floating-label">
						   Session Start Date<span class="text-danger">*</span> </span>
						</div>
						
						<!--<div class="col-sm-6 mb-4 px-1">
						  <input class="form-control w-100 border-radius-0 " id="txtFirst_Name" name="txtFirst_Name" type="date" required="">
						  <span class="floating-label">
						   Session  End Date<span class="text-danger">*</span> </span>
						</div>-->
							
							<div class="col-sm-6 mb-4 px-1">
						  <input class="form-control w-100 border-radius-0 " id="txtSession_STime" name="txtSession_STime" type="time" value="09:00"  min="08:00" max="17:00" required="">
						  <span class="floating-label">
						   Session Start Time<span class="text-danger">*</span> </span>
						</div>
						
						<div class="col-sm-6 mb-4 px-1">
						  <input class="form-control w-100 border-radius-0 " id="txtSession_ETime" name="txtSession_ETime" type="time" value="09:00"  min="08:00" max="17:00" required="">
						  <span class="floating-label">
						   Session End Time <span class="text-danger">*</span> </span>
						</div>
						
						
						
						<div class="col-12 text-center my-4">
						  <button class="btn btn-main-md mx-auto py-2 px-2 " onclick="AddEvent_Sessions()">Add Session</button>
						</div>
			
					</div>
				</form>
				
				</div>
				</div>
				<div class="w-100 mt-3">
				<div id="SessionTable" name="SessionTable">
					<table class="table table-bordered w-100 mx-auto">
					<thead>
					<tr>
						<th>Sno</th>
						<th>Session</th>
						<th>Session Date</th>
						<th>Session Start Time</th>
						<th>Session End Time</th>
					</tr>
					</thead>
					 <tbody class="table-group-divider">
					<tr>
						<td>sno</td>
						<td>Session</td>
						<td>Session Date</td>
						<td>Session Start Time</td>
						<td>Session End Time</td>
					</tr>
					</tbody>
					</table>
				
				</div>
		 </dv>
    </div>
	</div>
	
	
	
	
	
  </div>
  
  </section>
  
  
  
</div>
  <!--============================
=            Footer            =
=============================-->
  <footer-component></footer-component>
  <scrolltop-component> </scrolltop-component>
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
  
  
  
  

  <script src="./plugins/jsvectormap-master/dist/js/jsvectormap.js"></script>
	<script src="./plugins/jsvectormap-master/dist/maps/world-merc.js"></script>


	<script>














		var markers = [
			{ name: "Australia (16941)", coords: [-33.42004148, 151.3000048] },
			{ name: "Austria (645)", coords: [47.51669707, 9.766701588] },
			{ name: "Belgium (3552)", coords: [50.44599911, 3.939003561] },
			{ name: "Brazil (4980)", coords: [-5.809995505, -46.14998438] },
			{ name: "Canada (32098)", coords: [50.15002545, -96.88332178] },
			{ name: "China (2094)", coords: [39.83003522, 97.72999304] },
			{ name: "Denmark (2551)", coords: [55.70900103, 9.534996498] },
			{ name: "France (5383)", coords: [45.89997479, 6.116670287] },
			{ name: "Germany (6330)", coords: [49.98247246, 8.273219156] },
			{ name: "India (11646)", coords: [15.491997, 73.81800065] },
			{ name: "Israel (2427)", coords: [31.91670012, 34.86670252] },
			{ name: "Italy (2122)", coords: [40.64200213, 15.7989965] },
			{ name: "Mexico (1523)", coords: [19.400000, -98.988892] },
			{ name: "Singapore (2314)", coords: [1.290270, 103.851959] },
			{ name: "South Korea (1138)", coords: [35.549999, 129.316666] },
			{ name: "Spain (2603)", coords: [43.016666, -7.550000] },
			{ name: "Sweden (5935)", coords: [58.283489, 12.285821] },
			{ name: "Switzerland (1925)", coords: [47.500954, 8.729869] },
			{ name: "Taiwan (450)", coords: [23.991074, 121.611198] },
			{ name: "United States (437553)", coords: [44.500000, -89.500000] },
			{ name: "United Kingdom (50255)", coords: [52.192001, -2.220000] },
			{ name: "South Africa (50255)", coords: [	-8.195246, 25.034088] }

		];

		var jvm = new jsVectorMap({
			map: "world_merc",
			selector: "#map",
			// zoomButtons: true,

			regionStyle: {
				initial: { fill: '#5075BB' }
			},

			labels: {
				markers: {
					render: (marker) => marker.name
				}
			},

			markersSelectable: true,
			selectedMarkers: markers.map((marker, index) => {
				var name = marker.name;

				if (name === "Russia" || name === "Brazil") {
					return index;
				}
			}),
			markers: markers,
			markerStyle: {
				initial: { fill: "#0d75be" },
				selected: { fill: "#0d75be" }
			},
			markerLabelStyle: {
				initial: {
					fontFamily: "Roboto",
					fontWeight: 400,
					fontSize: 0,
					fontColor: '#fff',
				}
			}
		});

		/*
		window.addEventListener('resize', () => {
		  jvm.updateSize()
		})
		*/
	</script>

  <script type="text/javascript"
    src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

  <script type="text/javascript">
    $(document).ready(function () {
      $('#google_translate_element').bind('DOMNodeInserted', function (event) {
        $('.goog-te-menu-value span:first').html('LANGUAGE');
        $('.goog-te-menu-frame.skiptranslate').load(function () {
          setTimeout(function () {
            $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('LANGUAGE');
          }, 100);
        });
      });
    });
  </script>


  <script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({ pageLanguage: 'en', includedLanguages: "en,es,zh-CN,de,ja,nl,fr,it,pt,ar,ko,sv,zh-TW", layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
    }
  </script>
</body>

</html>