<%-- 
    Document   : model
    Created on : Feb 24, 2018, 12:06:31 AM
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
}
.w3-lobster {
    font-family: "Lobster", serif;
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
</style>
</head>
<body>
    <%
            String roll=(String)session.getAttribute("roll");
            String name=(String)session.getAttribute("name");
    %>
<div class="w3-container w3-teal">
    <img src="<%=roll%>.jpg" alt="Avatar" style="width:10%" class="w3-circle w3-margin-top">
    <h3 class="w3-left-align"><%=name%><h1 class="w3-center w3-margin-top w3-lobster w3-xxlarge" >Student OIS</h1></h3>
    <a href="logout.jsp" class="butt" target="_blank">Logout</a>
</div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="newjsp.jsp">Home</a>
  <a href="stdinf.jsp">Student Information</a>
  <a href="dues.jsp">View Dues</a>
  <a href="marks.jsp">Internal Marks</a>
  <a href="newjsp1.jsp">Messages</a>
</div>

<div id="main">
    <p>

  </p>
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

</body>
</html>

