<%--
  Created by IntelliJ IDEA.
  User: JanB
  Date: 23/08/2019
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Java Blog</title>
</head>
<body>
Hello Form: <span style="font-weight: bold">Please insert a correct username/password!
    (Error message: ${errorMessage})</span>
    <form method="POST" action="HelloMVC">
        <br />
        Username: <input type="text" name="userName" style="position: absolute; left: 100px"/><br /><br />
        Password: <input type="password" name="password" style="position: absolute; left: 100px" /><br /><br />
        <input type="submit" value="submit" />
    </form>

</body>
</html>
