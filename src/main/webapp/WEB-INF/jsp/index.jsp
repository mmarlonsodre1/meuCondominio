<%@ page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="./includes/img/favicon.ico" type="image/x-icon" />
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
        <div class="container">      
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">             
                    <div class="panel-heading" align="middle">
                        <i class="fa fa-building fa-fw"></i>
                    </div>
                    <div class="panel-heading" align="middle">
                        <h3 class="panel-title">Meu Condomínio</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="/login" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="text autofocus email" required="true">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Senha" name="senha" type="password" required="true">
                                </div>
                                <div class="form-group">
                                    <p class="text-center">
                                        <a data-toggle="modal" href="#solicitarAcesso"><font class="simplonRegularPreto12"><u>Cadastro</u></font></a>
                                    </p>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-info btn-block">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="solicitarAcesso" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h5 class="modal-title text-center" id="myModalLabel">
                            Meu Condomínio
                        </h5>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="tab-content">
                                    <form:form action="/cadastrar" modelAttribute="usuario">    
                                        <div class="row">
                                            <div class="form-group col-xs-3 col-md-3 col-lg-3">
                                                <form:label path="nome">Nome</form:label>
                                                <form:input path="nome" id="nome" class="form-control" placeholder="Nome" required="true"/>
                                            </div>   
                                            <div class="form-group col-xs-3 col-md-3 col-lg-3">
                                                <form:label path="email">E-mail</form:label>
                                                <form:input path="email" id="email" class="form-control" placeholder="E-mail" value="" type="email" required="true"/>
                                            </div>   
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <form:label path="senha">Senha</form:label>
                                                <form:input path="senha" id="senha" class="form-control" placeholder="Senha" value="" type="password" required="true"/>
                                            </div>
                                        </div>   
                                        <div class="row">
                                            <div class="col-xs-offset-4 col-md-offset-4 col-lg-offset-4 form-group">
                                                <button type="submit" class="btn btn-primary active" id="submit" value="submit">Cadastrar</button>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
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