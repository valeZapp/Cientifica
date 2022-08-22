<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Caratulas.aspx.cs" Inherits="WebCientifica.Caratulas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> <!--class="hold-transition login-page"-->
        <div> <!--class="login-box"-->
             <div> <!--class="card"-->                
                  <br/>
                    <!--center><img src="assets/img/logo_cientifica.jpg" width="80" height="50"/></center-->
                    
                        <div> <!--class="login-box"-->
                            <div> <!--class="login-logo"-->
                                <center><asp:HyperLink ID="HyperLink1" runat="server"><h2>Car&aacute;tula del hecho</h2></asp:HyperLink></center>
                            </div>

                            <div> <!--class="card"-->
                                <div class="card-body login-card-body">
                                     <p class="login-box-msg">Complete los siguientes datos</p>
                                     <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_delito" runat="server" type="text" class="form-control" placeholder="Delito"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                                                                                        
                                    <div class="row">
                                        <div class="col-4">
                                             <!--<div class="icheck-primary">
                                                 <input type="checkbox" id="remember" />
                                                <label for="remember">Remember Me</label>
                                            </div>-->
                                        </div>
                                        
                                        <div class="col-4">
                                            <table width="100%" cellpadding="20">
                                                <tr>
                                                <td><asp:ImageButton Id="img_agregar" runat="server" ImageUrl="assets/img/agregar.jpg" width="60" height="45" title="Agregar Delito"/></td>
                                                <td><asp:ImageButton Id="img_buscar" runat="server" ImageUrl="assets/img/buscar.jpg" width="60" height="45" title="Buscar Delito"/></td>
                                                <td><asp:ImageButton Id="img_editar" runat="server" ImageUrl="assets/img/editar.jpg" width="60" height="45" title="Editar Delito"/></td>
                                                <td><asp:ImageButton Id="img_eliminar" runat="server" ImageUrl="assets/img/eliminar.jpg" width="60" height="45" title="Eliminar Delito"/><td>
                                                </tr>
                                            </table>
                                        </div>
                                            
                                    </div><br/>

                                </div>
                            </div>
                        </div>
                        <!--<asp:Label ID="LBL_Res" runat="server" Text="Label"></asp:Label>-->
                   
             </div>
        </div>
        </div>
</asp:Content>