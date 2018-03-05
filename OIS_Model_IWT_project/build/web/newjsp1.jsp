<%-- 
    Document   : newjsp1
    Created on : Feb 22, 2018, 7:51:26 PM
    Author     : Bihar_Regiment
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%
        RequestDispatcher rd=request.getRequestDispatcher("model.jsp");
        rd.include(request, response);
    %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    margin: 0 auto;
    max-width: 800px;
    padding: 0 20px;
}

.container {
    border: 2px solid #dedede;
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
}

.darker {
    border-color: #ccc;
    background-color: #ddd;
}

.container::after {
    content: "";
    clear: both;
    display: table;
}

.container img {
    float: left;
    max-width: 60px;
    width: 100%;
    margin-right: 20px;
    border-radius: 50%;
}

.container img.right {
    float: right;
    margin-left: 20px;
    margin-right:0;
}

.time-right {
    float: right;
    color: #aaa;
}

.time-left {
    float: left;
    color: #999;
}
</style>
</head>
<body>

<h2>Chat Messages</h2>

<div class="container">
  <img src="download.png" alt="Avatar" style="width:100%;">
  <p>Hello. How are you today?</p>
  <span class="time-right">11:00</span>
</div>

<div class="container darker">
  <img src="download.png" alt="Avatar" class="right" style="width:100%;">
  <p>Hey! I'm fine. Thanks for asking!</p>
  <span class="time-left">11:01</span>
</div>

<div class="container">
  <img src="download.png" alt="Avatar" style="width:100%;">
  <p>Sweet! So, what do you wanna do today?</p>
  <span class="time-right">11:02</span>
</div>

<div class="container darker">
    <img src="download.png" alt="Avatar"  class="right" style="width:100%;">
  <p>Nah, I dunno. Play soccer.. or learn more coding perhaps?</p>
  <span class="time-left">11:05</span>
</div>

<div class="container darker">
    <img src="download.jpg" alt="Avatar"  class="right" style="width:100%;">
    <form method="post" action="newjsp1.jsp">
        <p><input type="text" name="message"></p>
        <p><input type="submit" value="send"></p>
    </form>
</div>

</body>
</html>
