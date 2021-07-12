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
        <link rel="stylesheet" type="text/css" href="css/style_validation.css" />
    </head>
    <body>
        <table>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">Mock Test</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <form action="userhomepages/mocktestauth.jsp" method="post">

            <%--try-catch block to retrieve title from e_course table--%>
            <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select title from e_course";
            ResultSet rs = stmt.executeQuery(query);
            %>
            <fieldset>
                <legend>Mock Test</legend>
                <p>
                    <label class="block">Select a course name:</label>
                        <select name="coursename" id="dropdown">
                            <option>Select by dropping down</option>
                            <%while (rs.next()) {%>
                            <option>
                                <%=rs.getString(1)%>
                            </option>
                            <%
            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }
                            %>
                        </select>
                </p>
                <p>
                    <input type="submit" value="View Test" id="send">
                </p>
            </fieldset>
            <table>
                <tr>
                    <td width="1200" height="350"></td>
                </tr>
            </table>
        </form>
    </body>
</html>