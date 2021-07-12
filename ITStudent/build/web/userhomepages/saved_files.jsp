<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.sql.*, java.io.*" %>
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
    </head>
    <body>
        <table>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">Saved Files</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <table cellpadding="15" style="background-color: #FFE600;">
            <tr>
                <td width="850" align="left">File name:</td>
                <td width="200" align="center">Download:</td>
            </tr>
        </table>

        <%--try-catch block to retrieve data from userfiles_docs--%>
        <%
        try {
            String user = (String)session.getAttribute("user");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select filepath from userfiles_docs where username='"+ user +"'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                String file = rs.getString(1);
        %>

        <table cellpadding="15" style="background-color: #ffffcc;">
            <tr>
                <td width="850" align="left"><%=file%></td>
                <td width="200" align="center"><a href="download.jsp?name=<%=file%>">Download</a></td>
            </tr>
            <hr>
        </table>

        <%

            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }
        %>
        <table>
            <tr>
                <td height="330">

                </td>
            </tr>
        </table>
    </body>
</html>
