<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>


<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

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
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
        <link rel="stylesheet" href="css/1morestyle.css" media="screen"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
    </head>
    <body>
        <table>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">Notes</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <div id="content">
            <html:form styleId="container" action="/processusernotes">
                <fieldset>
                    <legend>Create your Notes here</legend>
                    <p>
                        <label for="notestitle" class="block">Give title :<br/></label>
                        <html:text styleId="tbox" property="notestitle"/>
                    </p>
                    <p>
                        <label for="notesdescription" class="block">Add Description: </label>
                        <html:textarea styleId="tbox" property="notesdescription" rows="10"/>
                    </p>
                    <p>
                        <html:submit styleId="send" property="submit" value="Create"/>
                    </p>
                </fieldset>
            </html:form>
        </div>
    </body>
</html>
