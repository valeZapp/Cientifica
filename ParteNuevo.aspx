<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParteNuevo.aspx.cs" Inherits="WebCientifica.NuevoParte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <asp:ListView runat="server" ID="TableListView" 
                          ItemPlaceholderID="itemPlaceHolder" 
                          OnItemDataBound="MyListView_ItemDataBound">
                <%--Plantilla de diseño de la tabla Html--%>
                <LayoutTemplate>
                    <table id="ListViewTable" class="table table-bordered">
                        <%--Cabecera de la tabla Html--%>
                        <thead>
                            <tr>
                                <th scope="col">Contact name</th>
                                <th scope="col">Company name</th>
                                <th scope="col">Email</th>
                            </tr>
                        </thead>
                        <%--Cuerpo de la tabla Html--%>
                        <tbody>
                            <%--Control de servidor PlaceHolder, elemento que
                            contendrá la plantilla <ItemTemplate>--%>
                            <asp:PlaceHolder runat="server" id="itemPlaceHolder">
                            </asp:PlaceHolder>
                        </tbody>
                    </table>
                </LayoutTemplate>
                <%--Plantilla de los elementos dinámicos de la tabla Html
                filas y columnas--%>
                <ItemTemplate>
                    <tr>                                
                        <td runat="server" id="ContactName"></td>
                        <td runat="server" id="CompanyName"></td>
                        <td runat="server" id="Email"></td>
                    </tr>
                </ItemTemplate>            

            </asp:ListView>
</body>
</html>
