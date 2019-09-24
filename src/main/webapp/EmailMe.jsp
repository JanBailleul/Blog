<%--
  Created by IntelliJ IDEA.
  User: janb
  Date: 23/09/2019
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<span style="position: absolute; left: 33.5%">Profiles of the Blog-Writers</span>

<br /><br />

<p style="position: absolute; width: 15%; left: 17.5%; background-color: darkgrey; color: white; border: 1px solid black">
    Menu of this website
</p>

<div style="position: absolute; width: 15%; top: 195px; text-align:center; left: 17.5%; background-color: white; color: black; border: 1px solid black">
    <form method="GET" action="/ReverseServlet/HelloMVC">
        <input name="nickNM" type="text" readonly="readonly" value="${nickNM}" style="visibility: hidden; width: 0px" />
        <input name="NameID" type="text" readonly="readonly" value="${NameID}" style="visibility: hidden; width: 0px" />
        <input name="Thr_id" type="text" readonly="readonly" value="${Thr_id}" style="visibility: hidden; width: 0px" />
        <input name="btnHomePage" type="submit" value="Website Home-Page" title="Watch the Home-Page of this Blog" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnProfileGeneral" type="submit" value="Profile Page" title="Watch the Profile of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnPostMessage" type="submit" value="New Message" title="Write a new message in this Blog-Thread" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnEmailMeGeneral" type="submit" value="Send Email Page" title="Send Emails" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnReadEmail" type="submit" value="Read Email" title="Read Emails" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnOverviewGeneral" type="submit" value="Overview of Threads" title="Watch the Thread Overview" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" /><br />
        <input name="btnWebsiteOverview" type="submit" value="Website Overview" title="Watch the Website Overview" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" />
    </form>
</div>


<p style="position: absolute; width: 49%; left: 33.5%; background-color: darkgrey; color: white; border: 1px solid black">
    This is the Page to email to your favourite Blogger of this Java Blog: ${nickNM}
</p>

<div style="position: relative; width: 49.75%; top: 40px; left: 33.15%; background-color: white; color: black; border: 1px solid black">

    <img src="f2.png" style="margin: 3px; margin-bottom: 20px; border: 1px solid black; width: 70px; height: 70px" align="left"></img><br /><br />
    <div style="position: relative; top: 45px; left: -73px; height: 35px">
        <span style="font-weight: bold">Student</span>
    </div>

    <span style="font-weight: bold; position: relative; top: -73px">Email a personal (private) message to a Blog-Writer</span>

    <div style="position: relative; top: -60px; left: 80px; width: 90%"><p>
    <form method="GET" action="/ReverseServlet/HelloMVC">
         Name of the Blogger you want to email here, choose:<br /><br />
         <select name="nickNM">
            <c:forEach items="${totalArray}" var="blogBn">
                <option value="${blogBn.name}"
                        <c:if test="${blogBn.name eq selectedListName}">selected="selected"</c:if>
                >
                    <c:out value="${blogBn.name}" />

                </option>
            </c:forEach>
        </select>
        <br/><br/>

        Name of the sender of this email (the writer of this email):<br /><br />
             <input type="text" name="dest_user" maxlength="100" size="99" readonly="readonly" value="${NameID}"/><br /><br />

         Text this to the Blogger:<br /><br />
             <textarea name="postedMail" rows="10" cols="80">Input your message here: ...</textarea>
             <br /><br />

         <input name="Thr_id" type="text" readonly="readonly" value="${Thr_id}" style="visibility: hidden; width: 0px" />
         <input name="NameID" type="text" readonly="readonly" value="${NameID}" style="visibility: hidden; width: 0px" />

         Send your email now to the Blogger:<br /><br />
            <input name="btnEmailMeGeneralAfter" type="submit" value="Send Email To Blogger" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer" />

        </form>
    </div>

    <br /><br /><hr />
    Signature: <br />Java EE/JSP is 1337!<br />

    <br />
    <%--
    <button name="btnProfile" onclick="top.location('Profile.jsp')" title="Watch the Profile of this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Profile</button>
    <button name="btnEmailMeGeneral" onclick="top.location('EmailMe.jsp')" title="Email this Blog-writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Email Me</button>
    <button name="btnOverviewGeneral" onclick="top.location('OverviewThr.jsp')" title="View other Threads by this Blog-Writer" style="background-color: yellow; border: 1px solid black; margin: 3px; cursor: pointer">Threads Posted</button>
--%>
</div>


</body>
</html>
