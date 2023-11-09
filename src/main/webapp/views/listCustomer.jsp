<%--
  Created by IntelliJ IDEA.
  User: hoanganhvu
  Date: 07/11/2023
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>List form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="nav.jsp"/>
<style>
  /* CSS để tạo nút giống với nút button */
  .button-link1 {
    display: inline-block;
    padding: 6px 12px;
    text-align: center;
    text-decoration: none;
    color: #000000;
    background-color: #ffae00; /* Màu nền của nút */
    border: 1px solid #ffae00; /* Viền của nút */
    border-radius: 5px;
    cursor: pointer;
  }

  /* Khi di chuột vào nút */
  .button-link1:hover {
    background-color: #f6bf4c; /* Màu nền thay đổi khi di chuột vào */
  }
  /* CSS để tạo nút giống với nút button */
  .button-link2 {
    display: inline-block;
    padding: 6px 12px;
    text-align: center;
    text-decoration: none;
    color: #ffffff;
    background-color: #c2011b; /* Màu nền của nút */
    border: 1px solid #c2011b; /* Viền của nút */
    border-radius: 5px;
    cursor: pointer;
  }

  /* Khi di chuột vào nút */
  .button-link2:hover {
    background-color: #960116; /* Màu nền thay đổi khi di chuột vào */
  }

  /* CSS để tạo nút giống với nút button */
  .button-linkAdd {
    display: inline-block;
    padding: 6px 12px;
    text-align: center;
    text-decoration: none;
    color: #ffffff;
    background-color: #0043f6; /* Màu nền của nút */
    border: 1px solid #0043f6; /* Viền của nút */
    border-radius: 5px;
    cursor: pointer;
  }

  /* Khi di chuột vào nút */
  .button-linkAdd:hover {
    background-color: #001772; /* Màu nền thay đổi khi di chuột vào */
  }
</style>

<div class="container">
  <h1> List Customer</h1>
  <form >
    <a href="/customer/getFormUpdate" class="button-linkAdd">Add Customer</a>
<%--    <button type="button" class=" btn btn-primary">Add Customer</button>--%>
  </form>

  <table class="table table-striped">
    <thead>
    <tr>
      <%--                <th>ID</th>--%>
      <th>STT</th>
      <%--                <th>Image</th>--%>
      <th>Name</th>
      <th>Age</th>
      <th>Address</th>
      <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customers}" varStatus="loop">
      <tr>
          <%--                <td>${customer.id}</td>--%>
          <%--                <td>--%>
          <%--                    <img src="${customer.linkImage}"  width="100" height="100">--%>
          <%--                </td>--%>
        <td>${loop.index + 1}</td>
        <td>${customer.name}</td>
        <td>${customer.age}</td>
        <td>${customer.address}</td>
        <td>
          <a href="/customer/update/${customer.id}" class="button-link1">Edit</a>
          <a href="/customer/delete/${customer.id}" class="button-link2">Delete</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
<%--  <table border="1">--%>
<%--    <tr>--%>
<%--      <th>STT</th>--%>
<%--      <th>Name</th>--%>
<%--      <th>Age</th>--%>
<%--      <th>Address</th>--%>
<%--    </tr>--%>
<%--    <c:forEach var="customer" items="${customers}" varStatus="loop">--%>
<%--      <tr>--%>
<%--        <td>${loop.index + 1}</td>--%>
<%--        <td>${customer.name}</td>--%>
<%--        <td>${customer.age}</td>--%>
<%--        <td>${customer.address}</td>--%>
<%--      </tr>--%>
<%--    </c:forEach>--%>
<%--  </table>--%>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
