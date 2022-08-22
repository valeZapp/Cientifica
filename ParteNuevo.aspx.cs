using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebCientifica
{
    public partial class NuevoParte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "GetDepartamentales";
            DataSet ds = Conectar(comando);

            Fill(ddl_departamental, ds, "DependenciaId", "Nombre", 0, true);

            SqlCommand comando2 = new SqlCommand();
            comando2.CommandType = System.Data.CommandType.StoredProcedure;
            comando2.CommandText = "GetComisarias";
            DataSet ds2 = Conectar(comando2);

            Fill(ddl_comisaria, ds2, "DependenciaId", "Nombre", 0, true);

            SqlCommand comando3 = new SqlCommand();
            comando3.CommandType = System.Data.CommandType.StoredProcedure;
            comando3.CommandText = "GetCaratulas";
            DataSet ds3 = Conectar(comando3);

            Fill(ddl_caratula, ds3, "CaratulaID", "Nombre", 0, true);
        }
        private DataSet Conectar(SqlCommand comando)
        {
            SqlConnectionStringBuilder cadenaConexion = new SqlConnectionStringBuilder();
            cadenaConexion.DataSource = "DESKTOP-18QTRGI";
            cadenaConexion.InitialCatalog = "CIENTIFICA";
            cadenaConexion.UserID = "sa";
            cadenaConexion.Password = "sql";

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = cadenaConexion.ConnectionString;
            conn.Open();

            comando.Connection = conn;

            DataSet ds = new DataSet();
            SqlDataAdapter cargador = new SqlDataAdapter();
            cargador.SelectCommand = comando;
            cargador.Fill(ds);
            return ds;
        }
        private void Fill(ListControl listControl, DataSet ds, string valueMember, string displayMember, int table, bool mostrarSeleccione)
        {
            listControl.DataSource = ds.Tables[table].DefaultView;
            listControl.DataTextField = displayMember;
            listControl.DataValueField = valueMember;
            listControl.DataBind();
            if (mostrarSeleccione.Equals(true))
            {
                listControl.Items.Insert(0, new ListItem("Seleccione un registro", "-1"));
            }
        }
        protected void Button_NewParte_Click(object sender, EventArgs e)
        {
            string jefe = TB_jefe.Text;
            string fecha = TB_fecha.Text;
            string hora = TB_hora.Text;
            string comunico = TB_comunico.Text;
            string dep = ddl_departamental.SelectedValue;
            string cria = ddl_comisaria.SelectedValue;
            string caratula = ddl_caratula.SelectedValue;
            string victima = TB_victima.Text;
            string imputado = TB_imputado.Text;
            string sintesis = TA_sintesis.Text;

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "InsertParte";
            command.Parameters.AddWithValue("@JefeTurno", jefe);
            command.Parameters.AddWithValue("@Fecha", fecha);
            command.Parameters.AddWithValue("@Hora", hora);
            command.Parameters.AddWithValue("@Comunicador", comunico);
            command.Parameters.AddWithValue("@Departamental", dep);
            command.Parameters.AddWithValue("@Comisaria", cria);
            command.Parameters.AddWithValue("@UsuarioID", 8);
            DataSet ds = Conectar(command);

            DataSet infoUsuario = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(infoUsuario);

            /*SqlCommand commandID = new SqlCommand();
            commandID.CommandType = System.Data.CommandType.StoredProcedure;
            commandID.CommandText = "GetParteID";
            DataSet dsID = Conectar(commandID);

            DataSet infoID = new DataSet();
            SqlDataAdapter adapterID = new SqlDataAdapter();
            adapterID.SelectCommand = commandID;
            adapterID.Fill(infoID);*/

            SqlCommand command2 = new SqlCommand();
            command2.CommandType = System.Data.CommandType.StoredProcedure;
            command2.CommandText = "InsertHecho";
            command2.Parameters.AddWithValue("@CaratulaID", caratula);
            command2.Parameters.AddWithValue("@Victima", victima);
            command2.Parameters.AddWithValue("@Imputado", imputado);
            command2.Parameters.AddWithValue("@Sintesis", sintesis);
            command2.Parameters.AddWithValue("@ComunicacionID", 6);
            command2.Parameters.AddWithValue("@LocalidadID", 63);
            command2.Parameters.AddWithValue("@PartidoID", 63);
            DataSet ds2 = Conectar(command2);

            DataSet infoUsuario2 = new DataSet();
            SqlDataAdapter adapter2 = new SqlDataAdapter();
            adapter2.SelectCommand = command2;
            adapter2.Fill(infoUsuario2);

            Response.Redirect("Partes.aspx");
        }
    }
}