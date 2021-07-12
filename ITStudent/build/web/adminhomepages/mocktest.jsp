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

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/registration.js"></script>
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

        <%--try-catch block to retrieve list of e-courses--%>
        <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select title from e_course";
            ResultSet rs = stmt.executeQuery(query);
        %>
        <form action="adminhomepages/mocktestauth.jsp" method="post">
            <fieldset>
                <legend>Create mock test...</legend>
                <p>
                    <label for="coursename" class="block">Select Course here:</label>
                    <select name="coursename" id="dropdown">
                        <option>Select</option>
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
                    </select><hr>
                </p>
                <p>
                    <label for="questionname" class="block">Type Question here:</label>
                    <textarea name="question" rows="6" cols="30" id="tbox"></textarea><hr>
                </p>
                <p>
                    <label for="optionA" class="block">Option A:</label>
                    <textarea name="optionA" rows="6" cols="30" id="tbox"></textarea><br/>
                </p><hr>
                <p>
                    <label for="optionB" class="block">Option B:</label>
                    <textarea name="optionB" rows="6" cols="30" id="tbox"></textarea><br/>
                </p><hr>
                <p>
                    <label for="optionC" class="block">Option C:</label>
                    <textarea name="optionC" rows="6" cols="30" id="tbox"></textarea><br/>
                </p><hr>
                <p>
                    <label for="optionD" class="block">Option D:</label>
                    <textarea name="optionD" rows="6" cols="30" id="tbox"></textarea><br/>
                </p><hr>
                <p>
                    <label for="answer" class="block">Answer:</label>
                    <textarea name="answer" rows="6" cols="30" id="tbox"></textarea>
                </p>
                <p>
                    <input type="submit"  id="send" value="Create" size="20">
                </p>
            </fieldset>
        </form>
    </body>
</html>
