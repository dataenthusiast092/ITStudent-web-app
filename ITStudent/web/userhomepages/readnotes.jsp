
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/ITStudent/css/styles.css" />
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
                <td width="610"><h1>Your Notes</h1></td>
                <td align="center">
                    <ul id="sliding-navigation">
                        <li class="sliding-element"><a href="/ITStudent/link.do?method=dashboard">Home</a></li>
                    </ul>
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
                <td width="600" align="center" bgcolor="#FFE600"><b><u>Description</u></b></td>
            </tr>
        </table>

        <%--try-catch block to retrieve data from usernotes--%>
        <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "select notesid, title, description from usernotes where user='" + user + "'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
        %>
        <table cellpadding="15" align="center">
            <tr>
                <td width="100" align="center" bgcolor="#FFE600"><%=rs.getInt(1)%></td>
                <td width="600" align="center" bgcolor="#ED9121"><%=rs.getString(2)%></td>
                <td width="600" align="center" bgcolor="#FFE600"><%=rs.getString(3)%></td>
            </tr>
            <hr>
            <%            }
        } catch (Exception e) {
        }
            %>
        </table>
        <table>
            <tr>
                <td height="400">

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
