
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/ITStudent/css/style_validation.css" />
    </head>
    <body bgcolor="#ffcc00">
        <table bgcolor="#3f5a81">
            <tr>
                <td height="20" width="2000" align="center">
                </td>
            </tr>
        </table>
        <table>
            <tr height="100">
                <td width="600"><b>Welcome <u><br><%
        String user = (String) session.getAttribute("user");
        out.print(user);
                %></u></b></td>
                <td width="510"><h1>Messages</h1></td>
                <td>
                    <a href="/ITStudent/link.do?method=aalist" id="link">Home</a>
                    <a href="createmessage.jsp" id="link">Compose Message</a>
                </td>
            </tr>
        </table>
        <table bgcolor="#3f5a81">
            <tr>
                <td height="20" width="2000" align="center">
                </td>
            </tr>
        </table>
        <table cellpadding="15" align="center">
            <tr>
                <td width="100" align="center" bgcolor="#FFE600"><b><u>S. No.</u></b></td>
                <td width="600" align="center" bgcolor="#ED9121"><b><u>Title</u></b></td>
                <td width="700" align="center" bgcolor="#FFE600"><b><u>Description</u></b></td>
                <td width="600" align="center" bgcolor="#ED9121"><b><u>Sender</u></b></td>
            </tr>
        </table>

        <%--try-catch block to retrieve messages sent by the user to admin--%>
        <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "select * from adminmsgs";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                int sno = rs.getInt(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String sentby = rs.getString(4);
        %>
        <table cellpadding="15" align="center">
            <tr>
                <td width="100" align="center" bgcolor="#FFE600"><%=sno%></td>
                <td width="600" align="center" bgcolor="#ED9121"><%=title%></td>
                <td width="700" align="center" bgcolor="#FFE600"><%=description%></td>
                <td width="600" align="center" bgcolor="#ED9121"><%=sentby%></td>
            </tr>
            <hr>
            <%            }
        } catch (Exception e) {
        }
            %>
        </table>
        <table>
            <tr>
                <td height="450">

                </td>
            </tr>
        </table>
        <table bgcolor="#3f5a81">
            <tr>
                <td height="20" width="2000" align="center">
                </td>
            </tr>
        </table>
    </body>
</html>