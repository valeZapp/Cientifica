﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dependencias_policiales.aspx.cs" Inherits="WebCientifica.Dependencias_policiales" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> <!--class="hold-transition login-page"-->
        <div> <!--class="login-box"-->
             <div> <!--class="card"-->                
                  <br/>
                    <!--center><img src="assets/img/logo_cientifica.jpg" width="80" height="50"/></center-->
                    <form id="form1" runat="server">
                        <div> <!--class="login-box"-->
                            <div> <!--class="login-logo"-->
                                <center><asp:HyperLink ID="HyperLink1" runat="server"><h2>Dependencias de Polic&iacutea Cient&iacutefica</h2></asp:HyperLink></center>
                            </div>
                        
                            <div> <!--class="card"-->
                                <div class="card-body login-card-body">
                                     <p class="login-box-msg">Complete los siguientes datos</p>
                                
                                     <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_nombre" runat="server" type="text" class="form-control" placeholder="Nombre"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_codigo" runat="server" type="text" class="form-control" placeholder="Codigo"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <asp:DropDownList ID="DDL_tipo" runat="server" type="text" class="form-control">
                                            <asp:ListItem>Seleccione tipo</asp:ListItem>
                                            <asp:ListItem>Delegacion</asp:ListItem>
                                            <asp:ListItem>Subdelegacion</asp:ListItem>
                                            <asp:ListItem>Oficina Pericial</asp:ListItem>
                                        </asp:DropDownList>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_direccion" runat="server" type="text" class="form-control" placeholder="Direccion"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_telefono" runat="server" type="text" class="form-control" placeholder="Telefono"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_mail" runat="server" type="text" class="form-control" placeholder="Correo electronico"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_partido" runat="server" type="text" class="form-control" placeholder="Partido"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_localidad" runat="server" type="text" class="form-control" placeholder="Localidad"></asp:TextBox>
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                 <span class="fas fa-envelope"></span>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="input-group mb-3">
                                        <asp:TextBox ID="TB_delegado" runat="server" type="text" class="form-control" placeholder="Apellido y nombre del encargado"></asp:TextBox>
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
                                                <td><asp:ImageButton Id="img_agregar" runat="server" ImageUrl="assets/img/agregar.jpg" width="60" height="45" title="Agregar Dependencia"/></td>
                                                <td><asp:ImageButton Id="img_buscar" runat="server" ImageUrl="assets/img/buscar.jpg" width="60" height="45" title="Buscar Dependencia"/></td>
                                                <td><asp:ImageButton Id="img_editar" runat="server" ImageUrl="assets/img/editar.jpg" width="60" height="45" title="Editar Dependencia"/></td>
                                                <td><asp:ImageButton Id="img_eliminar" runat="server" ImageUrl="assets/img/eliminar.jpg" width="60" height="45" title="Eliminar Dependencia"/><td>
                                                </tr>
                                            </table>
                                        </div>
                                            
                                    </div><br/>

                                </div>
                            </div>
                        </div>
                        <!--<asp:Label ID="LBL_Res" runat="server" Text="Label"></asp:Label>-->
                    </form>
             </div>
        </div>
        </div>
</asp:Content>