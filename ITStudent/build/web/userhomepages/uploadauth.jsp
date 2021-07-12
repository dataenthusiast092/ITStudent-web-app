

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.*,java.io.*" %>


<html>
    <head>
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
                <td height="160">

                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td height="320" width="2000" align="center">
                    Success!!!!!<br/>

                    <%--try-catch block to upload file in path specified under C drive and insert the filename in table--%>
                    <%
        try {
            String s = (String) session.getAttribute("user");
            File f = new File("C:\\ITStudent\\build\\web\\dt" + "\\" + s);
            f.mkdir();
            String path = application.getRealPath("dt");
            path = path + "//" + s;
            MultipartRequest mpr = new MultipartRequest(request, path, 1024 * 1024 * 1024);
            String s1 = mpr.getOriginalFileName("file");
            out.print("Your File <u>" + s1 + "</u> is uploaded successfully");
            session.setAttribute("user", s);
            session.setAttribute("file", s1);
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement smt = con.prepareStatement("insert into userfiles_docs values(?,?)");
            smt.setString(1, s);
            smt.setString(2, s1);
            smt.executeUpdate();
        } catch (Exception e) {
        }
                    %>
                    <br/>
                    <table align="center">
                        <tr width="30" align="center">
                            <td>
                                <ul id="sliding-navigation">
                                    <li class="sliding-element">
                                        <a href="/ITStudent/link.do?method=upload_files">Upload Files</a>
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
                <td height="200">

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

