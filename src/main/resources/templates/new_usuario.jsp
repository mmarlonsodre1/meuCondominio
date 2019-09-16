<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<title>Create New Product</title>
</head>
<body>
    <div align="center">
        <h1>Create New Product</h1>
        <br />
        <form action="#" th:action="@{/save}" th:object="${usuario}"
            method="post">
 
            <table border="0" cellpadding="10">
                <tr>
                    <td>Nome</td>
                    <td><input type="text" th:field="*{nome}" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" th:field="*{email}" /></td>
                </tr>                          
                <tr>
                    <td colspan="2"><button type="submit">Save</button> </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>