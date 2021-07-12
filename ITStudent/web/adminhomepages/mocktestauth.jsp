<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>

<%--try-catch block to insert mock tests--%>
<%
        try {
            String coursename = request.getParameter("coursename");
            String question = request.getParameter("question");
            String optionA = request.getParameter("optionA");
            String optionB = request.getParameter("optionB");
            String optionC = request.getParameter("optionC");
            String optionD = request.getParameter("optionD");
            String answer = request.getParameter("answer");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement stmt = con.prepareStatement("insert into mocktest values(?,?,?,?,?,?,?,?)");
            stmt.setInt(1, 1);
            stmt.setString(2, coursename);
            stmt.setString(3, question);
            stmt.setString(4, optionA);
            stmt.setString(5, optionB);
            stmt.setString(6, optionC);
            stmt.setString(7, optionD);
            stmt.setString(8, answer);
            stmt.executeUpdate();
        } catch (Exception e) {
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ITStudent|Success</title>
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
                    Success!!!!!!!!!!!!!<br>
                    <a href="/ITStudent/link.do?method=acrmcktst">Create Mock Test</a>
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



