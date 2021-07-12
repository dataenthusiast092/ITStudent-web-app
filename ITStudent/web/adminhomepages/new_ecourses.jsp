<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>


<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
        <link rel="stylesheet" href="css/1morestyle.css" media="screen"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
    </head>
    <body>
        <table>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">e-Courses</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <div id="content">
            <html:form styleId="container" action="/processecourseadmin">
                <fieldset>
                    <legend>Create new e-courses</legend>
                    <p>
                        <label for="coursetitle" class="block">Add Course Name:<br/></label>
                        <html:text styleId="tbox" property="coursetitle"/>
                    </p>
                    <p>
                        <label for="coursedescription" class="block">Add Course Description: </label>
                        <html:textarea styleId="tbox" property="coursedescription" rows="10" cols="60"/>
                    </p>
                    <p>
                        <html:submit styleId="send" property="submit" value="Create"/>
                    </p>
                </fieldset>
            </html:form>
        </div>
        <table>
            <tr>
                <td height="100" width="1200">

                </td>
            </tr>
        </table>
    </body>
</html>
