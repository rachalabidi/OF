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
var titles=document.getElementsByClassName("title")
smallerSidebar = false;

buttonResize.onclick = function() {
	if (smallerSidebar == false) {
		sidemenu.style.width = "50px";
		for (var i = 0; i < contents.length; i++) {
  		contents[i].style.left = "50px";
        titles[i].style.visibility="hidden";
		smallerSidebar = true;
  	}
		
		smallerSidebar = true;
	} else if (smallerSidebar == true) {
		sidemenu.style.width = "200px";
		for (var i = 0; i < contents.length; i++) {
  		contents[i].style.left = "200px";
		titles[i].style.visibility="visible";
		smallerSidebar = false;
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



//LISTE LISTE
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();