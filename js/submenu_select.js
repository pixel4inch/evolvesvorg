var selURL = window.location.href;

var mainmenu = document.querySelectorAll(".nav-item a");
var ddlmenu = document.querySelectorAll(".dropdown-menu a");


// ADDING ACTIVE MENU MENU
for (var i = 0, l = mainmenu.length; i < l; i++) {
    var elmnt = mainmenu[i];
    if (elmnt.href === selURL) {
        elmnt.classList.add("active");
        var parent = elmnt.closest(".main-nav");
        parent.classList.add("active");
        elmnt.closest(".nav-item").classList.add("active");
    }
}

// ADDING ACTIVE MENU MENU
for (var i = 0, l = ddlmenu.length; i < l; i++) {
    var elmnt = ddlmenu[i];
    if (elmnt.href === selURL) {
        elmnt.classList.add("active");
        var parent = elmnt.closest(".main-nav");
        parent.classList.add("active");
        elmnt.closest(".nav-item").classList.add("active");
    }
}


// GET QUERY STRING VALUE

function GetParameterValues(param) {  
    var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');  
    for (var i = 0; i < url.length; i++) {  
        var urlparam = url[i].split('=');  
        if (urlparam[0] == param) {  
            return urlparam[1];  
        }  
    }  
}

// Cancale Navigation 

function StopNavigation(){

    return false;

}

function ScrollBottom()
{
	window.scrollTo(0, document.body.scrollHeight);
}



// WRITEUPDS LOAD

/*

function WriteupsLoad(){
    var eventid = GetParameterValues("EventId");
    var fileName = eventid  + ".html";
     // //alert(fileName);
       var fileContent;
       $.get("./witeups/" + fileName, function (html_string) {
   
       //    // alert(html_string);
       $('#divWriteUps').html(html_string);
   
       }, 'html');

}





//

     $(document).ready(function() {
     $('body').bind('cut copy paste', function(event) {
     event.preventDefault();
     });
     });

*/