<%--layout page for adminhomepages. This is inserted on adminhome.jsp --%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ITStudent</title>
    </head>
    <body bgcolor="#3f5a81">
        <table border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td height="72" colspan="3" bgcolor="#3f5a81"><tiles:insert attribute="header"/></td>
            </tr>
            <tr>
                <td width="255" height="440"  bgcolor="#4d76b1" align="center"><tiles:insert attribute="navigation"/></td>
                <td width="1000" height="440"  bgcolor="#ffffcc"><tiles:insert attribute="body"/></td>
                <td width="10" height="440" align="center"  bgcolor="#4d76b1"></td>
            </tr>
            <tr>
                <td height="50" colspan="3" bgcolor="#3f5a81"><tiles:insert attribute="footer"/></td>
            </tr>
        </table>
    </body>
</html>


