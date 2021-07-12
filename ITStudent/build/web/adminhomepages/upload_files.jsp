<%@ page contentType="text/html" pageEncoding="UTF-8" session="true"%>


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
        <link rel="stylesheet" href="css/1morestyle.css" media="screen"/>
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
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">Upload Files</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <div id="content">
            <form id="container" action="adminhomepages/uploadauth.jsp" enctype="multipart/form-data" method="post">
                <fieldset>
                    <legend>Upload here...</legend>
                    <p>
                        <label class="block">Select the file to upload:</label>
                        <input type="file" name="file" size="20" id="filepath">
                    </p>
                    <p>
                        <input type="submit" value="upload" id="send" name="send">
                    </p>
                </fieldset>
            </form>
        </div>
        <table>
            <tr>
                <td height="200" width="1200">

                </td>
            </tr>
        </table>
    </body>
</html>
