<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: JanB
  Date: 23/08/2019
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>

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

<span style="position: absolute; left: 33.5%">Overview of database for Blog-Posts: </span>
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

<c:forEach var="blogBn" items="${totalArray}">

    <p style="position: absolute; width: 49%; left: 33.5%; background-color: darkgrey; color: white; border: 1px solid black">
        Time of post: <c:out value="${blogBn.timestamp}" />
        // Name of the author: <c:out value="${blogBn.name}" /><br /></p>

    <div style="position: relative; width: 49.75%; top: 40px; left: 33.15%; background-color: white; color: black; border: 1px solid black">

        <img src="f2.png" style="margin: 3px; margin-bottom: 20px; border: 1px solid black; width: 70px; height: 70px" align="left"></img><br /><br />
        <div style="position: relative; top: 45px; left: -73px; height: 35px">
        <span style="font-weight: bold">Student</span>
        </div>


    <span style="font-weight: bold; position: relative; top: -70px; height: 20px">Java Blog #
        <c:out value="${blogBn.id}" /><br /></span>
    <div style="position: relative; top: -60px; left: 80px; width: 90%"><p>
        <c:out value="${blogBn.message}" />
    </p></div>
    <br /><br /><hr />
    Signature: <br />Java EE/JSP is 1337!<br />

    <br />

    <button name="btnProfile" onclick="top.location('Profile.jsp')" title="Watch the Profile of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Profile</button>
    <button name="btnEmailMe" onclick="top.location('Email.jsp')" title="Email this Blog-writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Email Me</button>
    <button name="btnThreads" onclick="top.location('ThreadsIn.jsp')" title="View other Threads by this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Threads Posted</button>
    </div>

    <br /><br />

</c:forEach>

</body>
</html>
