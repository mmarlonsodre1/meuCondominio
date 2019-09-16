<%@page import="br.com.Unidades.Unidades"%>
<%@page import="br.com.Unidades.ListarUnidades"%>
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
        <link rel="shortcut icon" href="../includes/img/favicon.ico" type="image/x-icon" />
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
                <div class="panel panel-default">
                    <div class="panel-heading"><i class="fa fa-car"></i> Cadastro de Veículos </div>
                    <div class="panel-body">
                        <div class="row">
                            <form class="form" action="../AddVeiculos" name="formulario" method="POST" id="formulario"> 
                                <div class="col-xs-12 col-lg-12">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <label for="placa">Placa</label>
                                                <input name="placa" id="placa" class="form-control" placeholder="Placa" value="">
                                            </div>   
                                            <div class="form-group col-xs-2 col-lg-2">
                                                <label class="control-label" for="marca">Marca</label>
                                                <select class="form-control" name="marca" id="marca">
                                                    <option value="">---</option>
                                                    <option value="Audi">Audi</option>
                                                    <option value="BMW">BMW</option>
                                                    <option value="CAOA Chery">CAOA Chery</option>
                                                    <option value="Chevrolet">Chevrolet</option>
                                                    <option value="Citroën">Citroën</option>
                                                    <option value="Fiat">Fiat</option>
                                                    <option value="Ford">Ford</option>
                                                    <option value="Honda">Honda</option>
                                                    <option value="Hyundai">Hyundai</option>
                                                    <option value="Iveco">Iveco</option>
                                                    <option value="JAC">JAC</option>
                                                    <option value="Jeep">Jeep</option>
                                                    <option value="Kia">Kia</option>
                                                    <option value="Land Rover">Land Rover</option>
                                                    <option value="Lifan">Lifan</option>
                                                    <option value="Mercedes-Benz">Mercedes-Benz</option>
                                                    <option value="Mitsubishi">Mitsubishi</option>
                                                    <option value="Nissan">Nissan</option>
                                                    <option value="Peugeot">Peugeot</option>
                                                    <option value="Renault">Renault</option>
                                                    <option value="Suzuki">Suzuki</option>
                                                    <option value="Toyota">Toyota</option>
                                                    <option value="Volkswagen">Volkswagen</option>
                                                </select>
                                            </div> 
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <label for="modelo">Modelo</label>
                                                <input name="modelo" id="modelo" class="form-control" placeholder="Modelo" value="">
                                            </div>
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <label for="ano">Ano</label>
                                                <input name="ano" id="ano" class="form-control" placeholder="Ano" value="" type="number">
                                            </div>
                                            <div class="form-group col-xs-2 col-md-2 col-lg-2">
                                                <label for="cor">Cor</label>
                                                <input name="cor" id="cor" class="form-control" placeholder="Cor" value="">
                                            </div>
                                            <div class="form-group col-xs-2 col-lg-2">
                                                <label class="control-label" for="unidade">Unidade</label>
                                                <select name="unidade" id="id_apartamento" class="form-control">
                                                    <%
                                                        ListarUnidades database1 = new ListarUnidades();
                                                        database1.getConexaoMySQL();
                                                        for (Unidades unidades : database1.listUnidades()) {
                                                    %>
                                                    <option value="<%=unidades.getId()%>"><%=unidades.getCasa()%></option>
                                                    <%}%>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- FIM LINHA -->
                                        <div class="row">
                                            <div class="form-group col-xs-3 col-lg-3">
                                                <button type="submit" id="submit" value="submit" class="btn btn-primary"> <i class="glyphicon glyphicon-ok"></i> Salvar</button>
                                            </div>                                   
                                        </div>    
                                    </div> <!-- DIV FORM GROUP-->
                                </div>  
                            </form> 
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
    response.sendRedirect("../index.jsp");
    }%>
</html>