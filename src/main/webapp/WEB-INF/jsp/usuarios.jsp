<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
        <title>Meu Condomínio</title>
        
        <c:url value="/vendor/bootstrap/css/bootstrap.min.css" var="bootstrap" />
        <c:url value="/vendor/metisMenu/metisMenu.min.css" var="metisMenu" />
        <c:url value="/vendor/sb-admin/css/sb-admin-2.css" var="css" />
        <c:url value="/vendor/font-awesome/css/font-awesome.min.css" var="font" />
        <c:url value="/vendor/datatables-plugins/dataTables.bootstrap.css" var="dataTableBootstrap" />
        <c:url value="/vendor/datatables-responsive/dataTables.responsive.css" var="dataTableReposive" />
        <c:url value="/vendor/datatables/css/dataTables.personalizado.css" var="dataTablePersonalizado" />
        
        <link href="${bootstrap}" rel="stylesheet">
        <link href="${metisMenu}" rel="stylesheet">
        <link href="${css}" rel="stylesheet">
        <link href="${font}" rel="stylesheet" type="text/css">
        <link href="${dataTableBootstrap}" rel="stylesheet">
        <link href="${dataTableReposive}" rel="stylesheet">
        <link href="${dataTablePersonalizados}" rel="stylesheet">
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        
    </head>
    <body>
       <%@include file="menu.jsp" %>
            <div id="page-wrapper">
                <!-- /#page-wrapper -->
                <br>
                <div class="row">
                    <div class="col-lg-4 col-xs-4">
                        <div class="panel panel-heading">
                            <a href="usuarios_cadastro.jsp"><button type="submit" class="btn btn-default"> <i class="fa fa-plus"></i> Novo Usuário</button></a>
                        </div>
                    </div>
                </div>    
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-user"></i> Usuários Cadastrados                      
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover display compact">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nome</th>
                                            <th>E-mail</th>
                                            <th>Unidade</th>
                                            <th>Perfil</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr th:each="usuario : ${listUsuario}">              
                                        <td th:text="${usuario.id}">Product ID</td>
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
                                    </tbody>
                                </table>
                            </div>     <!-- /.table-responsive -->
                        </div> 
                    </div>
                </div>                  
            </div>
                                        
            <script src="../vendor/jquery/jquery.min.js"></script>
            <!-- Bootstrap Core JavaScript -->
            <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
            <!-- Metis Menu Plugin JavaScript -->
            <script src="../vendor/metisMenu/metisMenu.min.js"></script>
            <!-- Custom Theme JavaScript -->
            <script src="../vendor/sb-admin/js/sb-admin-2.js"></script>
            <!-- DataTables JavaScript -->
            <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
            <script src="../vendor/datatables/js/traducao.js"></script>
            <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
            <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>
        
<!--        <script src="https://unpkg.com/jquery"></script>
        <script src="https://unpkg.com/metismenu"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        -->
      </body>
    
    <c:url value="/vendor/jquery/jquery.min.js" var="jQuery" />
    <c:url value="/vendor/bootstrap/js/bootstrap.min.js" var="bootstrap" />
    <c:url value="/vendor/metisMenu/metisMenu.min.js" var="metisMenu" />
    <c:url value="/vendor/sb-admin/js/sb-admin-2.js" var="CSS" />
    <c:url value="/vendor/datatables/js/jquery.dataTables.min.js" var="dataTableJquery" />
    <c:url value="/vendor/datatables/js/traducao.js" var="traducao" />
    <c:url value="/vendor/datatables-plugins/dataTables.bootstrap.min.js" var="dataTableBootstrap" />
    <c:url value="/vendor/datatables-responsive/dataTables.responsive.js" var="dataTableResponsive" />
    <script src="${jQuery}"></script>
    <script src="${bootstrap}"></script>
    <script src="${metisMenu}"></script>
    <script src="${CSS}"></script>
    <script src="${dataTableJquery}"></script>
    <script src="${traducao}"></script>
    <script src="${dataTableBootstrap}"></script>
    <script src="${dataTableResponsive}"></script>
</html>