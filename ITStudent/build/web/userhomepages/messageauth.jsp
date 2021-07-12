<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <td width="600"><b>Welcome <u><%
                            String user = (String)session.getAttribute("user");
                            out.print(user);
                        %></u></b></td>
                        <td width="610"><h1>Messages</h1></td>
                        <td><b>Go to</b>
                            <a href="/ITStudent/link.do?method=aalist">Home</a>
                            <b>page</b>
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
                <td width="600" align="center" bgcolor="#FFE600"><b><u>Subject</u></b></td>
                <td width="600" align="center" bgcolor="#ED9121"><b><u>Message</u></b></td>
            </tr>
        </table>

        <%--try-catch block to retrieve data contactus table--%>
        <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "select id, title, subject, message from contactus where sendto='"+"'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
        %>
        <table cellpadding="15" align="center">
            <tr>
                <td width="100" align="center" bgcolor="#FFE600"><%=rs.getInt(1)%></td>
                <td width="600" align="center" bgcolor="#ED9121"><%=rs.getString(2)%></td>
                <td width="600" align="center" bgcolor="#FFE600"><%=rs.getString(3)%></td>
                <td width="600" align="center" bgcolor="#ED9121"><%=rs.getString(4)%></td>
            </tr>
            <hr>
            <%            }
        } catch (Exception e) {
        }
            %>
        </table>
        <table bgcolor="#3f5a81">
            <tr>
                <td height="20" width="2000" align="center">
                </td>
            </tr>
        </table>
    </body>
</html>