<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/13
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
</head>
<body>
<form action="/studentController/add" method="post">
    <table>
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>成绩</td>
        </tr>
        <tr>
            <td><input type="text" name="id"></td>
            <td><input type="text" name="name"></td>
            <td><input type="text" name="grade"></td>
        </tr>
        <tr>
            <input type="submit" value="提交"/>
        </tr>
    </table>

</form>
</body>
</html>
