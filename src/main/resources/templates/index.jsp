<jsp:page contentType="text/html" pageEncoding="UTF-8" session="false"></jsp:page>
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
        <link rel="stylesheet" href="https://unpkg.com/metismenu/dist/metisMenu.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                        <form role="form" action="#" th:action="@{'/login'}" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" id="email" name="email" type="text autofocus">
                                           </div>
                                           <div class="form-group">
                                           <input class="form-control" placeholder="Senha" id="senha" name="senha" type="password">
                                </div>
                                <div class="form-group">
                                    <p class="text-center">
                                        <a data-toggle="modal" href="#solicitarAcesso"><font class="simplonRegularPreto12"><u>Solicitar acesso</u></font></a>
                                        
                                        <a data-toggle="modal" href="#recuperarSenha"><font class="simplonRegularPreto12"><u>Recuperar Senha</u></font></a>
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
                        <br>
                        <h4 class="modal-title text-center" id="myModalLabel">
                            Solicitar Acesso
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="tab-content">
                                    <form action='' name="login" id="login" method="POST" enctype="multipart/form-data" onsubmit="return validarForm();">    
                                        <div class="row">
                                            <div class="col-xs-4 col-md-4 col-lg-4 form-group">
                                                <label>Nome:</label>
                                                <input class="form-control" name="nome" id="nome" type="text" value=""/>
                                            </div>
                                            <div class="col-xs-5 col-md-5 col-lg-5 form-group">
                                                <label>Email</label>
                                                <input class="form-control" name = "email_cad" id="email_cad" type="text" value=""/>
                                            </div>
                                        </div>    
                                        <div class="row">
                                            <div class="col-xs-2 col-md-2 col-lg-2 form-group">
                                                <label>Unidade</label>
                                                <input class="form-control" name="id" id="id" type="text" value=""/>
                                            </div>
                                            <div class="col-xs-2 col-md-2 col-lg-2 form-group">
                                                <label>Celular</label>
                                                <input class="form-control" name="celular" id="celular" type="text" value=""/>
                                            </div>
                                            <div class="col-xs-3 col-md-3 col-lg-3 form-group">
                                                <label>Perfil:</label>
                                                <select name="perfil" id="perfil" class="form-control">
                                                    <option value="">---</option>
                                                    <option value="Morador">Morador</option>
                                                    <option value="Portaria">Portaria</option>
                                                    <option value="Administracao">Administração</option>
                                                </select>
                                            </div>    
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-3 col-md-3 col-lg-3 col-lg-offset-1 form-group">
                                                <label>Senha:</label>
                                                <input type="password" name="senha" class="form-control" id="senha" placeholder="Senha">
                                            </div>

                                            <div class="col-xs-3 col-md-3 col-lg-3 col-lg-offset-1  form-group">
                                                <label>Redigite Senha</label>
                                                <input type="password" name="f19" class="form-control" id="f19" placeholder="Repita a Senha">
                                            </div>
                                        </div>    
                                        <div class="row">
                                            <div class="col-xs-offset-4 col-md-offset-4 col-lg-offset-4 form-group">
                                                <button type="submit" class="btn btn-primary active" id="submit" value="submit">Cadastrar</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div> 
            </div>
        </div>
        <div class="modal fade" id="recuperarSenha" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h5 class="modal-title text-center" id="myModalLabel">
                            Meu Condomínio                            </h5>
                        <br>
                        <h4 class="modal-title text-center" id="myModalLabel">
                            Recuperar Senha
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                            </div>
                        </div> 
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
</html>