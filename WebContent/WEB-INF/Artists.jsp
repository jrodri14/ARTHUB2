<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>ArtHub</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="javascript/toggle.js"></script>

</head>



<body>

<div id="topPan"><a href="/ARTHUB/Arthub"><img src="images/logo.gif" title="ArtHub" alt="ArtHub" width="204" height="57" border="0"/></a>

	<ul>

		<li><a href="/ARTHUB2/Arthub">Home</a></li>
		<li><a href = "/ARTHUB2/Logout"> Logout</a></li>
        <li><span>Artist</span></li>

		<li><a href="galleries.html">Galleries</a></li>

		<li><a href="chat.html">Chat</a></li>

		<li><a href="aboutUs.html">About Us</a></li>

	</ul>

</div>

<div id="headerPanGallery">

  <div id="headerPanleft">

	<form action="" id="upload">
	<br />
		<label>${login.user.firstName}  ${login.user.lastName}</label>
		<label>Upload a Picture</label><br />
		<br />
		<input type="file" size="20" id="imageUpload" class="imageUpload" /><br />
		<br />
		<button class="button" type="submit">Upload</button>
	</form>
</div>
		

  </div>

</div>

<div id="bodyPanGallery">
  <div id="rightPanGallery">
  <table border="0" width="100%" cellpadding="1" cellspacing="1">
	<tr>
		<td><a HREF="galleries/artist/1.jpg" target="_blank"><img src="galleries/artist/1.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/2.jpg" target="_blank"><img src="galleries/artist/2.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/3.jpg" target="_blank"><img src="galleries/artist/3.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/4.jpg" target="_blank"><img src="galleries/artist/4.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
	</tr>
	
<br />
<br />

</table>
<table border="0" width="100%" cellpadding="1" cellspacing="1">
	<tr>
		<td><a HREF="galleries/artist/5.jpg" target="_blank"><img src="galleries/artist/5.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/6.jpg" target="_blank"><img src="galleries/artist/6.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/7.jpg" target="_blank"><img src="galleries/artist/7.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/8.jpg" target="_blank"><img src="galleries/artist/8.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
	</tr>
	<tr>
	
	
<br />
<br />

</table>
<table align=border="0" width="100%" cellpadding="1" cellspacing="1">
	<tr>
		<td><a HREF="galleries/artist/9.jpg" target="_blank"><img src="galleries/artist/9.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/10.jpg" target="_blank"><img src="galleries/artist/10.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/11.jpg" target="_blank"><img src="galleries/artist/11.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
		<td><a HREF="galleries/artist/12.jpg" target="_blank"><img src="galleries/artist/12.jpg" alt="sculpture" height="125px" width="150px" /></a></td>
	</tr>
	
	
<br />
<br />

</table>
  </div>

</div>

<div id="footerPan">

	<div id="footernextPan">

	<ul>

  <li><a href="home.html">Home </a>| </li>

  <li><a href="artist.html">Artists</a> | </li>

  <li><a href="galleries.html">Galleries</a>| </li>

  <li><a href="chat.html">Chat</a> | </li>

  <li><a href="contactUs.html">Contact us</a> </li>

  </ul>

   <p>©ArtHub all right reaserved</p>


	</div>

</div>

</body>

</html>

