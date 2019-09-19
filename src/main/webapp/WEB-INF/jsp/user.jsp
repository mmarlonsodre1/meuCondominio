<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="utf-8"/>
<title>Product Manager</title>
</head>
<body>
<div align="center">
    <h1>Usuário List</h1> 
    <a href="/new">Create New Usuário</a>
    <br/><br/>
    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Made In</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listUsuario}" var="usuario"> 
                <tr>
                    <a>${usuario.id}</a>
                    <td th:text="${usuario.id}">${usuario.id}</td>
                    <td th:text="${usuario.nome}">Name</td>
                    <td th:text="${usuario.email}">Name</td>
                    <td th:text="${usuario.senha}">Name</td>
                    <td th:text="${usuario.status}">Name</td>
                    <td th:text="${usuario.perfil}">Name</td>
                    <td>
                        <a th:href="@{'/edit/' + ${usuario.id}}">Edit</a>
                        &nbsp;&nbsp;&nbsp;
                        <a th:href="@{'/delete/' + ${usuario.id}}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>   
</body>
</html>