<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*, java.io.* "%>


<%--try-catch block to insert messages into the usermessages table in db--%>
<%
        try {
            String user = "admin";
            String sendto = request.getParameter("sendto");
            String title = request.getParameter("title");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement stmt = con.prepareStatement("insert into usermessages values(?,?,?,?,?,?)");
            stmt.setInt(1, 1);
            stmt.setString(2, title);
            stmt.setString(3, subject);
            stmt.setString(4, message);
            stmt.setString(5, user);
            stmt.setString(6, sendto);
            stmt.executeUpdate();
        } catch (Exception e) {
        }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/ITStudent/css/styles.css" />
    </head>
    <body bgcolor="#ffcc00">
        <table bgcolor="#3f5a81">
            <tr>
                <td height="10" width="2000" align="center">
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td height="50">

                </td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td>
                    <h1>Your message has been sent! </h1>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td width="40" align="center" height="504">
                    <ul id="sliding-navigation">
                        <li class="sliding-element">
                            <a href="/ITStudent/link.do?method=aalist">Home</a>
                        </li>
                    </ul><br>
                    <b>OR</b><br>
                    <ul id="sliding-navigation">
                        <li class="sliding-element">
                            <a href="createmessage.jsp">Messages</a>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td height="75">

                </td>
            </tr>
        </table>
        <table bgcolor="#3f5a81">
            <tr>
                <td height="10" width="2000" align="center">

                </td>
            </tr>
        </table>
    </body>
</html>