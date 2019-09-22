<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../includes/img/favicon.ico" type="image/x-icon" />
        <title>Meu Condomínio</title>
        
        <c:url value="/vendor/bootstrap/css/bootstrap.min.css" var="bootstrap" />
        <c:url value="/vendor/metisMenu/metisMenu.min.css" var="metisMenu" />
        <c:url value="/vendor/sb-admin/css/sb-admin-2.css" var="css" />
        <c:url value="/vendor/font-awesome/css/font-awesome.min.css" var="font" />
        
        <link href="${bootstrap}" rel="stylesheet">
        <link href="${metisMenu}" rel="stylesheet">
        <link href="${css}" rel="stylesheet">
        <link href="${font}" rel="stylesheet" type="text/css">
        
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    </head>
    <body>
        <div id="wrapper">
            <!-- Navbar e Menu -->
            <%@include file="menu.jsp" %>

            <div id="page-wrapper">
                <!-- /#page-wrapper -->
                <br>
                <div class="panel panel-default">
                    <div class="panel-heading"><i class="fa fa-user"></i> Edição de Moradores </div>
                    <div class="panel-body">
                        <div class="row">
                            <form:form class="form" action="/salvarEdicaoMorador" modelAttribute="morador" name="formulario" method='post' id="formulario"> 
                                <div class="col-xs-12 col-lg-12">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="form-group col-xs-3 col-md-3 col-lg-3">
                                                <form:label path="nome">Nome</form:label>
                                                <form:input path="nome" id="proprietario" class="form-control" placeholder="Nome"/>
                                            </div>   
                                            <div class="form-group col-xs-3 col-md-3 col-lg-3">
                                                <form:label path="cpf">CPF</form:label>
                                                <form:input path="cpf" id="cpf" class="form-control" placeholder="CPF"/>
                                            </div>
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <form:label path="rg">RG</form:label>
                                                <form:input path="rg" id="telefone" class="form-control" placeholder="RG"/>
                                            </div>
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <form:label path="email">E-mail</form:label>
                                                <form:input path="email" id="telefone" class="form-control" placeholder="E-mail" type="email"/>
                                            </div>
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <form:label path="telefone">Telefone</form:label>
                                                <form:input path="telefone" id="telefone" class="form-control" placeholder="Telefone" type="tel"/>
                                            </div>
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <label for="dt_nascimento_string">Dt. Nascimento</label>
                                                <input name="dt_nascimento_string" id="id_morador" class="form-control" placeholder="Dt. Nascimento" type="date">
                                            </div>
                                            <div class="form-group col-xs-2 col-lg-2">
                                                <form:label class="control-label" path="id_unidade">Unidade</form:label>
                                                <form:select path="id_unidade" id="id_apartamento" class="form-control">
                                                    <c:forEach items="${listUnidade}" var="unidade">        
                                                        <form:option value="${unidade.id}">${unidade.unidade}</form:option>
                                                    </c:forEach>
                                                </form:select>
                                            </div>  
                                        </div>
                                        <!-- FIM LINHA -->
                                        <div class="row">
                                            <div class="form-group col-xs-3 col-lg-3">
                                                <button type="submit" id="submit" value="submit" class="btn btn-primary"> <i class="glyphicon glyphicon-ok"></i> Salvar </button>
                                            </div>                                   
                                        </div>    
                                    </div> <!-- DIV FORM GROUP-->
                                </div>  
                            </form:form> 
                        </div> 
                    </div>
                </div>
            </div>
        
        <c:url value="/vendor/jquery/jquery.min.js" var="jQuery" />
        <c:url value="/vendor/bootstrap/js/bootstrap.min.js" var="bootstrap" />
        <c:url value="/vendor/metisMenu/metisMenu.min.js" var="metisMenu" />
        <c:url value="/vendor/sb-admin/js/sb-admin-2.js" var="CSS" />
        <script src="${jQuery}"></script>
        <script src="${bootstrap}"></script>
        <script src="${metisMenu}"></script>
        <script src="${CSS}"></script>
        
    </body>
</html>