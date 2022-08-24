<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CaratulaNueva.aspx.cs" Inherits="WebCientifica.CaratulaNueva" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="card card-secondary">
            <div class="card-header">
                <h3 class="card-title">Creaci&oacute;n de Car&aacute;tulas</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
            </div>
                
            <div class="card-body">
                <p class="login-box-msg">Complete el nombre de la car&aacute;tula</p>
                    <div class="input-group mb-3">
                        <asp:TextBox ID="TB_nombre" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fa fa-user"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-9"></div>
                        <div class="col-3">
                            <asp:Button ID="Btn_newCar" OnClick="Btn_newCar_Click" runat="server" Text="Enviar" class="btn btn-success btn-block" />
                        </div>
                    </div>         
  
                <div class="input-group mb-3">
                    <asp:Label ID="LBL_Res" runat="server" Text=" " style="color: red;"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>