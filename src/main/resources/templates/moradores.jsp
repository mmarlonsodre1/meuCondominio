<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="en">
    <% HttpSession session1 = request.getSession(false);
        if(session1 != null){
        %> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="./includes/img/favicon.ico" type="image/x-icon" />
        <title>Meu Condomínio</title>
        <link rel="stylesheet" href="https://unpkg.com/metismenu/dist/metisMenu.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                            <a href="moradores_cadastro.jsp"><button type="submit" class="btn btn-default"> <i class="fa fa-plus"></i> Nova Unidade</button></a>
                        </div>
                    </div>
                </div>    
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-users"></i> Moradores Cadastrados                      
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover display compact" id="grid">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nome</th>
                                            <th>E-mail</th>
                                            <th>Cpf</th>
                                            <th>Rg</th>
                                            <th>Dt. Nascimento</th>
                                            <th>Telefone</th>
                                            <th>Apartamento</th>
                                            <th>Status</th>
                                            <th>Tipo Morador</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            ListarMoradores database = new ListarMoradores();
                                            database.getConexaoMySQL();
                                            for (Moradores moradores : database.listMoradores()) {
                                        %>
                                        <tr>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getId()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getNome()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getEmail()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getCpf()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getRg()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getDtNascimento()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getTelefone()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getApartamento()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getStatus()%></a></td>
                                            <td class="odd gradeX" align="center"><a><%=moradores.getTipoMorador()%></a></td>
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
        <script src="https://unpkg.com/jquery"></script>
        <script src="https://unpkg.com/metismenu"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
       
        </body>
    <%} else {
    response.sendRedirect("./index.jsp");
    }%>
</html>
