<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles.css" />
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
    </head>
    <body id="bodystyle">
        <img src="images/logo_1.jpg" align="left"/>
        <%
        String temp = (String) session.getAttribute("user");
        %>
        <table>
            <tr>
                <div class="navigation-block">
                    <td width="200" align="left">
                        <ul id="sliding-navigation">
                            <li class="sliding-element"><h3>Welcome User</h3></li>
                            <li class="sliding-element"><a><%out.print(temp);%></a></li>
                            <li class="sliding-element"><a href="userhomepages/messages.jsp">Messages</a></li>
                        </ul>
                    </td>
                    <td width="670"></td>
                    <td align="center">
                        <ul id="sliding-navigation">
                            <li class="sliding-element"><a href="Logout.jsp">Logout</a></li>
                        </ul>
                    </td>
                </div>
            </tr>
        </table>
    </body>
</html>
