<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>modify contact</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">modify contact</h3>
    <form action="${pageContext.request.contextPath}/UpdateUserServlet" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${user.name}" readonly="readonly" placeholder="pls input name" />
        </div>

        <div class="form-group">
            <label>Sex:</label>
            <c:if test="${user.sex == 'male'}">
            <input type="radio" name="sex" value="male"   checked />male
            <input type="radio" name="sex" value="female"  />female
            </c:if>

            <c:if test="${user.sex == 'female'}">
                <input type="radio" name="sex" value="male"    />male
                <input type="radio" name="sex" value="female"  checked/>female
            </c:if>
        </div>

        <div class="form-group">
            <label for="age">Age:</label>
            <input type="text" class="form-control" id="age"  name="age" value="${user.age}" placeholder="pls input age" />
        </div>

        <div class="form-group">
            <label for="address">Address：</label>
            <select name="address" class="form-control" >
                <c:if test="${user.address == 'trt'}">
                    <option value="trt" selected>trt</option>
                    <option value="mtl">mtl</option>
                    <option value="van">van</option>
                </c:if>

                <c:if test="${user.address == 'mtl'}">
                    <option value="trt">trt</option>
                    <option value="mtl" selected>mtl</option>
                    <option value="van">van</option>
                </c:if>

                <c:if test="${user.address == 'van'}">
                    <option value="trt" >trt</option>
                    <option value="mtl">mtl</option>
                    <option value="van" selected>van</option>
                </c:if>


            </select>
        </div>

        <div class="form-group">
            <label for="facebook">Facebook:</label>
            <input type="text" class="form-control" name="facebook" value="${user.facebook}" placeholder="pls input facebook num"/>
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" name="email" value="${user.email}" placeholder="pls input email"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="submit" />
            <input class="btn btn-default" type="reset" value="reset" />
        </div>
    </form>
</div>
</body>
</html>
