
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
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/registration.js"></script>
    </head>
    <body>
        <table>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">User Details</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <table cellpadding="15" align="center" style="background-color: #FFE600;">
            <tr>
                <td width="600" align="left">User ID</td>
                <td width="600" align="center">user name</td>
            </tr>
        </table>

        <%--try-catch block to retrieve details of users--%>
        <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select ID, username from userlogin";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
        %>
        <table cellpadding="15" align="center">
            <tr style="background-color: #ffffcc;">
                <td width="600" align="left"><%=rs.getInt(1)%></td>
                <td width="600" align="center"><%=rs.getString(2)%></td>
            </tr>
            <hr>
        </table>
        <%

            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }
        %>
        <table cellpadding="15" align="center">
            <tr>
                <td width="1200" height="220" align="center"></td>
            </tr>
        </table>
    </body>
</html>
