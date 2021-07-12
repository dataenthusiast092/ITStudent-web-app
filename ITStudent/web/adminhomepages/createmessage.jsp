<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>
            ITStudent|Compose Message
        </title>
        <link rel="stylesheet" type="text/css" href="/ITStudent/css/styles.css" />
        <link rel="stylesheet" type="text/css" href="/ITStudent/css/style_validation.css" />
    </head>
    <body bgcolor="#ffcc00">
        <form action="createmessageauth.jsp" method="post">
            <table>
                <tr height="20" bgcolor="#3f5a81"><td width="1400"></td></tr>
            </table>
            <table>
                <tr height="90" bgcolor="#ffcc00">
                    <td width="550"></td>
                    <td width="650"><h1>Send Message</h1></td>
                    <td width="50" align="center">
                        <ul id="sliding-navigation">
                            <li class="sliding-element">
                                <a href="/ITStudent/link.do?method=aalist">Home</a>
                            </li>
                        </ul>
                    </td>
                </tr>
            </table>
            <table>
                <tr height="20" bgcolor="#3f5a81">
                    <td  width="1400" bgcolor="#3f5a81">
                    </td>
                </tr>
            </table>
            <fieldset>
                <legend> Send Message to user </legend>

                <%--try-catch block to retrieve list of all the courses available--%>
                <%
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select username from registration";
            ResultSet rs = stmt.executeQuery(query);
                %>
                <p>
                    <select name="sendto" id="dropdown">
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
                        <%--try-catch ends here--%>
                    </select>
                </p>
                <p>
                    <label class="block"></label>
                </p>
                <p>
                    <label class="block">Title</label>
                    <input type="text" name="title" id="tbox"/>
                </p>
                <p>
                    <label class="block">Subject</label>
                    <input type="text" name="subject" id="tbox"/>
                </p>
                <p>
                    <label class="block">Message</label>
                    <textarea name="message" rows="6" cols="30" id="tbox"></textarea>
                </p>
                <p>
                    <input type="submit" value="Send" name="send" id="send"/>
                </p>
            </fieldset>
            <table bgcolor="#3f5a81">
                <tr>
                    <td height="10" width="1400" align="center">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>