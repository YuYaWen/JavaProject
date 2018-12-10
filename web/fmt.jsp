<%@ page import="com.sun.xml.internal.ws.spi.db.DatabindingException" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/11/28
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
      <fmt:formatDate value="<%= new Date() %>" />
      <br>
      <fmt:formatDate value="<%= new Date() %>" dateStyle="long" />
      <br>
      <fmt:formatDate value="<%= new Date() %>" pattern="yyyy-MM-dd HH:mm:ss" />
      <br>
=======================================================================================
<br>
<fmt:formatNumber value="50000"></fmt:formatNumber>
<br>
<fmt:formatNumber value="50000" type="currency"></fmt:formatNumber>
<br>
<fmt:formatNumber value="50000" type="percent"></fmt:formatNumber>
</body>
</html>
