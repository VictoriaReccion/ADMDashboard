<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="20332845396-pvv6j3ifeu0391esi12rdcill7tmq0u7.apps.googleusercontent.com">
<title>Special Calendar</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href='css/calendar/calendar.css' rel='stylesheet' />
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />

<link href='css/calendar/fullcalendar.css' rel='stylesheet' />
<link href='css/calendar/fullcalendar.print.css' rel='stylesheet'
	media='print' />
<script src='js/calendar/moment.min.js'></script>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/calendar/jquery-migrate-3.0.0.js"></script>
<script src="js/calendar/jquery-ui.min.js"></script>
<script src='js/calendar/fullcalendar.min.js'></script>
<script src='js/calendar/usercalendar.js'></script>

<!--  Scripts-->
<!--Import jQuery before materialize.js-->
<script
	src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
<script src="js/materialize.js"></script>
<script src="js/jquery.autocomplete.js"></script>
<style>
#calendar {
	max-width: 900px;
	margin: 0 auto;
}

#loading {
	display: none;
	position: absolute;
	top: 10px;
	right: 10px;
}
</style>

</head>

<body>
	<form id="logoutform" action="LogoutServlet" method="POST"></form>
	<script>
		function signOut() {
			gapi.load('auth2', function() {
				gapi.auth2.init();
			});
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.signOut().then(function() {
				console.log('User signed out.');

				$("#logoutform").submit();
			});
		}

		function onLoad() {
			gapi.load('auth2', function() {
				gapi.auth2.init();
			});
		}
		$(document).ready(function() {
			$('select').material_select();
			
			$(".home").click(function() {
				$("#dashboard").submit();
			});
			$(".home2").click(function() {
				$("#calendar").submit();
			});
		});
	</script>

	<script src="https://apis.google.com/js/platform.js?onload=onLoad"
		async defer></script>

	<!-- START OF NAVBAR -->


	<ul id="slide-out" class="side-nav fixed">
		<li><div class="userView">
				<img class="background" src="images/office.jpg"> <a
					href="#!user"><img class="circle" src="${logoURL }"></a> <a
					href="#!name"><span class="white-text name">${orgcode }</span></a>
				<a href="#!email"><span class="white-text email">${email }</span></a>
			</div></li>
		<li><a href="#" class="home"><i class="material-icons">dashboard</i>Dashboard</a></li>
		<li><div class="divider"></div></li>
		<li class = "active"><a href="#" class="home2"><i class="material-icons">today</i>Calendar
				of special deadlines</a></li>
		<li><a href="#modal1" class="modal-trigger"><i
				class="material-icons">settings</i>Sign Out</a></li>
	</ul>

	<a href="#" data-activates="slide-out" class="button-collapse"><i
		class="material-icons">menu</i></a>
	<!-- END OF NAVBAR -->
	<!-- START OF MAIN VIEW( Body) -->
	<div class="row">
		<div class="col s3"></div>
		<div class="col s9">
			<div class="container">
				<div id='calendar'></div>
				<div id='loading'>loading...</div>
			</div>
		</div>
	</div>
	<form id="dashboard" action="HomeOrgRepServlet" method="post">
		<input name="course" type="hidden" />
	</form>
	<form id="calendar" action="CalendarOrgRepServlet" method="post">
		<input name="course" type="hidden" />
	</form>

	<!-- END OF MAIN VIEW (Body) -->
	<!-- Modal Structure -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<p>Are you sure you want to sign out?</p>
		</div>
		<div class="modal-footer">
			<a href="#!" onclick="signOut(); "
				class=" modal-action modal-close waves-effect waves-green btn-flat">Log
				out </a>
		</div>
	</div>

	
	<!--  end of modal structure. -->
	<script>
  $(document).ready(function() {
	   $('.modal-trigger').leanModal();	
		 
        $('select').material_select();
     });
  </script>
</body>
</html>