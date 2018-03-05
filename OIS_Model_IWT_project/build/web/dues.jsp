<%-- 
    Document   : dues
    Created on : Feb 24, 2018, 4:21:12 AM
    Author     : Bihar_Regiment
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>JSP Page</title>
    </head>
    <%
        RequestDispatcher rd=request.getRequestDispatcher("model.jsp");
        rd.include(request, response);
    %>
    <body>
        <table align="center" width="100%" cellspacing="2" cellpadding="2" border="0" class="w3-table-all w3-card-4">
            <tbody>
                <tr class="stdFrmTabHDR">
            <th>Date</th>
            <th>Debit Amount</th>
            <th>Credit Amount</th>
            <th>Narration</th>
            </tr>
            <tr>
                <td align="center">22/08/2015</td>
                <td align="right">0 </td>
                <td align="right">20000 </td>
                <td align="left">Academic Fees, fees for the year 2015-2016.</td>
            </tr>
            <tr>
                <td align="center">25/08/2015</td>
                <td align="right">0 </td>
                <td align="right">28000 </td>
                <td align="left">Academic Fees, for  2015-16</td>
            </tr>
            <tr>
                <td align="center">28/08/2015</td>
                <td align="right">0 </td>
                <td align="right">15000 </td>
                <td align="left">Academic Fees, fees for the year 2015-2016.</td>
            </tr>
            <tr>
                <td align="center">15/09/2015</td>
                <td align="right">112000 </td>
                <td align="right">0 </td>
                <td align="left">Academic Fees for FY 2015-2016</td>
            </tr>
            <tr>
                <td align="center">15/09/2015</td>
                <td align="right">5000 </td>
                <td align="right">0 </td>
                <td align="left">BPUT Registration Fees</td>
            </tr><tr>
                <td align="center">05/10/2015</td>
                <td align="right">21000 </td>
                <td align="right">0 </td>
                <td align="left">Hostel fees for Fy 2015-2016</td>
            </tr>
            <tr><td align="center">26/12/2015</td>
                <td align="right">0 </td><td align="right">20000 </td>
                <td align="left">Academic Fees, fees for the year 2015-2016.</td>
            </tr>
            <tr>
                <td align="center">09/01/2016</td>
                <td align="right">500 </td>
                <td align="right">0 </td>
                <td align="left">Fine against outstanding academic fees</td>
            </tr>
            <tr><th>&nbsp;</th><th colspan="2" align="center">Balance: 0</th><th>&nbsp;</th></tr></tbody>
        </table>
        <div class="footer"><br><br><br></div>
    </body>
</html>
