<%--
  Created by IntelliJ IDEA.
  User: hoanganhvu
  Date: 07/11/2023
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update  form</title>
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
</style>
<h1>Customer Update</h1>
<div class="alert">
    <c:if test="${not empty message}">
        <div class="alert alert-success">${message}</div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>

</div>

<div class="container">
    <div class="row">

        <%--        <form action="/customer/createOrUpdate" method="post" modelAttribute="customer">--%>
        <%--            <input type="hidden" name="id" value="${customer.id}" />--%>
        <%--            <input type="text" name="name" value="${customer.name}" />--%>
        <%--            <input type="text" name="age" value="${customer.age}" />--%>
        <%--            <input type="text" name="address" value="${customer.address}" />--%>
        <%--            <input type="submit" value="submit" />--%>
        <%--        </form>--%>

        <form class="col-6" action="/customer/update" method="post" enctype="multipart/form-data">

            <div class="input-group mb-3 input-group-sm">
                <span class="input-group-text" >ID</span>
                <input name="id" value="${customer.id}" type="text" class="form-control" readonly>
            </div>

            <div class="input-group mb-3 input-group-sm">
                <span class="input-group-text" >Name</span>
                <input name="name" value="${customer.name}" type="text" class="form-control">
            </div>


            <div class="input-group mb-3 input-group-sm">
                <span class="input-group-text">Age</span>
                <input name="age" value="${customer.age}" type="number" class="form-control">
            </div>


            <div class="input-group mb-3 input-group-sm">
                <span class="input-group-text">Address</span>
                <input name="address" value="${customer.address}" type="text" class="form-control">
            </div>
            <div >
                <button type="submit"  class="btn btn-warning">Update</button>
<%--                Hai nut button nao cung dc--%>
                <button formaction="/customer/update"  class="btn btn-warning">Update</button>


<%--                <button formaction="/customer/create"  class="btn btn-success">Create</button>--%>
<%--                <button formaction="/customer/update"  class="btn btn-warning">Update</button>--%>
<%--                <button formaction="/customer/delete"  class="btn btn-danger">Delete</button>--%>
<%--                <button formaction="/customer/reset"  class="btn btn-primary">Reset</button>--%>
            </div>
        </form>

            <h1>Demo list</h1>
            <jsp:include page="listCustomer.jsp"/>

<%--        <table class="table table-striped">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--&lt;%&ndash;                <th>ID</th>&ndash;%&gt;--%>
<%--                <th>STT</th>--%>
<%--&lt;%&ndash;                <th>Image</th>&ndash;%&gt;--%>
<%--                <th>Name</th>--%>
<%--                <th>Age</th>--%>
<%--                <th>Address</th>--%>
<%--                <th>Action</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach var="customer" items="${customers}" varStatus="loop">--%>
<%--                <tr>--%>
<%--                        &lt;%&ndash;                <td>${student.id}</td>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                <td>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                    <img src="${student.linkImage}"  width="100" height="100">&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                </td>&ndash;%&gt;--%>
<%--                    <td>${loop.index + 1}</td>--%>
<%--                    <td>${customer.name}</td>--%>
<%--                    <td>${customer.age}</td>--%>
<%--                    <td>${customer.address}</td>--%>
<%--                    <td>--%>
<%--                        <a href="/student/edit/?id=${customer.id}" class="button-link1">Edit</a>--%>
<%--                        <a href="/student/delete/?id=${customer.id}" class="button-link2">Delete</a>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
