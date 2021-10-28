<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebCientifica.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
        <!-- Font Awesome -->
        <link href="js/plugins/all.min.css" rel="stylesheet" />
        <!-- icheck bootstrap -->
        <link href="js/plugins/icheck-bootstrap.min.css" rel="stylesheet" />
        <!-- Theme style -->
        <link rel="stylesheet" href="js/dist/adminlte.min.css" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="login-box">
                <div class="login-logo">
                    <asp:HyperLink ID="HyperLink1" runat="server"><b>Admin</b>LTE</asp:HyperLink>
                </div>

                <div class="card">
                    <div class="card-body login-card-body">
                         <p class="login-box-msg">Complete los siguientes datos para ingresar</p>
                         <div class="input-group mb-3">
                             <asp:TextBox ID="TextBox1" runat="server" type="email" class="form-control" placeholder="Email"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                     <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control" placeholder="Password"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <asp:Panel ID="Panel1" runat="server" class="fas fa-lock"></asp:Panel>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                 <div class="icheck-primary">
                                     <input type="checkbox" id="remember" />
                                    <label for="remember">Remember Me</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                            </div>
                        </div>
                        
                        <p class="mb-1">
                            <a href="forgot-password.html">I forgot my password</a>
                        </p>
                        <p class="mb-0">
                            <a href="register.html" class="text-center">Register a new membership</a>
                        </p>
                    </div>
                </div>
            </div>
        </form>
        <!-- jQuery -->
        <script src="js/plugins/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="js/plugins/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="js/dist/adminlte.min.js"></script>
    </body>
</html>