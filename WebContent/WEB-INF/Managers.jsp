<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../style.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="view.css" media="all"/>
<title>Management</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
$('#tabs div').hide();
$('#tabs div:first').show();
$('#tabs ul li:first').addClass('active');
$('#tabs ul li a').click(function(){ 
$('#tabs ul li').removeClass('active');
$(this).parent().addClass('active'); 
var currentTab = $(this).attr('href'); 
$('#tabs div').hide();
$(currentTab).show();
return false;
});
});
</script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
#tabs {
	font-size: 90%;
	margin: 50px 0;
}
#tabs ul {
	float: left;
	background: #fff;
	width: 345px;
	padding-top: 4px;
}
#tabs li {
	margin-left: 8px;
	list-style: none;
}
* html #tabs li {
	display: inline;
}
#tabs li, #tabs li a {
	float: left;
}
#tabs ul li.active {
	border-top:2px #FFFF66 solid;
	background: #FFFFCC;
}
#tabs ul li.active a {
	color: #333333;
}
#tabs div {
	clear: both;
	padding: 15px;
	min-height: 350px;
	background: #fff;
}
#tabs div h3 {
	margin-bottom: 12px;
}
#tabs div p {
	line-height: 150%;
}
#tabs ul li a {
	text-decoration: none;
	padding: 8px;
	color: #000;
	font-weight: bold;
}
.thumbs {
	float:left;
	border:#000 solid 1px;
	margin-bottom:20px;
	margin-right:20px;
}
-->
</style>
</head>
<body>
<div id="topPan"><a href="/ARTHUB/Arthub"><img src="images/logo.gif" title="ArtHub" alt="ArtHub" width="204" height="57" border="0"/></a>

	<ul>

		<li><a href="/ARTHUB/Arthub">Home</a></li>

            <li><a href="artist.html">Artist</a></li>

		<li><a href="galleries.html">Galleries</a></li>

            <li><a href="chat.html">Chat</a></li>

		<li><a href="aboutUs.html">About Us</a></li>
		<li><a href="/ARTHUB2/Logout">Logout</a></li>

	</ul>

</div>

<div id="container">
  <div id="tabs">
    <ul>
      <li><a href="#tab-1">Announcements</a></li>
      <li><a href="#tab-2">Artist</a></li>
      <li><a href="#tab-3">Customers</a></li>
      <li><a href="#tab-4">Staff</a></li>
    </ul>
    <div id="tab-1">
      <h3>Announcements</h3>
      <p>Announcements go here</p>
    </div>
    <div id="tab-2">
      <h3>Artist</h3>
     
    <p>  
    <form action = "Managers" method = "post"> 
  <table> 
  <tr><th>Username </th><th>First Name</th><th>Last Name</th><th>Delete</th></tr>    
      <c:forEach items="${artists}" var="art">
  <tr>
  <td>${art.user.username}</td>
  <td> ${art.user.firstName}, </td>
  <td> ${art.user.lastName}</td>
   <input type="hidden" name="id" value="${art.user.id}" />
 <td><input type="submit" name="delete" value="Delete" /></td>
    </tr>
    
    </c:forEach>
  </table>
  </form>
</p>

    </div>
    <div id="tab-3">
      <h3>Customers</h3>
  <p>    
     
     <form>
  <table> 
  <tr><th>Username</th> <th>First Name </th><th> Last Name </th></tr>    
      <c:forEach items="${customers}" var="entry">
  <tr>
  <td>${entry.users.username}</td>
  <td> ${entry.users.firstName} </td>
  <td> ${entry.users.lastName}</td>
  <input type="hidden" name="id" value="${entry.users.id}" />
 <td><input type="submit" name="delete" value="Delete" /></td>
    </tr>
    </c:forEach>
  </table>
  </form>
</p>
    </div>
    <div id="tab-4">
      <h3>Staff</h3>
      <p>Staff list goes here</p>
    </div>
  </div>
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-7025232-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>
