<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
   <style><%@include file="/WEB-INF/CSS/pagesStyle.css"%>
</style>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    
    <link  href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet/scss" href="./pages.scss" type="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Gestion de la présence des etudiants</title>
</head>
<body>
    <div class="video-bg">
        <video width="320" height="240" autoplay loop muted>
         <source src="https://assets.codepen.io/3364143/7btrrd.mp4" type="video/mp4">
       Your browser does not support the video tag.
       </video>
    </div>  
    <div id="mainheader">
        <ul id="topmenu">
            <li>
                <a href="#">
                
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-calendar2-check-fill" viewBox="0 0 16 16">
                        <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zm9.954 3H2.545c-.3 0-.545.224-.545.5v1c0 .276.244.5.545.5h10.91c.3 0 .545-.224.545-.5v-1c0-.276-.244-.5-.546-.5zm-2.6 5.854a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                      </svg>
                </a>
            </li>
            <li>
                <span id="title"> Gestion de la Présence des Etudiants</span>
            </li>
            <li class="right">
                <a href="http://localhost:8676/learn/logoutServlet">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-video2" viewBox="0 0 16 16">
                        <path d="M10 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                        <path d="M2 1a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2ZM1 3a1 1 0 0 1 1-1h2v2H1V3Zm4 10V2h9a1 1 0 0 1 1 1v9c0 .285-.12.543-.31.725C14.15 11.494 12.822 10 10 10c-3.037 0-4.345 1.73-4.798 3H5Zm-4-2h3v2H2a1 1 0 0 1-1-1v-1Zm3-1H1V8h3v2Zm0-3H1V5h3v2Z"/>
                      </svg>
                </a>
            </li>
            <li class="right">
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-octagon" viewBox="0 0 16 16">
                        <path d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z"/>
                        <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
                      </svg>
                </a>
            </li>
        </ul>
    </div>
    
    <div id="container">
    
        <div id="topbar">
        <span id="resize-icon" class="icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-menu-app-fill" viewBox="0 0 16 16">
                <path d="M0 1.5A1.5 1.5 0 0 1 1.5 0h2A1.5 1.5 0 0 1 5 1.5v2A1.5 1.5 0 0 1 3.5 5h-2A1.5 1.5 0 0 1 0 3.5v-2zM0 8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V8zm1 3v2a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2H1zm14-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2h14zM2 8.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0 4a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z"/>
              </svg>
        </span>
        </div>
        <div id="sidemenu">
            <ul id="menu">
                <li id="dashboard-button">
                    <span class="icon rubyred">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                          </svg>
                    </span>
                    <span class="title">Enseignant</span>
                </li>
                <li id="pages-button">
                    <span class="icon golden">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                            <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                            <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
                          </svg>
                    </span>
                    <span class="title">modifié profil</span>
                </li>
                <li id="templates-button">
                    <span class="icon green">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
                          </svg>
                    </span>
                    <span class="title">Liste des Etudiants</span>
                </li>
              
                <li id="extensions-button">
                    <span class="icon orange">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-person-check" viewBox="0 0 16 16">
                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                            <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                          </svg>
                    </span>
                    <span class="title">Faire lappel</span>
                </li>
                <li id="userlist-button">
                    <span class="icon lightblue">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-archive-fill" viewBox="0 0 16 16">
                            <path d="M12.643 15C13.979 15 15 13.845 15 12.5V5H1v7.5C1 13.845 2.021 15 3.357 15h9.286zM5.5 7h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1zM.8 1a.8.8 0 0 0-.8.8V3a.8.8 0 0 0 .8.8h14.4A.8.8 0 0 0 16 3V1.8a.8.8 0 0 0-.8-.8H.8z"/>
                          </svg>
                    </span>
                    <span class="title">Consulter le relevé </span>
                </li>
                <li id="configuration-button">
                    <span class="icon yellow">
                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                          </svg>
                    </span>
                    <span class="title">Modifié le relevé</span>
                </li>
                
            </ul>
        </div>
    <!-- ********** hna les page yabdaw ***************** -->
        <div id="page">
            <div id="dashboard" class="content">
    
                <div id="content-page">
                    <div id="content-header">
                        <h2>welcome Enseignant</h2>
                    </div>
                </div>
            </div>
    
            <div id="pages" class="content">
    
                <div id="content-page">
                    <div id="content-header">
                        <h2>modifié profil</h2>
                    </div>
                </div>
    
            </div>
    
            <div id="templates" class="content">
    
                <div id="content-page">
                    <div id="content-header">
                        <h2> Liste des Etudiants</h2>
                         <section> 
                        <div class="tbl-header">
                      
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nom</th>
          <th>Prenom</th>
         
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       
         
      </tbody>
    </table>
  </div>
</section>
                    </div>
                </div>
    
            </div>
    
            
    
            <div id="extensions" class="content">
    
                <div id="content-page">
                    <div id="content-header">
                        <h2>Faire lappel</h2>
                    </div>
                </div>
    
            </div>
    
            <div id="userlist" class="content">
    
                <div id="content-page">
                    <div id="content-header">
                        <h2>Consulter le relevé </h2>
                    </div>
                </div>
    
            </div>
    
            <div id="configuration" class="content">
    
                <div id="content-page">
                    <div id="content-header">
                        <h2>Modifié le relevé</h2>
                    </div>
                </div>
    
            </div>
    
            
        </div>
    </div> 
</body>
<!-- <script>
    var buttonResize = document.getElementById("resize-icon");
var buttonDashboard = document.getElementById("dashboard-button");
var buttonPages = document.getElementById("pages-button");
var buttonTemplates = document.getElementById("templates-button");
var buttonFiles = document.getElementById("files-button");
var buttonExtensions = document.getElementById("extensions-button");
var buttonUserlist = document.getElementById("userlist-button");
var buttonConfiguration = document.getElementById("configuration-button");
var buttonLogs = document.getElementById("logs-button");
var contents = document.getElementsByClassName("content")

smallerSidebar = false;

buttonResize.onclick = function() {
	if (smallerSidebar == false) {
		sidemenu.style.width = "50px";
		for (var i = 0; i < contents.length; i++) {
  		contents[i].style.left = "50px";
  	}
		
		smallerSidebar = true;
	} else if (smallerSidebar == true) {
		sidemenu.style.width = "200px";
		for (var i = 0; i < contents.length; i++) {
  		contents[i].style.left = "200px";
  	}
		smallerSidebar = false;
	}
}

function openPage(item) {
	var menuItems = document.querySelectorAll('#sidemenu #menu li');
  for (var i = 0; i < menuItems.length; i++) {
  	menuItems[i].className = menuItems[i].className.replace(" active", "");
  }
	
	var target = item.id.slice(0, -7);
	
	var pageContent = document.getElementsByClassName("content");
  for (var i = 0; i < pageContent.length; i++) {
    pageContent[i].style.display = "none";
  }
	
	document.getElementById(target).style.display = "block";
	item.className += " active";
}

buttonDashboard.onclick = function() {
	openPage(this);
}
buttonDashboard.onclick = function() {
	openPage(this);
}
buttonPages.onclick = function() {
	openPage(this);
}
buttonTemplates.onclick = function() {
	openPage(this);
}
buttonFiles.onclick = function() {
	openPage(this);
}
buttonExtensions.onclick = function() {
	openPage(this);
}
buttonUserlist.onclick = function() {
	openPage(this);
}
buttonConfiguration.onclick = function() {
	openPage(this);
}


buttonDashboard.click();
</script> -->

<script type="text/javascript"> <%@include file="/WEB-INF/page.js"%></script>
<script src="./page.JS"></script>
</html>