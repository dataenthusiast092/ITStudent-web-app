
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.*,java.io.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ITStudent|Success</title>
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
                <td  height="260">

                </td>
            </tr>
        </table>
        <table align="center">
            <tr align="center">
                <td width="400">
                    <%--try-catch block to insert file name in table and store the file in a direcotry path specified under C drive.--%>
                    <%
        try {
            String s = (String) session.getAttribute("user");
            File f = new File("C:\\ITStudent\\build\\web\\dt" + "\\" + s);
            f.mkdir();
            String path = application.getRealPath("dt");
            path = path + "//" + s;
            MultipartRequest mpr = new MultipartRequest(request, path, 1024 * 1024 * 1024);
            String s1 = mpr.getOriginalFileName("file");
            out.print("Your File <u>" + s1 + "</u> is uploaded successfully.");
            session.setAttribute("user", s);
            session.setAttribute("file", s1);
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement smt = con.prepareStatement("insert into adminfiles_docs values(?,?)");
            smt.setString(1, s);
            smt.setString(2, s1);
            smt.executeUpdate();
        } catch (Exception e) {
        }
                    %>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr align="center">
                <td width="20">
                    <ul id="sliding-navigation">
                        <li class="sliding-element">
                            <a href="/ITStudent/link.do?method=auploadfiles">Upload Files</a>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td  height="296">
                    
                </td>
            </tr>
        </table>
        <table bgcolor="#3f5a81">
            <tr>
                <td height="10" width="2000" align="center">
                    <tr>
                    <td align="center">

                    </td>
                    <tr>
                </td>
            </tr>
        </table>
    </body>
</html>