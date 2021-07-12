<%@ page import="java.io.*, java.util.*" %>
<%@ page session="true" %>

<%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store");
%>

<%--try-catch block to download file from the path retrieve from the table--%>
<%
try
{
    String userid=(String)session.getAttribute("user");
String name=request.getParameter("name");
String path=application.getRealPath("dt")+"\\"+userid+"\\"+name;
System.out.println(path);
response.setContentType("application/octet-stream");

response.setHeader( "Content-disposition","attachment;filename="+name);
FileInputStream fin=new FileInputStream(path);
OutputStream os=response.getOutputStream();
  while(true)
   {
   int i=fin.read();
    if(i==-1)
    break;
    os.write(i);
    }
   fin.close();
   os.close();
} catch (Exception e) {
System.out.println(e);
}
%>