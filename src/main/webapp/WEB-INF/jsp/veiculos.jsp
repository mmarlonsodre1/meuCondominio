<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
    <% HttpSession session1 = request.getSession(false);
        if(session1 != null){
        %> 
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
        <div id="wrapper">
            <!-- Navbar e Menu -->
            <%@include file="menu.jsp" %>

            <div id="page-wrapper">
                <!-- /#page-wrapper -->
                <br>
                <div class="row">
                    <div class="col-lg-4 col-xs-4">
                        <div class="panel panel-heading">
                            <a href="veiculos_cadastro.jsp"><button type="submit" class="btn btn-default"> <i class="fa fa-plus"></i> Novo Veículo</button></a>
                        </div>
                    </div>
                </div>    
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-car"></i> Veículos Cadastrados                      
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover display compact" id="grid">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Placa</th>
                                            <th>Marca</th>
                                            <th>Modelo</th>
                                            <th>Ano</th>
                                            <th>Cor</th>
                                            <th>Apt.</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            ListarVeiculos database = new ListarVeiculos();
                                            database.getConexaoMySQL();
                                            for (Veiculos veiculos : database.getListVeiculos()) {
                                        %>
                                        <tr>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getId_veiculo()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getPlaca()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getMarca()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getModelo()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getAno()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getCor()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=veiculos.getId_apartamento()%></a></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>     <!-- /.table-responsive -->
                        </div> 
                    </div>
                </div>                  
            </div>
        
        
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
        
    </body>
    <%} else {
    response.sendRedirect("../index.jsp");
    }%>
</html>
