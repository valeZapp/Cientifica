<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ParteNuevo.aspx.cs" Inherits="WebCientifica.NuevoParte" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="card card-secondary">
            <div class="card-header">
                <h3 class="card-title">Carga de Parte Urgente</h3>
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
            </div>
                
            <div class="card-body">
                <h4>COMUNICACION DEL HECHO</h4><br/>
                <div class="input-group mb-3">
                    <label style="width:200px;">JEFE DE TURNO &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_jefe" runat="server" class="form-control" placeholder="Jefe de Turno"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">FECHA &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_fecha" runat="server" class="form-control" placeholder="Fecha formato 20-08-2022"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-calendar"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">HORA &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_hora" runat="server" class="form-control" placeholder="Hora formato 12:00:00"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="far fa-calendar"></span>
                        </div>
                    </div>
                </div> 
                <div class="input-group mb-3">
                    <label style="width:200px;">COMUNICO &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_comunico" runat="server" class="form-control" placeholder="Comunico"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>

                <div class="input-group mb-3">
                    <label style="width:200px;">DEPARTAMENTAL &nbsp; <label style="color: red;"> *</label></label>
                    <asp:DropDownList ID="ddl_departamental" class="form-control" runat="server"></asp:DropDownList>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-warehouse"></span>
                        </div>
                    </div>
                        
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">COMISARIA &nbsp; <label style="color: red;"> *</label></label>
                    <asp:DropDownList ID="ddl_comisaria" class="form-control" runat="server"></asp:DropDownList>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-warehouse"></span>
                        </div>
                    </div>
                </div>

                <h4>DATOS DEL HECHO</h4><br/>
                <div class="input-group mb-3">
                    <label style="width:200px;">CARATULA &nbsp; <label style="color: red;"> *</label></label>
                    <asp:DropDownList ID="ddl_caratula" class="form-control" runat="server"></asp:DropDownList>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-warehouse"></span>
                        </div>
                    </div>
                        
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">VICTIMA &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_victima" runat="server" class="form-control" placeholder="Victima"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">IMPUTADO &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_imputado" runat="server" class="form-control" placeholder="Imputado"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">SINTESIS &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox id="TA_sintesis" TextMode="multiline" class="form-control" Columns="100" Rows="5" runat="server" />                        
                </div>

                <h4>PERITOS</h4><br/>
                <div class="input-group mb-3">
                    <label style="width:200px;">A CARGO &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_acargo" runat="server" class="form-control" placeholder="Coordinador"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">COORDINADOR &nbsp; <label style="color: red;"> *</label></label>
                    <asp:TextBox ID="TB_coord" runat="server" class="form-control" placeholder="Coordinador"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">FOTOGRAFIA</label>
                    <asp:TextBox ID="TB_foto" runat="server" class="form-control" placeholder="Fotografia"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <label style="width:200px;">MEDICO</label>
                    <asp:TextBox ID="TB_medico" runat="server" class="form-control" placeholder="Medico"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
                </div>
  
                <div class="input-group mb-3">
                    <asp:Label ID="LBL_Res" runat="server" Text="* Campos obligatorios" style="color: red;"></asp:Label>
                </div>
            </div>

            <div class="col-md-12">
                <div class="col-md-3">
                    <asp:Button ID="Button_NewParte" runat="server" Text="Guardar" onclick="Button_NewParte_Click" class="btn btn-success btn-block"/>
                </div><br/>
            </div>
        </div>
    </div><br/>
</asp:Content>