<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>index</title>

  <!-- 1. 导入CSS的全局样式 -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
  <script src="js/jquery-2.1.0.min.js"></script>
  <!-- 3. 导入bootstrap的js文件 -->
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript">
  </script>

  <script>
    /*
    * 需求：点击图片或者超链接可以更新一张新的验证码
    * 1.给图片或者超链接绑定点击事件
    * 2.当事件发生后，更新图片,重新设置src属性值
    */

    window.onload = function () {
      //1.通过id属性获取图片对象
      var img = document.getElementById("checkcode");

      //2.绑定图片对象的点击事件
      img.onclick = function () {
        var time = new Date().getTime();//时间戳
        img.src = "${pageContext.request.contextPath}/CheckCodeServlet?"+time;
      }
    }

  </script>
</head>
<body>
<div align="center">

  <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
    username:<input type="text" name="username"> <br>
    password:<input type="text" name="password"> <br>
    checkcode:<input type="text" name="checkCode"><br>
    <img id="checkcode"  src="${pageContext.request.contextPath}/CheckCodeServlet"><br>

    <input type="submit" value="login">


  </form>
  <div style="color: red"> ${cc_error}</div>
  <div style="color: red"> <%= request.getAttribute("login_error") == null ? "" : request.getAttribute("login_error")%> </div>

</div>
</body>
</html>
