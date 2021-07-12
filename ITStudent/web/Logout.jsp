<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" session="true"%>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<%
        session.removeAttribute("user");
        session.invalidate();
%>
<jsp:forward page="welcomeStruts.jsp"/>
