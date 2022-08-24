<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Partes.aspx.cs" Inherits="WebCientifica.Partes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        <table class="table" style="font-size: 14px;">
                            <tr>
                                <th scope="col">DCO</th>
                                <th scope="col">Jefe_Turno</th>
                                <th scope="col">Fecha_Hecho</th>
                                <th scope="col">Hora</th>
                                <th scope="col">Comunic&oacute;</th>
                                <th scope="col">Departamental</th>
                                <th scope="col">Comisar&iacute;a</th>
                                <th scope="col">Car&aacute;tula</th>
                                <th scope="col">V&iacute;ctima</th>
                                <th scope="col">Imputado</th>
                                <th scope="col">Ver</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ComunicacionID") %></td>
                            <td><%#Eval("JefeTurno") %></td>
                            <td><%#Eval("Fecha") %></td>
                            <td><%#Eval("Hora") %></td>
                            <td><%#Eval("Comunicador") %></td>
                            <td><%#Eval("Dep") %></td>
                            <td><%#Eval("Cria") %></td>
                            <td><%#Eval("Nombre") %></td>
                            <td><%#Eval("Victima") %></td>
                            <td><%#Eval("Imputado") %></td>
                            <td><a href="ParteDetalle.aspx?id=<%#Eval("ComunicacionID") %>"><i class="fa fa-search"></i></a></td>
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
