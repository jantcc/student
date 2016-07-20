<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加学生成绩</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.9.1.min.js" ></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function check(){
            if ( $("#id").val().length == 0) {
                alert("学号不能为空！")
                return false;
            }
            if ( $("#name").val().length == 0) {
                alert("姓名不能为空！")
                return false;
            }
            if ( $("#grade").val().length == 0) {
                alert("成绩不能为空！")
                return false;
            }
            return true;
        }


    </script>
</head>
<body>
<form action="/studentController/add" method="post" onsubmit="return check();">
    <table class="table table-hover table-bordered text-center ">
        <tr>
            <td>学号</td>
            <td><input type="text" id="id" name="id"></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" id="name" name="name"></td>
        </tr>
        <tr>
            <td>成绩</td>
            <td><input type="text" id="grade" name="grade"></td>
        </tr>
        <tr>
            <td colspan="2">
            <input class="btn btn-success" type="submit" value="提交"/>
            </td>
        </tr>
    </table>

</form>
</body>
</html>
