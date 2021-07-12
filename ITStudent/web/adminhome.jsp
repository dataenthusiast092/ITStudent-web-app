<%--
Admin Home Page after Login successful. This uses layout.jsp in /adminhomepages directory
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>

<%--used to insert layout page--%>
<tiles:insert page="/adminhomepages/layout.jsp" flush="true">

    <%--used to insert tile for header in layout page--%>
    <tiles:put name="header" value="/adminhomepages/header.jsp"/>

    <%--used to insert tile for navigation in layout page--%>
    <tiles:put name="navigation" value="/adminhomepages/navigation.jsp"/>

    <%--used to insert tile for body in layout page--%>
    <tiles:put name="body" value="/adminhomepages/useraccounts.jsp"/>

    <%--used to insert tile for footer in layout page--%>
    <tiles:put name="footer" value="/adminhomepages/footer.jsp"/>

</tiles:insert>
