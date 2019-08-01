<%--
  Created by IntelliJ IDEA.
  User: JanB
  Date: 01/08/2019
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <div style="background-color: darkgrey; position: absolute; width: 99%; height: 70px; border: 1px solid black; border-bottom: 10px solid black">
    <span style="font-size: 20px; font-color: black; font-weight: bold; position: absolute; top: 0px">Java Blog by Jan Bailleul -  <br /></span>
    <span style="font-size: 15px; font-color: black; font-style: italic; position: absolute; top: 25px">News of Java Development: Java Servlet Pages, Apache Tomcat, MySQL, ...!</span>

    <img src="schermopname2.png" width="187" height="62" align="right" />

    </div>



    <br /><br /><br /><br />

    <%

        out.println("<p style=\"background-color: darkgrey; color: white\">Profile of the Blog-Writer: Jan Bailleul</p>");

        out.println("<div style=\"background-color: white; color: black; border: 1px solid black\">");
        out.println("<img src=\"f2.png\" style=\"margin: 3px; border: 1px solid black\" width=\"35\" height=\"35\" align=\"left\" ></img>");

        out.println("Profile-Name: Jan Bailleul");
        out.println("E-mailaddress: <a href=\"mailto:jan.bailleul2@gmail.com\" name=\"Jan Bailleul\">Jan Bailleul</a>");
        out.println("Posts: *");

        out.println("<br /><br /><hr />");
        out.println("Signature: <br />Java EE/JSP is 1337!<br />");
        out.println("<button name=\"btnProfile\" action=\"Profile.jsp\" title=\"Watch the Profile of this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px\">Profile</button>");
        out.println("<button name=\"btnEmailMe\" title=\"Email this Blog-writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px\">Email Me</button>");
        out.println("<button name=\"btnThreads\" title=\"View other Threads by this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px\">Threads Posted In</button>");
        out.println("</div>");

    %>

</body>
</html>

