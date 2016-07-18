<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>修改成绩</title>
</head>
<body>
<form action="/studentController/update">
<table>
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>成绩</td>
    </tr>
    <tr>
        <td><input type="text"  name="id" value="${param.ID}"></td>
        <td><input type="text"  name="name" value="${param.NAME}" ></td>
        <td><input type="text" name="grade" ></td>
    </tr>
    <tr>
        <td><input type="submit" value="提交" ></td>
        <td><a href="index.jsp">返回主页</a> </td>
    </tr>
</table>
</form>
</body>
</html>
