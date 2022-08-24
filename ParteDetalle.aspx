<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ParteDetalle.aspx.cs" Inherits="WebCientifica.ParteVer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="card card-secondary">            
               
           <div class="card-body">
                <h4 style="text-align: center;">SUPERINTENDENCIA DE POLICIA CIENTIFICA</h4><br/>
                <asp:Repeater ID="rptResult" runat="server">
                    <HeaderTemplate>
                        <table class="table" style="font-size: 14px;">
                            
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr><th scope="col">DELEGACION</th><th>DDPC AZUL</th></tr>
                            <tr><th scope="col">SUBDELEGACION/OFICINA</th><th>SUBDELEGACION POL.CIENT.OLAVARRIA</th></tr>
                            <tr><th scope="col">N° DCO</th><th><%#Eval("DCO") %>/<%#Eval("Anio") %></th></tr>
                            <tr><th scope="col">FECHA</th><th><%#Eval("Fecha") %></th></tr>
                            <tr><th scope="col">HORA</th><th><%#Eval("Hora") %></th></tr>
                            <tr><th scope="col">CARATULA</th><th><%#Eval("Car") %></th></tr>
                            <tr><th>&nbsp;</th><th>&nbsp;</th></tr>
                            
                            <tr style="background-color: #cccccc;"><th colspan="2">PERITOS</th></tr>
                            <tr><th scope="col">A CARGO</th><th><%#Eval("aCargo") %></th></tr>
                            <tr><th scope="col">COORDINADOR</th><th><%#Eval("Coordinador") %></th></tr>
                            <tr><th scope="col">FOTOGRAFIA</th><th><%#Eval("Fotografia") %></th></tr>
                            <tr><th scope="col">RASTROS</th><th><%#Eval("Rastros") %></th></tr>
                            <tr><th scope="col">PLANIMETRIA</th><th><%#Eval("PLanimetria") %></th></tr>
                            <tr><th scope="col">MEDICO</th><th><%#Eval("Medico") %></th></tr>
                            <tr><th>&nbsp;</th><th>&nbsp;</th></tr>
                            
                            <tr style="background-color: #cccccc;"><th colspan="2">SINTESIS DEL HECHO</th></tr>
                            <tr><th scope="col" colspan="2"><%#Eval("Sintesis") %></th></tr>
                            <tr><th>&nbsp;</th><th>&nbsp;</th></tr>

                            <tr style="background-color: #cccccc;"><th colspan="2">LABOR PERICIAL DESARROLLADA</th></tr>
                            <tr><th colspan="2">FOTOGRAFIA: se procede a la toma de fotografías digitales de lo general a lo particular y al detalle de los daños observados.</th></tr>
                            <tr><th colspan="2">RASTROS: se procede a realizar inspección ocular sobre los vehículos involucrados. De la inspección ocular realizada no surgieron evidencias o indicios a incautar.</th></tr>
                            <tr><th colspan="2">PLANIMETRIA: NO.</th></tr>
                            <tr><th colspan="2">BALISTICA: NO.</th></tr>
                            <tr><th colspan="2">QUIMICA: NO.</th></tr>
                            <tr><th colspan="2">MEDICO: NO.</th></tr>                            
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

                
            </div>
        </div>
    </div><br/>
</asp:Content>