<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" type="text/css" href="css/footerstyles.css" />
    </head>
    <body>
        <table align="center">
            <tr>
                <td><a href="link.do?method=aboutus">About Us</a></td>
                <td><a href="link.do?method=terms_conditions">Terms & Conditions</a></td>
                <td><a href="link.do?method=contact_us">Contact Us</a></td>
            </tr>
        </table>
    </body>
</html>
