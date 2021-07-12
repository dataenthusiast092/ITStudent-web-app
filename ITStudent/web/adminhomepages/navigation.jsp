<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
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
        <link rel="stylesheet" type="text/css" href="css/styles.css" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/sliding_effect.js"></script>
    </head>
    <body>
        <div class="navigation-block">
            <ul id="sliding-navigation">
                <li class="sliding-element"><h3>Administration</h3></li>
                <li class="sliding-element"><a href="link.do?method=auacc">User Accounts</a></li>
                <li class="sliding-element"><a href="link.do?method=aalist">List all Admins</a></li>         
                <li class="sliding-element"><h3>Files & Documents</h3></li>
                <li class="sliding-element"><a href="link.do?method=asavedfiles">Saved Files</a></li>
                <li class="sliding-element"><a href="link.do?method=auploadfiles">Upload Files</a></li>
                <li class="sliding-element"><h3>e-Courses</h3></li>
                <li class="sliding-element"><a href="link.do?method=acrnwcrses">Create new e-Courses</a></li>
                <li class="sliding-element"><a href="link.do?method=alisallcrses">List all e-Courses</a></li>
                <li class="sliding-element"><a href="link.do?method=acrmcktst">Create Mock Test</a></li>
            </ul>
        </div>
    </body>
</html>
