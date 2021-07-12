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
    <body id="bodystyle">
        <div class="navigation-block">
            <ul id="sliding-navigation">
                <li class="sliding-element"><h3>Home</h3></li>
                <li class="sliding-element"><a href="link.do?method=dashboard">Dashboard</a></li>
                <%--<li class="sliding-element"><a href="link.do?method=edit_info">Edit Info</a></li>
                <li class="sliding-element"><a href="link.do?method=messages">Messages</a></li>--%>
                <li class="sliding-element"><h3>Files & Documents</h3></li>
                <li class="sliding-element"><a href="link.do?method=saved_files">Saved Files</a></li>
                <li class="sliding-element"><a href="link.do?method=upload_files">Upload Files</a></li>
                <li class="sliding-element"><a href="link.do?method=notes">Notes</a></li>
                <li class="sliding-element"><a href="userhomepages/readnotes.jsp">Read notes</a></li>
                <li class="sliding-element"><h3>e-Courses</h3></li>
                <li class="sliding-element"><a href="link.do?method=list_all">List All</a></li>
                <%--<li class="sliding-element"><a href="link.do?method=registered_courses">Registered Course</a></li>--%>
                <li class="sliding-element"><a href="link.do?method=mock_test">Mock Test</a></li>
            </ul>
        </div>
    </body>
</html>
