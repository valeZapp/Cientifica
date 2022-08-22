<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebCientifica.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>WebCientifica</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
        <link href="assets/js/plugins/all.min.css" rel="stylesheet" />
        <link href="assets/css/icheck-bootstrap/icheck-bootstrap.min.css" rel="stylesheet" />
        <link href="assets/js/dist/adminlte.min.css" rel="stylesheet" />
    </head>
    <body class="hold-transition login-page">
        <div class="login-box">
             <div class="card">                
                  <br/>
                    <img src="assets/img/logo_cientifica.jpg"/>
                    <form id="form1" runat="server">
                        <div class="login-box">
                            <div class="login-logo">
                                <asp:HyperLink ID="HyperLink1" runat="server"><b>WebCient&iacute;fica</b></asp:HyperLink><br/>
                                <asp:HyperLink ID="HyperLink2" runat="server"><b>Partes Urgentes</b></asp:HyperLink>
                            </div>

                            <div class="card">
                                <div class="card-body login-card-body">
                                     <p class="login-box-msg">Complete los siguientes datos para ingresar al sistema</p>
                                     <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_usuario" runat="server" Text="" type="text" class="form-control" placeholder="Usuario"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_pass" runat="server" type="password" class="form-control" placeholder="Contrase&ntilde;a"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                <asp:Panel ID="Panel1" runat="server" class="fas fa-lock"></asp:Panel>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="input-group mb-3">
                                        <asp:Label ID="LBL_Res" runat="server" Text=" " style="color: red;"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                        </div>
                                        <div class="col-4">
                                            <asp:Button ID="Button_Login" runat="server" Text="Ingresar" onclick="Button_Login_Click" class="btn btn-primary btn-block"/>
                                        </div>
                                    </div><br/>
                        
                                    <!--<p class="mb-1">
                                        <a href="forgot-password.html">Olvid&eacute; mi contrase&ntilde;a</a>
                                    </p>-->
                                    <p class="mb-0">
                                        <a href="Registro.aspx" class="text-center">Registrarme</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </form>
             </div>
        </div>

        <script src="assets/js/plugins/jquery.min.js"></script>
        <script src="assets/js/plugins/bootstrap.bundle.min.js"></script>
        <script src="assets/js/dist/adminlte.min.js"></script>
    </body>
</html>