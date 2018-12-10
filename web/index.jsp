<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/12/10
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.yyw.entity.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    // 实例化对象
    Person person = new Person(1,"老张");
    // 把对象放到pageContext作用域中
    pageContext.setAttribute("person", person);
    // 实例化List集合
    List<Person> arr = new ArrayList <Person>();
    // 继续创建对象
    Person person2 = new Person(2,"小张");
    Person person3 = new Person(3,"老王");
    Person person4 = new Person(4,"小王");

    // 把创建好的对象放入集合中
    arr.add(person);
    arr.add(person2);
    arr.add(person3);
    arr.add(person4);

    // 把集合放入到作用域中
    request.setAttribute("myArr", arr);

    // EL进行运算*********************************************
    int num1 = 10;
    int num2 = 20;

    request.setAttribute("num1", num1);
    request.setAttribute("num2", num2);

    String str1 = "abc";
    String str2 = "abc";
    request.setAttribute("str1", str1);
    request.setAttribute("str2", str2);

  %>
  ===============EL进行取值======================<br />
  cookie:${cookie}
  <br />
  cookie的jsessionId: ${cookie["JSESSIONID"] }
  <br />
  headers: ${header }
  <br />
  headers的编码:${header["accept-language"] }
  <br />
  ${initParam}
  <br />
  ${initParam.username }



  <br />
  ===============EL进行运算======================<br />
  ${1+1 }
  <br />
  ${num1 } + ${num2}
  <br />
  ${num1 + num2}
  <br />
  ${1>2}
  <br />
  ${str1.equals(str2) }
  <br />

  测试逻辑运算符 <br />
  ${true && false }
  ${true || false }
  ${!true }

  <br />
  ${1 gt 1 }
  <br />
  <!--
      三目运算：
          boolean ? value1:value2;
   -->
  ${1>0 ? "恭喜你，被清华录取了":"恭喜你，保研了" }
  <br />

  <input type="text" value=${false ? "今晚吃黄焖鸡":"今晚不吃了" }>

  <br />
  ===============EL存放对象======================<br />
  ${person}
  <br />
  ${person.name }
  <br />
  ${myArr }
  <br />
  ${myArr[0]}
  <br />
  ${requestScope.myArr[1]}

  </body>
</html>
