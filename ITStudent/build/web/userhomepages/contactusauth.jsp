<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*, java.io.* "%>


<%--try-catch block to insert data in contact us table--%>
<%
        try {
            String user = session.getAttribute("user").toString();
            String sendto = "admin";
            String title = request.getParameter("title");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement stmt = con.prepareStatement("insert into contactus values(?,?,?,?,?,?)");
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
                <td height="550" width="2000" align="center">
                    <h1>Your message has been sent! </h1>
                    <table align="center">
                        <tr>
                            <td width="40" align="center">
                                <ul id="sliding-navigation">
                                    <li class="sliding-element">
                                        <a href="/ITStudent/link.do?method=dashboard">Home</a>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td height="118">

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
