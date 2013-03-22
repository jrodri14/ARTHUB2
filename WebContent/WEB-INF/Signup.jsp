<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>ArtHub</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="view.css" media="all"/>
<script type="text/javascript" src="javascript/view.js"></script>
<script type="text/javascript" src="javascript/calendar.js"></script>
<style type="text/CSS">
div.RBtnTab { display:none; height:100px; width:200px; margin:0 auto;}
h2 {color:white;}
</style>
<script type="text/javascript">
//Create an array
  var allPageTags = new Array();

  function doSomethingWithClasses(theClass) {
//Populate the array with all the page tags
    var allPageTags=document.getElementsByTagName("*");
//Cycle through the tags using a for loop
    for (var i=0; i<allPageTags.length; i++) {
//Pick out the tags with our class name
      if (allPageTags[i].className==theClass) {
//Manipulate this in whatever way you want
        allPageTags[i].style.display='none';
      }
    }
  }

function Show(ids) {
  doSomethingWithClasses('RBtnTab');

  var obj = document.getElementById(ids);
  if (obj.style.display != 'block') { obj.style.display = 'block'; }
                               else { obj.style.display = 'none'; }
}
</script>

</head>



<body>

<div id="topPan"><a href="home.html"><img src="images/logo.gif" title="ArtHub" alt="ArtHub" width="204" height="57" border="0"/></a>

	<ul>

		<li><a href="home.html">Home</a></li>

            <li><a href="artist.html">Artist</a></li>

		<li><a href="galleries.html">Galleries</a></li>

            <li><a href="chat.html">Chat</a></li>

		<li><a href="aboutUs.html">About Us</a></li>

	</ul>

</div>
<br />
<br />
<br />
<h2>Account Type:</h2>
<h2><label for="lDIV1">Artist:</label>
<input id="lDIV1" type="radio" name='rbtab' value='DIV1' onClick="Show('DIV1')" /></h2>
<h2><label for="lDIV2">Customer:</label>
<input id="lDIV2" type="radio" name='rbtab' value='DIV2' onClick="Show('DIV2')" /></h2>

<div id='DIV1' class="RBtnTab">

<body id="main_body" >
	
	<img id="top" src="images/top.png" alt="" />
	<div id="form_container">
	
		<h1><a>Artist Signup</a></h1>
		<form id="form_359674" class="appnitro"  method="post" action="Signup">
					<div class="form_description">
			<h3>Artist Signup</h3>
			<p>Please fill in every field.</p>
		</div>						
			<ul >
			
					<li id = "li_1" >
		<label class="description" for="firstname">Name </label>
		<span>
			<input id="firstname" name= "firstname1" class="element text" maxlength="100" size="8" value=""/>
			<label>First</label>
		</span>
		<span>
			<input id="lastname" name= "lastname" class="element text" maxlength="100" size="14" value=""/>
			<label>Last</label>
		</span> 
		</li>		<li id="li_2" >
		<label class="description" for="dob">Date of Birth </label>
		<span>
			<input id="element_1_1" name="month" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_1_1">MM</label>
		</span>
		<span>
			<input id="element_1_2" name="day" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_1_2">DD</label>

		</span>
		<span>
	 		<input id="element_1_3" name="year" class="element text" size="4" maxlength="4" value="" type="text">
			<label for="element_1_3">YYYY</label>
		</span>
	
		<span id="calendar_1">
			<img id="cal_img_1" class="datepicker" src="images/calendar.gif" alt="Pick a date.">	
		</span>
		<script type="text/javascript">
			Calendar.setup({
			inputField	 : "element_1_3",
			baseField    : "element_1",
			displayArea  : "calendar_1",
			button		 : "cal_img_1",
			ifFormat	 : "%B %e, %Y",
			onSelect	 : selectDate
			});
		</script>

		 
		</li>		<li id="li_6" >
		<label class="description" for="gender">Gender </label>
		<span>
			<input id="male" name="gender" class="element radio" type="radio" value="MALE" />
                  <label class="choice" for="male">Male</label>
                  <input id="female" name="gender" class="element radio" type="radio" value="FEMALE" />
                  <label class="choice" for="female">Female</label>

		</span> 
		</li>		<li id="li_8" >
		<label class="description" for="styles">Style(s) </label>
		<span>
			<input id="sculptures" name="sculptures" class="element checkbox" type="checkbox" value="1" />
                  <label class="choice" for="sculptures">Sculptures</label>
                  <input id="drawings" name="drawins" class="element checkbox" type="checkbox" value="1" />
                  <label class="choice" for="drawings">Drawings</label>
                  <input id="cgi" name="cgi" class="element checkbox" type="checkbox" value="1" />
                  <label class="choice" for="cgi">CGI</label>
                  <input id="paintings" name="paintings" class="element checkbox" type="checkbox" value="1" />
                  <label class="choice" for="paintings">Paintings</label>
                  <input id="other" name="other" class="element checkbox" type="checkbox" value="1" />
                  <label class="choice" for="other">Other</label>

		</span> 
		</li>		<li id="li_7" >
		<label class="description" for="experience">Years of Experience </label>
		<div>
		<select class="element select medium" id="experience" name="experience"> 
			<option value="1" selected="selected">select one...</option>
                  <option value="2" >Less than a year</option>
                  <option value="3" >1-5 years</option>
                  <option value="4" >more than 5 years</option>
            </select>

		</div> 
		</li>		<li id="li_3" >
		<label class="description" for="username">Username </label>
		<div>
			<input id="username" name="username" class="element text medium" type="text" maxlength="100" value="" required/> 
		</div> 
		</li>	      <li id="li_4" >
		<label class="description" for="email">Email </label>
		<div>
			<input id="email" name="email" class="element text medium" type="text" maxlength="100" value=""/> 
		</div> 
		</li>		<li id="li_5" >
		<label class="description" for="password">Password </label>
		<div>
			<input id="password" name="password" class="element text medium" type="password" maxlength="100" value="" required /> 
		</div> 
		</li>		<li id="li_6" >
		<label class="description" for="password2">Re-Enter Password </label>
		<div>
			<input id="password2" name="password2" class="element text medium" type="password" maxlength="100" value="" required /> 
		</div> 
		</li>
			
		<li class="buttons">
			<input type="hidden" name="form_id" value="359674" />
			    
			<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
			</ul>
		</form>	
	</div>
	<img id="bottom" src="images/bottom.png" alt="">

</div>
<div id='DIV2' class="RBtnTab">
	
	<img id="top" src="images/top.png" alt=""/>
	<div id="form_container">
	
		<h1><a>Customer Signup</a></h1>
		<form id="form_359674" class="appnitro"  method="post" action="Signup">
					<div class="form_description">
			<h3>Customer Signup</h3>
			<p>Please fill in every field.</p>
		</div>						
			<ul >
			
					<li id="li_1" >
		<label class="description" for="name">Name </label>
		<span>
			<input id="firstname" name= "firstname" class="element text" maxlength="100" size="8" value=""/>
			<label>First</label>
		</span>
		<span>
			<input id="lastname" name= "lastname" class="element text" maxlength="100" size="14" value=""/>
			<label>Last</label>
		</span> 
		</li>		<li id="li_2" >
		<label class="description" for="dob">Date of Birth </label>
		<span>
			<input id="element_1_1" name="element_1_1" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_1_1">MM</label>
		</span>
		<span>
			<input id="element_1_2" name="element_1_2" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_1_2">DD</label>

		</span>
		<span>
	 		<input id="element_1_3" name="element_1_3" class="element text" size="4" maxlength="4" value="" type="text">
			<label for="element_1_3">YYYY</label>
		</span>
	
		<span id="calendar_1">
			<img id="cal_img_1" class="datepicker" src="images/calendar.gif" alt="Pick a date.">	
		</span>
		<script type="text/javascript">
			Calendar.setup({
			inputField	 : "element_1_3",
			baseField    : "element_1",
			displayArea  : "calendar_1",
			button		 : "cal_img_1",
			ifFormat	 : "%B %e, %Y",
			onSelect	 : selectDate
			});
		</script>

		 
		</li>		<li id="li_6" >
		<label class="description" for="gender">Gender </label>
		<span>
			<input id="male" name="gender" class="element radio" type="radio" value="Male" />
                  <label class="choice" for="male">Male</label>
                  <input id="female" name="gender" class="element radio" type="radio" value="Female" />
                  <label class="choice" for="female">Female</label>

		</span> 
		</li>		<li id="li_3" >
		<label class="description" for="username">Username </label>
		<div>
			<input id="username" name="username" class="element text medium" type="text" maxlength="100" value=""/> 
		</div> 
            <li id="li_4" >
		<label class="description" for="email">Email </label>
		<div>
			<input id="email" name="email" class="element text medium" type="text" maxlength="100" value=""/> 
		</div> 
		</li>
		</li>		<li id="li_4" >
		<label class="description" for="password">Password </label>
		<div>
			<input id="password" name="password" class="element text medium" type="password" maxlength="100" value=""/> 
		</div> 
		</li>		<li id="li_5" >
		<label class="description" for="password2">Re-Enter Password </label>
		<div>
			<input id="password2" name="password2" class="element text medium" type="password" maxlength="100" value=""/> 
		</div> 
		</li>
			
					<li class="buttons">
			    <input type="hidden" name="form_id" value="359674" />
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
			</ul>
		</form>	
	</div>
	<img id="bottom" src="images/bottom.png" alt=""/>

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

