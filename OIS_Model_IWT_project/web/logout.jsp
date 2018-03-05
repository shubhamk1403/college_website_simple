<%-- 
    Document   : logout
    Created on : Feb 24, 2018, 8:11:42 AM
    Author     : Bihar_Regiment
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            RequestDispatcher rd=request.getRequestDispatcher("page1.html");
            rd.include(request, response);
            
        %>
    </body>
</html>
