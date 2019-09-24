<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: janb
  Date: 24/09/2019
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>The Java Blog</title>
</head>
<body style="background-image: url(textured_stripes.png); background-repeat: repeat">

<div style="background-color: darkgrey; position: absolute; width: 65%; left: 17.5%; height: 70px; border: 1px solid black; border-bottom: 10px solid black">
    <span style="font-size: 20px; font-color: black; font-weight: bold; position: absolute; top: 0px">Java Blog by Jan Bailleul -  <br /></span>
    <span style="font-size: 15px; font-color: black; font-style: italic; position: absolute; top: 25px">News of Java Development: Java Servlet Pages, Apache Tomcat, MySQL, ...!</span>
    <img src="schermopname2.png" width="187" height="70" align="right" />
</div>


<br /><br /><br /><br /><br /><br />
<span style="position: absolute; left: 17.5%">Welcome, ${NameID}</span>
<span style="position: absolute; left: 33.5%">Emails (Personal Messages) from you (1st part in the part under this title) and for you (2nd): </span>
<br /><br />

<p style="position: absolute; width: 15%; left: 17.5%; background-color: darkgrey; color: white; border: 1px solid black">
    Menu of this website
</p>

<div style="position: absolute; width: 15%; top: 195px; text-align:center; left: 17.5%; background-color: white; color: black; border: 1px solid black">
    <form method="GET" action="HelloMVC">
        <input name="nickNM" type="text" readonly="readonly" value="${nickNM}" style="visibility: hidden; width: 0px" />
        <input name="NameID" type="text" readonly="readonly" value="${NameID}" style="visibility: hidden; width: 0px" />
        <input name="Thr_id" type="text" readonly="readonly" value="${Thr_id}" style="visibility: hidden; width: 0px" />
        <input name="btnHomePage" type="submit" value="Website Home-Page" title="Watch the Home-Page of this Blog" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnProfileGeneral" type="submit" value="Profile Page" title="Watch the Profile of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnPostMessage" type="submit" value="New Message" title="Write a new message in this Blog-Thread" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnEmailMeGeneral" type="submit" value="Send Email Page" title="Send Emails" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnReadEmail" type="submit" value="Read Emails" title="Read Emails" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnOverviewGeneral" type="submit" value="Overview of Threads" title="Watch the Thread Overview" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnWebsiteOverview" type="submit" value="Website Overview" title="Watch the Website Overview" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" />
    </form>
</div>

<jsp:useBean id="totalArray2" scope="request" type="java.util.List"/>
<c:forEach var="blogmBn" items="${totalArray2}">

    <p style="position: absolute; width: 49%; left: 33.5%; background-color: darkgrey; color: white; border: 1px solid black">
        Time of post: <c:out value="${blogmBn.timestamp}" />
        // Name of the writer: <c:out value="${blogmBn.nick}" /> (OUTBOX: email written by yourself)<br /></p>

    <div style="position: relative; width: 49.75%; top: 40px; left: 33.15%; background-color: white; color: black; border: 1px solid black">

        <img src="f2.png" style="margin: 3px; margin-bottom: 20px; border: 1px solid black; width: 70px; height: 70px" align="left"/><br /><br />
        <div style="position: relative; top: 45px; left: -73px; height: 35px">
            <span style="font-weight: bold">Student</span>
        </div>

        <span style="font-weight: bold; position: relative; top: -70px; height: 20px">Personal Message # <c:out value="${blogmBn.PK_email}" />:<br /></span>

        <div style="position: relative; top: -60px; left: 80px; width: 90%">
            <p style="text-align: justify; width: 90%">
                <c:out value="${blogmBn.msg}" />
            </p>
        </div>

        <br /><br /><hr />
        Signature: <br />Java EE/JSP is 1337!<br />


    </div>

    <br /><br />

</c:forEach>

<c:forEach var="blogmBn" items="${totalArray}">

    <p style="position: absolute; width: 49%; left: 33.5%; background-color: darkgrey; color: white; border: 1px solid black">
    Time of post: <c:out value="${blogmBn.timestamp}" />
    // Name of the reader: <c:out value="${blogmBn.nick}" /> (INBOX: emails from destination) <br /></p>

    <div style="position: relative; width: 49.75%; top: 40px; left: 33.15%; background-color: white; color: black; border: 1px solid black">

    <img src="f2.png" style="margin: 3px; margin-bottom: 20px; border: 1px solid black; width: 70px; height: 70px" align="left"/><br /><br />
    <div style="position: relative; top: 45px; left: -73px; height: 35px">
    <span style="font-weight: bold">Student</span>
    </div>

        <span style="font-weight: bold; position: relative; top: -70px; height: 20px">Personal Message # <c:out value="${blogmBn.PK_email}" />:<br /></span>

        <div style="position: relative; top: -60px; left: 80px; width: 90%">
            <p style="text-align: justify; width: 90%">
                <c:out value="${blogmBn.msg}" />
            </p>
        </div>

    <br /><br /><hr />
        Signature: <br />Java EE/JSP is 1337!<br />


    <%--
        <button name="btnProfile" onclick="top.location('/ReverseServlet/HelloMVC?btnProfileGeneral=Profile+Page')" title="Watch the Profile of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Profile</button>
        <button name="btnEmailMeGeneral" onclick="top.location('EmailMe.jsp')" title="Email this Blog-writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Email Me</button>
        <button name="btnOverviewGeneral" onclick="top.location('OverviewThr.jsp')" title="View other Threads by this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Threads Posted</button>
    --%>

    </div>

    <br /><br />

</c:forEach>
<br /><br />
</body>
</html>
