<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Partes.aspx.cs" Inherits="WebCientifica.Partes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="col-md-3">
            <asp:Button ID="Button_NewParte" runat="server" Text="Cargar Nuevo Parte" onclick="Button_NewParte_Click" class="btn btn-success btn-block"/>
        </div>
    </div>
    <br/>

    <div class="col-md-12">
        <div class="card card-secondary">
            <div class="card-header">
                <h3 class="card-title">Partes Urgentes cargados en el sistema</h3>
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
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("DCO") %></td>
                            <td><%#Eval("Anio") %></td>
                            <td><%#Eval("JefeTurno") %></td>
                            <td><%#Eval("Fecha") %></td>
                            <td><%#Eval("Comunicador") %></td>
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
