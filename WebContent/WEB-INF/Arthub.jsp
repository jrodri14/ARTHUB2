<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>ArtHub</title>

<link href="style.css" rel="stylesheet" type="text/css" />

  <script type="text/javascript" language="JavaScript">
//
// Type the number of images you are rotating.

NumberOfImagesToRotate = 12;

// Specify the first and last part of the image tag.

FirstPart = '<img src="galleries/cgi/';
LastPart = '.jpg" ALIGN="center" height="400px" width="650px">';

function printImage() {
var r = Math.ceil(Math.random() * NumberOfImagesToRotate);
document.write(FirstPart + r + LastPart);
}
//-->
</script>

</head>



<body>

<div id="topPan"><a href="/ARTHUB2/Arthub"><img src="images/logo.gif" title="ArtHub" alt="ArtHub" width="204" height="57" border="0"/></a>

	<ul>

		<a href="/ARTHUB2/Arthub"><li><span>Home</span></li></a>
	   <c:choose>	
		<c:when test="${not empty artistIn}">
		<li><a href="/ARTHUB2/Profile">Artists</a></li>
		</c:when>
		<c:otherwise>
		<li><a href="artist.html">Artists</a></li>
		</c:otherwise>
		</c:choose>

		<li><a href="galleries.html">Galleries</a></li>

		<li><a href="chat.html">Chat</a></li>
		
		
		<c:choose>
		<c:when test="${empty artistIn and empty customer }">
		</c:when>
		<c:otherwise>
		<li><a href="/ARTHUB2/Logout">Logout</a></li>
		</c:otherwise>
		</c:choose>

		<li><a href="aboutUs.html">About Us</a></li>

	</ul>

</div>



<div id="headerPanGallery">

  <div id="headerPanleft">

  	    <div id="na">

			<h2>Newly Added</h2>

			<a href="newlyAdded.html">&nbsp;</a>

		</div>

        <div id="hr">

			<h2>Highest Rated</h2>


			<a href="highestRated.html">&nbsp;</a>

		</div>

		<div id="fa">

			<h2>Featureed Artist</h2>


			<a href="featuredArtist.html">&nbsp;</a>

		</div>

  </div>

</div>

<div id="bodyPan">

  <div id="leftPan">

    <div id="leftmemberPan">
	 <c:choose>
		<c:when test="${empty artistIn and empty customer }">
	<h2>User login</h2>

	<form name="login" id="login" action="Arthub" method="post">

	<label>User Name</label>

	  <input type="text" name="username" />

	  <label class="emailpadding">Password</label>

	   <input class="fieldpadding" type="password" name="password" />

	   <div id="leftPango"><p class="textposition"><a href="/ARTHUB2/Signup">Resister now</a></p><input type="submit" class="gobutton" value="Go" />

	   </div>

	</form>
	
	</c:when>
</c:choose>

	<c:choose>	
		<c:when test="${not empty artistIn}">
		Welcome! 
Log in as ${artistIn.user.firstName} ${artistIn.user.lastName}. 
 
		</c:when>
	</c:choose>
			<c:choose>	
		<c:when test="${not empty customer}">
		Welcome you are 
Log in as ${customer.users.firstName} ${customer.users.lastName}.
Feel free to look around and shop to support our artists.
</c:when> 
</c:choose>



	</div>
  </div>
  <div id="bodyPanPotd">
  <div id="rightPotd">
<br />
<br />
<h2><center>Picture of the Day</center></h2>
<br />
<br />
<script type="text/javascript" language="JavaScript"><!--
printImage();
//--></script>
  </div>

</div>

</div>


<div id="footerPan">

	<div id="footernextPan">

	<ul>

  <li><a href="/ARTHUB/Arthub">Home </a>| </li>

  <li><a href="artist.html">Artists</a> | </li>

  <li><a href="galleries.html">Galleries</a>| </li>

  <li><a href="chat.html">Chat</a> | </li>
  
  		<c:choose>
		<c:when test="${empty artistIn and empty customer }">
		</c:when>
		<c:otherwise>
		<li><a href="/ARTHUB2/Logout">Logout</a></li>
		</c:otherwise>
		</c:choose>

  <li><a href="contactUs.html">Contact us</a> </li>

  </ul>

   <p>©ArtHub all right reaserved</p>


	</div>

</div>

</body>

</html>

