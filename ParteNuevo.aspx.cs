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

            Fill(ddl_departamental, ds, "DependenciaID", "Nombre", 0, true);

            SqlCommand comando2 = new SqlCommand();
            comando2.CommandType = System.Data.CommandType.StoredProcedure;
            comando2.CommandText = "GetComisarias";
            DataSet ds2 = Conectar(comando2);

            Fill(ddl_comisaria, ds2, "DependenciaID", "Nombre", 0, true);

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
            /*DataSet dsUsuario = (DataSet)Session["usuario"];
            int idDep = int.Parse(dsUsuario.Tables[0].Rows[0]["IdDependencia"].ToString());*/

            string jefe = TB_jefe.Text;
            DateTime fecha = DateTime.Parse(TB_fecha.Text);
            string hora = TB_hora.Text;
            string comunico = TB_comunico.Text;
            int dep = int.Parse(ddl_departamental.SelectedItem.Value.ToString());
            int cria = int.Parse(ddl_comisaria.SelectedItem.Value.ToString());
            int caratula = int.Parse(ddl_caratula.SelectedItem.Value.ToString());
            string victima = TB_victima.Text;
            string imputado = TB_imputado.Text;
            string sintesis = TA_sintesis.Text;
            string acargo = TB_acargo.Text;
            string coord = TB_coord.Text;
            string foto = TB_foto.Text;
            string medico = TB_medico.Text;

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "InsertParte";
            command.Parameters.AddWithValue("@JefeTurno", jefe);
            command.Parameters.AddWithValue("@Fecha", fecha);
            command.Parameters.AddWithValue("@Hora", hora);
            command.Parameters.AddWithValue("@Comunicador", comunico);
            command.Parameters.AddWithValue("@Departamental", 12);
            command.Parameters.AddWithValue("@Comisaria", 1);
            command.Parameters.AddWithValue("@UsuarioID", 8);
            DataSet ds = Conectar(command);

            SqlCommand command2 = new SqlCommand();
            command2.CommandType = System.Data.CommandType.StoredProcedure;
            command2.CommandText = "InsertHecho";
            command2.Parameters.AddWithValue("@CaratulaID", 5);
            command2.Parameters.AddWithValue("@Victima", victima);
            command2.Parameters.AddWithValue("@Imputado", imputado);
            command2.Parameters.AddWithValue("@Sintesis", sintesis);
            command2.Parameters.AddWithValue("@LocalidadID", 63);
            command2.Parameters.AddWithValue("@PartidoID", 63);
            DataSet ds2 = Conectar(command2);

            SqlCommand command3 = new SqlCommand();
            command3.CommandType = System.Data.CommandType.StoredProcedure;
            command3.CommandText = "InsertPeritos";
            command3.Parameters.AddWithValue("@Acargo", acargo);
            command3.Parameters.AddWithValue("@Coord", coord);
            command3.Parameters.AddWithValue("@Fotos", foto);
            command3.Parameters.AddWithValue("@Rastros", medico);
            command3.Parameters.AddWithValue("@Plan", acargo);
            command3.Parameters.AddWithValue("@Medico", acargo);
            command3.Parameters.AddWithValue("@Balistica", coord);
            command3.Parameters.AddWithValue("@Quimica", acargo);
            command3.Parameters.AddWithValue("@Dibujo", acargo);
            command3.Parameters.AddWithValue("@Acciden", medico);
            command3.Parameters.AddWithValue("@Morgue", medico);
            DataSet ds3 = Conectar(command3);

            Response.Redirect("Partes.aspx");
        }
    }
}