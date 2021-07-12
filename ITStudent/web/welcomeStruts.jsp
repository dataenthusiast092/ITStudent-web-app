<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<html:html locale="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ITStudent</title>
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
        <link rel="stylesheet" href="css/1morestyle.css" media="screen"/>
        <link rel="stylesheet" href="css/registration.css" media="screen"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
        <html:base/>
    </head>
    <body>
        <table  bgcolor="#3f5a81">
            <tr>
                <td height="120" width="2000" align="right">
                    <img src="images/logo_1.jpg" align="left"/>
                    <tr>
                    <td align="center">
                        <html:link styleId="link" href="adminlogin.jsp">|  Admin Login  |</html:link>
                        <html:link styleId="link" href="registration.jsp">|  Register  |</html:link>
                    </td>
                    <tr>
                </td>
            </tr>
        </table>
        <div id="content">
            <html:form styleId="container" method="POST" action="/processlogin">
                <fieldset>
                    <legend>User Login Here</legend>
                    <p>
                        <label for="username" class="block">Username:<br/><small>(your registered e-mail id)</small> </label>
                        <html:text styleId="username" property="username"/>
                    </p>
                    <p>
                        <label for="password" class="block">Password: </label>
                        <html:password styleId="password" property="password" maxlength="16"/>
                    </p>
                    <p>
                        <html:submit styleId="send" property="submit" value="Login"/>
                    </p>
                </fieldset>
            </html:form>
        </div>
    </body>
</html:html>
