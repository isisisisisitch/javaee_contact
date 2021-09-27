<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>user info system</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>

    <script>
        function delUser(id) {
            if (confirm("delete?")){
                location.href="${pageContext.request.contextPath}/DelUserServlet?id="+id;
            }
        }


    </script>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">user list info</h3>
    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <th>id</th>
            <th>name</th>
            <th>sex</th>
            <th>age</th>
            <th>address</th>
            <th>facebook</th>
            <th>email</th>
            <th>operation</th>
        </tr>
       <c:forEach items="${users}" var="user" varStatus="s">
           <tr>
               <td>${s.count}</td>
               <td>${user.name}</td>
               <td>${user.sex}</td>
               <td>${user.age}</td>
               <td>${user.address}</td>
               <td>${user.facebook}</td>
               <td>${user.email}</td>
               <td><a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/FindUserServlet?id=${user.id}">modify</a>&nbsp;
                   <a class="btn btn-default btn-sm" href="javascript:delUser(${user.id});">del</a></td>
           </tr>
       </c:forEach>


        <tr>
            <td colspan="8" align="center"><a class="btn btn-primary" href="add.jsp">add contact</a></td>
        </tr>
    </table>
</div>
</body>
</html>

