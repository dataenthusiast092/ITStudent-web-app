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
    </head>
    <body>
        <table>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
            <tr>
                <td width="1200">
                    <font color="#ff9900" size="4"><marquee scrollamount="5" scrolldelay="89">File Upload</marquee></font>
                </td>
            </tr>
            <tr style="background-color: #ff9900;">
                <td width="1200" height="5" align="center"></td>
            </tr>
        </table>
        <table align="center" height="440">
            <tr>
                <td>
                    <div id="content">
                        <form id="container" action="userhomepages/uploadauth.jsp" enctype="multipart/form-data" method="post">
                            <fieldset>
                                <legend>Upload here...</legend>
                                <p>
                                    <label class="block">Select the file to upload</label>
                                </p>
                                <p>
                                    <input type="file" name="file" size="20">
                                </p>
                                <p>
                                    <input type="submit" value="upload" id="send">
                                </p>
                            </fieldset>
                        </form>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>
