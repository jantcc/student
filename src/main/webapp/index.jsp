<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>大学生成绩管理系统</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrapValidator.css" rel="stylesheet">
    <link href="../css/shake.css" rel="stylesheet" media="all">
    <script src="../js/jquery-1.9.1.min.js" ></script>
    <script src="../js/bootstrapValidator.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../css/csshake.min.css"></script>
    <script>
        function validate(){
            if($("#studentid").val().length==0){
                alert("学号不能为空!")
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<div class="container">
    <div>
        <img src="../image/title.png" class="center-block"  >
    </div>
    <br>
    <div class="row" >
        <div class="col-sm-4 text-center" >
           <a  class="shake shake-slow"  href="/studentController/pageQuery"><img src="../image/001.png">
           </a>
            <img src="../image/002.png" >
        </div>
        <div class="col-sm-4 text-center">
            <a  class="shake shake-horizontal"   href="addstudent.jsp" data-toggle="modal" data-target="#myModal" ><img src="../image/003.png" ></a>
            <img src="../image/004.png" >
        </div>
        <div class="col-sm-4 text-center">
           <a  class="shake shake-opacity" href="#" data-target="#demo"  data-toggle="collapse" ><img src="../image/007.png" ></a>
            <img src="../image/006.png" >
        </div>
    </div>
    <br>
    <br>
    <br>
    <div class="row" >
        <div class="col-sm-4 text-center" >
            <a  class="shake shake-slow"  href="#"><img src="../image/005.png">
            </a>
            <img src="../image/008.png" >
        </div>
        <div class="col-sm-4 text-center" >
            <a  class="shake shake-slow"  href="#"><img src="../image/009.png">
            </a>
            <img src="../image/011.png" >
        </div>
        <div class="col-sm-4 text-center" >
            <a  class="shake shake-slow"  href="#"><img src="../image/010.png">
            </a>
            <img src="../image/011.png" >
        </div>
        </div>
</div>

<div id="demo" class="collapse  ">
    <form method="post" action="/studentController/selectById" onsubmit="return validate();">
        <table  class="table table-hover" >
            <tr>
                <td>请输入学号查询成绩：
                    <input type="text"  id="studentid" name="studentid">
                    <input type="submit"  class="btn btn-success" value="查询" ></td>
            </tr>
        </table>
    </form>
</div>


<!-- 模态框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 400px">
        <div class="modal-content" style="margin-top: 200px">
        </div>
    </div>
</div>

</body>
</html>
