<%--
  Created by IntelliJ IDEA.
  User: JanB
  Date: 06/08/2019
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    public String displayHeaderMenu() {
        return "<div style=\"background-color: darkgrey; position: absolute; width: 98.75%; height: 70px; border: 1px solid black; border-bottom: 10px solid black\">" +
                "<span style=\"font-size: 20px; font-color: black; font-weight: bold; position: absolute; top: 0px\">Java Blog by Jan Bailleul -  <br /></span>" +
                "<span style=\"font-size: 15px; font-color: black; font-style: italic; position: absolute; top: 25px\">News of Java Development: Java Servlet Pages, Apache Tomcat, MySQL, ...!</span>" +
                "<img src=\"schermopname2.png\" width=\"187\" height=\"70\" align=\"right\" />" +
                "</div>" +

                "<br /><br /><br /><br />";


    }

    public String displayPhotoProfile() {
        return  "<img src=\"f2.png\" style=\"margin: 3px; margin-bottom: 20px; border: 1px solid black; width: 70px; height: 70px\" align=\"left\"></img><br /><br />" +
                "<div style=\"position: relative; top: 45px; left: -73px; height: 35px\">" +
                "<span style=\"font-weight: bold\">Student</span>" +
                "</div>";
    }

    public String displayBlogPostNr(int numberCount) {
        return "<p style=\"background-color: darkgrey; color: white\">Date: 01-01-1970 - Time: 00:00:00.00 // Name of the writer: Jan Bailleul // Thread: General News</p>" +
                "<div style=\"background-color: white; color: black; border: 1px solid black\">" +
                displayPhotoProfile() +
                "<span style=\"font-weight: bold; position: relative; top: -70px; height: 20px\">Java Blog #" + numberCount + "</span>" +
                "<div style=\"position: relative; top: -60px; left: 80px; width: 90%\"><p>In this new Blog for Java Developers: you will learn about new functionality, " +
                "news about this new concepts and thoughts concerning programming in Java and on this new blog!</p></div>" +
                "<br /><br /><hr />" +
                "Signature: <br />Java EE/JSP is 1337!<br />" +
                "<button name=\"btnProfile\" onclick=\"top.location('/Webcomponents/Profile.jsp')\" title=\"Watch the Profile of this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer\">Profile</button>" +
                "<button name=\"btnEmailMe\" onclick=\"top.location('/Webcomponents/Email.jsp')\" title=\"Email this Blog-writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer\">Email Me</button>" +
                "<button name=\"btnThreads\" onclick=\"top.location('/Webcomponents/ThreadsIn.jsp')\" title=\"View other Threads by this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer\">Threads Posted</button>" +
                "</div>";
    }
%>


</body>
</html>
