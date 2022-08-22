<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="WebCientifica.Usuarios" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="col-md-3">
            <asp:Button ID="Button_NewUsu" runat="server" Text="Nuevo Usuario" onclick="Button_NewUsu_Click" class="btn btn-success btn-block"/>
        </div>
    </div>
    <br/>

    <div class="col-md-12">
        <div class="card card-secondary">
            <div class="card-header">
                <h3 class="card-title">Usuarios registrados en el sistema</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
            </div>
                
            <div class="card-body">
                <asp:Repeater ID="rptResult" runat="server">
                    <HeaderTemplate>
                        <table class="table">
                            <tr>
                                <th scope="col">Apellido</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Usuario</th>
                                <th scope="col">DNI</th>
                                <th scope="col">Nivel</th>
                                <th scope="col">Acciones</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("Apellido") %></td>
                            <td><%#Eval("Nombre") %></td>
                            <td><%#Eval("UserName") %></td>
                            <td><%#Eval("Doc") %></td>
                            <td><%#Eval("Descripcion") %></td>
                            <td><asp:ImageButton Id="img_editar" runat="server" ImageUrl="assets/img/editar.jpg" width="20" height="20" title="Editar Perito"/>&nbsp;&nbsp;
                                <asp:ImageButton Id="img_eliminar" runat="server" ImageUrl="assets/img/eliminar.jpg" width="20" height="20" title="Eliminar Perito"/></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>