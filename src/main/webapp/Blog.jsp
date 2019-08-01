


<html>
<head><title>Blog</title></head>
<body style="background-image: url(textured_stripes.png); background-repeat: repeat">


<div style="background-color: darkgrey; position: absolute; width: 99%; height: 70px; border: 1px solid black; border-bottom: 10px solid black">
    <span style="font-size: 20px; font-color: black; font-weight: bold; position: absolute; top: 0px">Java Blog by Jan Bailleul -  <br /></span>
    <span style="font-size: 15px; font-color: black; font-style: italic; position: absolute; top: 25px">News of Java Development: Java Servlet Pages, Apache Tomcat, MySQL, ...!</span>

    <img src="schermopname2.png" width="187" height="62" align="right" />

 </div>



<br /><br /><br /><br />

<%

out.println("<p style=\"background-color: darkgrey; color: white\">Date: 01-01-1970 - Time: 00:00:00.00 // Name of the writer: Jan Bailleul // Thread: General</p>");

out.println("<div style=\"background-color: white; color: black; border: 1px solid black\">");
    out.println("<img src=\"f2.png\" style=\"margin: 3px; border: 1px solid black\" width=\"35\" height=\"35\" align=\"left\" ></img>");
    out.println("<span style=\"font-weight: bold\">Java Blog #1</span><br /><br />");
    out.println("In this new Blog for Java Developers: you will learn about new functionality, ");
    out.println("news about this new concepts and thoughts concerning programming in Java and on this new blog!");
    out.println("<br /><br /><hr />");
    out.println("Signature: <br />Java EE/JSP is 1337!<br />");
    out.println("<button name=\"btnProfile\" formaction=\"/Profile.jsp\" title=\"Watch the Profile of this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px\">Profile</button>");
    out.println("<button name=\"btnEmailMe\" title=\"Email this Blog-writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px\">Email Me</button>");
    out.println("<button name=\"btnThreads\" title=\"View other Threads by this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px\">Threads Posted In</button>");
out.println("</div>");


%>



</body>
</html>
