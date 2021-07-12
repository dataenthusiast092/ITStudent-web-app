<%--
UserHome Page after Login Successful. This uses layout.jsp in /userhomepages directory
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<%--used to insert layout page--%>
<tiles:insert page="/userhomepages/layout.jsp" flush="true">

    <%--used to insert tile for header in layout page--%>
    <tiles:put name="header" value="/userhomepages/header.jsp"/>

    <%--used to insert tile for navigation in layout page--%>
    <tiles:put name="navigation" value="/userhomepages/navigation.jsp"/>

    <%--used to insert tile for personalprofile in layout page--%>
    <tiles:put name="body" value="/userhomepages/dashboard.jsp"/>

    <%--used to insert tile for footer in layout page--%>
    <tiles:put name="footer" value="/userhomepages/footer.jsp"/>

</tiles:insert>
