<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ITStudent</title>
        <link rel="stylesheet" href="css/style_validation.css" media="screen"/>
        <link rel="stylesheet" href="css/1morestyle.css" media="screen"/>
        <link rel="stylesheet" href="css/registration.css" media="screen"/>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/registration.js"></script>
    </head>
    <body bgcolor="#3f5a81">
        <table  bgcolor="#3f5a81">
            <tr>
                <td height="120" width="2000" align="right">
                    <img src="images/logo_1.jpg" align="left"/>
                    <tr>
                        <td align="center">
                            <html:link styleId="link" href="welcomeStruts.jsp">|  Login  |</html:link>
                        </td>
                    </tr>
                </td>
            </tr>
        </table>
        <div id="content">
            <html:form styleId="container" action="/processreg" method="post">
                <fieldset>
                    <legend>Personal Registration Details</legend>
                    <p>
                        <label for="fname" class="block">First Name:</label>
                        <html:text styleId="fname" property="fname"/>
                    </p>
                    <p>
                        <label for="lname" class="block">Last Name:</label>
                        <html:text styleId="lname" property="lname"/>
                    </p>
                    <p>
                        <label for="dob" class="block">Birthday:<small>(dd-mm-yyyy)</small></label>
                        <html:text styleId="dob" property="dob"/>
                    </p>
                    <p>
                        <label for="gender" class="block">I am:</label>
                        <html:radio styleId="man" property="gender" value="male"/><label for="man">Man</label>
                        <html:radio styleId="woman" property="gender" value="female"/><label for="woman">Woman</label>
                    </p>
                    <p>
                        <label for="sQ" class="block">Security Question: </label>
                        <html:select styleId="sQ" property="sQ">
                            <html:option value="Select"/>
                            <html:option value="What is your maiden name?"/>
                            <html:option value="What is your pet's breed?"/>
                            <html:option value="In which year did you pass your high school?"/>
                            <html:option value="What was your first car's model?"/>
                        </html:select>
                    </p>
                    <p>
                        <label for="sA" class="block">Security Answer: </label>
                        <html:text styleId="sA" property="sA"/>
                    </p>
                    <p>
                        <label for="username" class="block">Username:<small>(a valid e-mail id)</small> </label>
                        <html:text styleId="username" property="username"/>
                    </p>
                    <p>
                        <label for="password" class="block">Password: </label>
                        <html:password styleId="password" property="password" maxlength="16"/>
                    </p>
                    <p>
                        <label for="confpassword" class="block">Confirm Password: </label>
                        <html:password styleId="confpassword" property="confpassword" maxlength="16"/>
                    </p>
                    <p>
                        <html:submit styleId="send" property="submit" value="Register"/>
                    </p>
                </fieldset>
            </html:form>
        </div>
    </body>
</html>
