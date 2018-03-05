<%-- 
    Document   : newjsp
    Created on : Feb 21, 2018, 12:32:44 AM
    Author     : Bihar_Regiment
--%>

<%@page import="model.StudentPass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
        <title>Student Information Site</title>
<style>
body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
    background-image: url("background.jpg");
}

butt:link, butt:visited {
    background-color: #f44336;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


butt:hover, butt:active {
    background-color: red;
}
.w3-lobster {
    font-family: "Lobster", serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #ff9966;
  text-align: center;
}
</style>
</head>
<body>
    <div class="parallax">
    <%
            String roll=(String)session.getAttribute("roll");
            String name=(String)session.getAttribute("name");
        %>
<div class="w3-container w3-teal">
    <img src="<%=roll%>.jpg" alt="Avatar" style="width:10%" class="w3-circle w3-margin-top">
    <div id="block">
        <div id="block1" float="left">
            <h1 class="w3-center w3-lobster" >Student Information Site</h1>
        </div>
        <div id="block2" float="center">
        <h3 class="w3-left-align"><%=name%></h3>
        <a href="logout.jsp" class="butt" target="_blank">Logout</a>

        </div>
    </div>
    
</div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="newjsp.jsp">Home</a>
  <a href="stdinf.jsp">Student Information</a>
  <a href="dues.jsp">View Dues</a>
  <a href="marks.jsp">Internal Marks</a>
  <a href="newjsp1.jsp">Messages</a>
</div>
</div>
<div id="main">
    <p></p>
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</div>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>

<div class="w3-container">
    <h2 class="w3-tangerine w3-gray w3-center">Notice Board</h2>
  <ul class="w3-ul w3-card-4 w3-white w3-hover-shadow">
    <li class="w3-bar">
      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
      <img src="download.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
      <div class="w3-bar-item">
        <span class="w3-large"><strong>Naresh Chandra Choudhury</strong></span><br>
        <span><strong>MOST IMPORTANT: Status of EVEN semester back paper registration as of 23/2/2018<br>
            For:All Students (23-Feb-2018)</strong><br>
            This is to inform to  the following students that, as per our office records you have registered for even semester<br>
            back papers as mentioned below.<br></span>
      </div>
    </li>

    <li class="w3-bar">
      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
      <img src="download.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
      <div class="w3-bar-item">
        <span class="w3-large"><strong>Motahar Reza</strong></span><br>
        <span><strong>Shortlisted for National Workshop on Cryptography 2018 , NIST<br>
            For : All Faculties , All Staff , BTech 3rd year , BTech 4th year</strong><br>
            It is informed that the following students have been shortlisted.<br>
            All shortlisted students are instructed to do registration between 9pm -9:30am on Monday , 26th Feb 2018<br>
            at TIFAC for attending the conference.</span>
      </div>
    </li>

    <li class="w3-bar">
      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
      <img src="download.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
      <div class="w3-bar-item">
        <span class="w3-large"><strong> Satyabrata Das</strong></span><br>
        <span><strong>RE MAKEUP TEST<br>
            For : BTech - 4th Year (23-Feb-2018)</strong><br>
            RE MAKEUP TEST FOR EIGHTH SEMESTER STUDENTS WILL BE CONDUCTED FROM 26/02/2018 to 28/02/2018.<br>
            LIST OF ELIGIBLE STUDENTS WILL BE PUBLISHED ON 24/02/2018.
        </span>
      </div>
    </li>
    
    <li class="w3-bar">
      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
      <img src="download.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
      <div class="w3-bar-item">
        <span class="w3-large"><strong> Abhro Mukherjee</strong></span><br>
        <span><strong>Grand Viva<br>
            For : BTech - 4th Year (23-Feb-2018)</strong><br>
            Students of 8th semester who are under me for there Comprehensive Viva are required to appear positively on<br>
            24/02/2018 from 2PM at my Office Tifac (102A) .
        </span>
      </div>
    </li>
  
  </ul>
</div>

</body>
</html>
