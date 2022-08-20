<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebCientifica.Registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>WebCientifica</title>
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
        <!-- Font Awesome -->
        <link href="assets/js/plugins/all.min.css" rel="stylesheet" />
        <!-- icheck bootstrap -->
        <link href="assets/css/icheck-bootstrap/icheck-bootstrap.min.css" rel="stylesheet" />
        <!-- Theme style -->
        <link href="assets/js/dist/adminlte.min.css" rel="stylesheet" />
    </head>
    <body class="hold-transition login-page">
        <div class="login-box">
            <!-- /.login-logo -->
            <div class="card">
                <br/>
                <img src="assets/img/logo_cientifica.jpg"/>
                <div class="card-body login-card-body">
                    <div class="login-logo">
                        <asp:HyperLink ID="HyperLink1" runat="server"><b>WebCient&iacute;fica</b></asp:HyperLink><br/>
                        <asp:HyperLink ID="HyperLink2" runat="server"><b>Registro de Usuarios</b></asp:HyperLink>
                    </div>
                    <p class="login-box-msg">Complete el siguiente formulario para registrarse</p>

                    <form runat="server">
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TB_nombre" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TB_apellido" runat="server" class="form-control" placeholder="Apellido"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TB_doc" runat="server" class="form-control" placeholder="DNI"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div> 
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TB_usuario" runat="server" class="form-control" placeholder="Usuario"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TB_pass" type="password" runat="server" class="form-control" placeholder="Contraseña"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TB_pass2" type="password" runat="server" class="form-control" placeholder="Repita la Contraseña"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6"></div>
                            <!-- /.col -->
                            <div class="col-6">
                                <asp:Button ID="btn_enviar" OnClick="Btn_enviar_click" runat="server" Text="Enviar" class="btn btn-primary btn-block" />
                            </div>
                            <!-- /.col -->
                        </div>         
                    </form>
                    <p class="mb-0">
                       <label id="LBL_Error" runat="server"></label>
                    </p>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="assets/js/plugins/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="assets/js/plugins/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="assets/js/dist/adminlte.min.js"></script>
    </body>
</html>