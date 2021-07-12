<%@ page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page session="true" %>
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
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">Dashboard</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>

        <%--try-catch block to retrieve data from registration table--%>
        <%
        try {
            String userid = (String) session.getAttribute("user");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select fname, lname, dob, gender from registration where username='" + userid + "'");
            while (rs.next()) {
        %>


        <table cellpadding="15">
            <tr style="background-color: #ffffcc;">
                <td width="600">First Name:</td>
                <td width="600" align="center"><%=rs.getString(1)%></td>
            </tr>
            <tr style="background-color: #FFE600;">
                <td width="600">Last Name:</td>
                <td width="600" align="center"><%=rs.getString(2)%></td>
            </tr>
            <tr style="background-color: #ffffcc;">
                <td width="600">Date of Birth:</td>
                <td width="600" align="center"><%=rs.getString(3)%></td>
            </tr>
            <tr style="background-color: #FFE600;">
                <td width="600">Gender:</td>
                <td width="600" align="center"><%=rs.getString(4)%></td>
            </tr>
        </table>
        <%

            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }
        %>
        <table>
            <tr>
                <td width="1200" height="170"></td>
            </tr>
        </table>
    </body>
</html>
