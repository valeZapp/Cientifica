<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Caratulas.aspx.cs" Inherits="WebCientifica.Caratulas" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="col-md-3">
            <asp:Button ID="Button_NewCar" runat="server" Text="Nueva Car&aacute;tula" onclick="Button_NewCar_Click" class="btn btn-success btn-block"/>
        </div>
    </div>
    <br/>

    <div class="col-md-12">
        <div class="card card-secondary">
            <div class="card-header">
                <h3 class="card-title">Caratulas registradas en el sistema</h3>
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
                                <th scope="col">Desripci&oacute;n</th>
                                <th>Acciones</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("Nombre") %></td>
                            <td><asp:ImageButton Id="Img_editar" runat="server" ImageUrl="assets/img/editar.jpg" width="20" height="20" title="Editar Perito"/>&nbsp;&nbsp;
                                <asp:ImageButton Id="Img_eliminar" runat="server" ImageUrl="assets/img/eliminar.jpg" width="20" height="20" title="Eliminar Perito"/></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div><br/>
</asp:Content>