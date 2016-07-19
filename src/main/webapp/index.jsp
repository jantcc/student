<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<input type="button" value="查看所有学生成绩" onclick="window.location.href = '/studentController/queryAll'" />
<input type="button" value="添加学生成绩"onclick="window.location.href = 'addstudent.jsp'"/>
<form method="post" action="/studentController/selectById">
<table>
    <tr>请输入学号查询成绩：</tr>
    <tr><td><input type="text" name="studentid"></td>
        <td><input type="submit" value="查询" ></td>
    </tr>
</table>
</form>
</body>
</html>
