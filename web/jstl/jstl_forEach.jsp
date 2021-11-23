<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ca.bytetube.domain.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    List list = new ArrayList();
    list.add("bytetube1");
    User user = new User();
        user.setName(null);
    list.add(user);
    request.setAttribute("list",list);
    list.add("bytetube2");
    list.add("bytetube3");
    list.add("bytetube4");


%>

<%--User domain setXXX getXXX--%>
<%--getName--->Name--->name--%>
<%--for(int i = 0; i < 100; i++)--%>
<%--for(Element ele :container)--%>
<%--${list[1].name}--%>

<%--<c:forEach items="${requestScope.list}" var="ele" varStatus="vs">--%>
<%--    <c:if test="">--%>


<%--    </c:if>--%>
<%--    ${ele}<br>--%>
<%--    ${vs.count}<br>--%>
<%--    ${vs.index}<br>--%>

<%--</c:forEach>--%>

<%--<c:forEach items="${requestScope.list}" var="ele" varStatus="vs">--%>

<%--    <c:if test="${vs.index<(list.size()/2)}">--%>
<%--        ${ele}<br>--%>
<%--    </c:if>--%>

<%--</c:forEach>--%>

<%--<c:choose>--%>
<%--    <c:when test="">--%>
<%--        --%>
<%--    </c:when>--%>
<%--    <c:otherwise></c:otherwise>--%>
<%--</c:choose>--%>

<c:forEach items="${requestScope.list}" var="ele" varStatus="vs">
    <c:choose>
        <c:when test="${vs.index<(list.size()/2)}">
            ${ele}<br>
        </c:when>
    </c:choose>
</c:forEach>

</body>
</html>
