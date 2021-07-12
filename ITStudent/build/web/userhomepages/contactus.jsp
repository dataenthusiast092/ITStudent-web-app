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
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
    </head>
    <body>
        <table>
            <tr style="background-color: #ff6600;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff6600" size="4"><marquee scrollamount="5" scrolldelay="89">Contact Us</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff6600;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <form action="userhomepages/contactusauth.jsp" method="post">

            <fieldset>
                <legend>Contact Us</legend>
                <p>
                    <label class="block">Title:</label>
                    <input type="text" name="title" id="tbox"/>
                </p>
                <p>
                    <label class="block">Subject</label>
                    <input type="text" name="subject" id="tbox"/>
                </p>
                <p>
                    <label class="block">Message</label>
                    <textarea name="message" rows="6" cols="30" id="tbox"></textarea>
                </p>
                <p>
                    <input type="submit" value="Send" name="send" id="send" />
                </p>
            </fieldset>
        </form>
    </body>
</html>
