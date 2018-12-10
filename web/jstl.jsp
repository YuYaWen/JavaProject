<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/11/27
  Time: 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.yyw.entity.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:out default="人类对象不存在" value="${p }"></c:out><br>
<c:out value="<a href='http://www.baidu.com'>点我去百度</a>" escapeXml="false"></c:out>

<c:set var="num" value="1000" scope="session"></c:set><br>
<c:out value="${num}"></c:out><br>
${num}<br>
<%
    Person person=new Person();
    request.setAttribute("person",person);
%>
<c:set target="${person}" property="name" value="校长" var="p"></c:set>
${p }
<br>

<%
    Person p1=new Person(1,"xiaozhang");
    Person p2=new Person(2,"xiaoyu");
    Person p3=new Person(3,"xiaowang");
    Person p4=new Person(4,"xiaoliu");
    List<Person> personList=new ArrayList<Person>();
    personList.add(p1);
    personList.add(p2);
    personList.add(p3);
    personList.add(p4);
    request.setAttribute("personList",personList);
%>
<c:forEach begin="1" end="10" step="1" var="i">
    ${i}
</c:forEach>
<br>
<c:forEach var="ren" items="${personList }" varStatus="status">
    当前对象：${ren}
    当前下标：${status.index}
    <c:out value="<br>" escapeXml="false"></c:out>
</c:forEach>


<%
    List<String> heroList = new ArrayList<String>();
    heroList.add("乐芙兰");
    heroList.add("金克斯");
    heroList.add("EZ");
    heroList.add("VN");
    request.setAttribute("heroList",heroList);
%>
<table border="1">
    <c:forEach items="${heroList}" var="hero" varStatus="status">
        <tr bgcolor=${status.index %2 == 0 ? "red":"blue"}>
            <td>${hero}</td>
        </tr>
    </c:forEach>
</table>

<c:forEach var="i" begin="1" end="9">
    <c:forEach var="j" begin="1" end="${i}">
         ${j}*${i}=${i*j} &nbsp;&nbsp;&nbsp;&nbsp;
    </c:forEach>
    <c:out value="<br>" escapeXml="false"></c:out>
</c:forEach>

=======================if============================<br>
<c:if test="${2>1 }" var="result" scope="session" >
    <c:out value="今晚加个菜"></c:out>
</c:if>
${result}
<br>

======================URL==========================<br>
<c:url value="http://www.baidu.com" var="baiduURL"></c:url>
<a href="${baiduURL }">点我跳转到百度</a>
<br>
======================param============================<<br>
<!-- ${param.name} -->
<br>
${param.age}
<br>



</body>
</html>
