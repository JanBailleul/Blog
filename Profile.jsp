<%--
  Created by IntelliJ IDEA.
  User: JanB
  Date: 01/08/2019
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body style="background-image: url(textured_stripes.png); background-repeat: repeat">

<div style="background-color: darkgrey; position: absolute; width: 65%; left: 17.5%; height: 70px; border: 1px solid black; border-bottom: 10px solid black">
    <span style="font-size: 20px; font-color: black; font-weight: bold; position: absolute; top: 0px">Java Blog by Jan Bailleul -  <br /></span>
    <span style="font-size: 15px; font-color: black; font-style: italic; position: absolute; top: 25px">News of Java Development: Java Servlet Pages, Apache Tomcat, MySQL, ...!</span>
    <img src="schermopname2.png" width="187" height="70" align="right" />
</div>


<br /><br /><br /><br /><br /><br />

<span style="position: absolute; left: 33.5%">Profiles of the Blog-Writers</span>

<br /><br />

<p style="position: absolute; width: 15%; left: 17.5%; background-color: darkgrey; color: white; border: 1px solid black">
    Menu of this website
</p>

<div style="position: absolute; width: 15%; top: 195px; text-align:center; left: 17.5%; background-color: white; color: black; border: 1px solid black">
    <button name="btnHomePage" onclick="top.location('HomePage.jsp')" title="Watch the Home-Page of this Blog" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Website Home-Page</button><br />
    <button name="btnProfileGeneral" onclick="top.location('Profile.jsp')" title="Watch the Profile of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Profiles Page</button><br />
    <button name="btnEmailMeGeneral" onclick="top.location('EmailMeGeneral.jsp')" title="Send Emails" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Emails Page</button><br />
    <button name="btnOverviewGeneral" onclick="top.location('OverviewThreadGeneral.jsp')" title="Watch the Thread Overview" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Overview of Threads</button><br />
    <button name="btnWebsiteOverview" onclick="top.location('OverviewWebsite.jsp')" title="Watch the Website Overview" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Website Overview</button><br />
</div>

<p style="position: absolute; width: 49%; left: 33.5%; background-color: darkgrey; color: white; border: 1px solid black">
    Name of the Blog-Writer in this Profile Page: Jan Bailleul
</p>



<div style="position: relative; width: 49.75%; top: 40px; left: 33.15%; background-color: white; color: black; border: 1px solid black">

    <img src="f2.png" style="margin: 3px; margin-bottom: 20px; border: 1px solid black; width: 70px; height: 70px" align="left"></img><br /><br />
    <div style="position: relative; top: 45px; left: -73px; height: 35px">
    <span style="font-weight: bold">Student</span>
    </div>

    <span style="font-weight: bold; position: relative; top: -73px">Profile Information for Blog-Writer</span>

    <ul style="position: relative; left: 65px; top: -73px; list-style-type: square">
         <li>Profile-Name:</li>Jan Bailleul<br /><br />
         <li>E-mailaddress:</li><a href="mailto:jan.bailleul2@gmail.com">Jan Bailleul</a><br /><br />
         <li>Posts: </li> *
    </ul>

    <div style="position: relative; top: -75px">
        <hr />
        Signature: <br />Java EE/JSP is 1337!<br />
        <button name="btnBlog" onclick="history.go(-1)" title="Watch the Blog of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Blog</button>
        <button name="btnEmailMe" onclick="top.location('Email.jsp')" title="Email this Blog-writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Email Me</button>
        <button name="btnThreads" onclick="top.location('ThreadsIn.jsp')" title="View other Threads by this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Threads Posted</button>
    </div>
</div>


</body>
</html>

