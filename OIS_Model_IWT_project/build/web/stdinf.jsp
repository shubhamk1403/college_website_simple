<%-- 
    Document   : stdinf
    Created on : Feb 23, 2018, 7:43:26 AM
    Author     : Bihar_Regiment
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
            RequestDispatcher rd=request.getRequestDispatcher("model.jsp");
            rd.include(request, response);
            String roll=(String)session.getAttribute("roll");
            String name=(String)session.getAttribute("name");
        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            
body{
	margin: 0 0 0 0;
	background:url(https://i.imgur.com/hqEzvRn.jpg);
	background-size:cover;
	}
.Profile{
	margin-left:auto;
	  z-index: 9999;
	margin-right:auto;
	text-align:center;
		-webkit-transition:cubic-bezier(.34,.43,0,1.02) 0.5s;
		-moz-transition:cubic-bezier(.34,.43,0,1.02) 0.5s;
		transition:cubic-bezier(.34,.43,0,1.02) 0.5s;
	width:300px;
	height:200px;
		  border-radius:50%;
	
	}
	
.Img{
	  background: url('<%=roll%>.jpg');
	  background-size:contain;
	  	  z-index: 9999;
	  position: absolute;
	    -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
	-webkit-transition:cubic-bezier(.34,.43,0,1.02) 0.2s;
		-moz-transition:cubic-bezier(.34,.43,0,1.02) 0.2s;
		transition:cubic-bezier(.34,.43,0,1.02) 0.2s;
			  box-shadow: 0px 0px 0px 2pt transparent;
	  border: 0px solid #FFF;
	  margin: auto;
  cursor: pointer;
	  	width:200px;
	height:200px;
	}
.overlay{
  background: rgba(0,0,0,.5);
  position: absolute;
  margin: auto;
  width: 0px;
  height: 0px;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  opacity: 0;
  -webkit-transition: .3s ease;
  transition: .3s ease;
}

.Img:hover .overlay, .click:hover .overlay{
  opacity: 1;
  width: 100%;
  height: 100%;
}

.overlay span{
  color: #fff;
  font-family: 'Open Sans', sans-serif;
  text-align: center;
  position: absolute;
  margin: auto;
  width: 160px;
  height: 30px;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  opacity: 0;
}

.Img:hover .overlay span{
  opacity: 1;
  -webkit-transition: 1.3s ease;
  transition: 1.3s ease;
}
        </style>
    </head>
    <body>
<div class="Profile">
<div class="Img">
    <div class="overlay">
      <span><img= /></span>
    </div>
</div>

</div>
        <ul class="w3-ul w3-card-4 w3-hoverable w3-white w3-centered">
  <li>Name: <%=name%></li>
  <li>Roll: <%=roll%></li>
  <li>Branch: IT</li>
  <li>Registration No.: 1501202779</li>
</ul>
  <div class="footer"><br><br><br><br><br><br><br><br><br></div>
    </body>
</html>
