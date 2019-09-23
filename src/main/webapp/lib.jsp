<%@ page import="java.time.LocalDateTime" %>
<html>
<head><title>Lib</title></head>
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

    public String displayBlogPostNr(int number, String name, String msg, LocalDateTime ldt) {
        return "<p style=\"background-color: darkgrey; color: white\">" + ldt + "// Name of the author: " + name + " // Thread: General News</p>" +
                "<div style=\"background-color: white; color: black; border: 1px solid black\">" +
                displayPhotoProfile() +
                "<span style=\"font-weight: bold; position: relative; top: -70px; height: 20px\">Java Blog # " + number + "</span>" +
                "<div style=\"position: relative; top: -60px; left: 80px; width: 90%\"><p>" + msg + "</p></div>" +
                "<br /><br /><hr />" +
                "Signature: <br />Java EE/JSP is 1337!<br />" +
                "<button name=\"btnProfile\" onclick=\"top.location('/Webcomponents/Profile.jsp')\" title=\"Watch the Profile of this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer\">Profile</button>" +
                "<button name=\"btnEmailMe\" onclick=\"top.location('/Webcomponents/Email.jsp')\" title=\"Email this Blog-writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer\">Email Me</button>" +
                "<button name=\"btnThreads\" onclick=\"top.location('/Webcomponents/ThreadsIn.jsp')\" title=\"View other Threads by this Blog-Writer\" style=\"background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer\">Threads Posted</button>" +
                "</div>";

    }

%>
</body>