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
    public partial class CaratulaNueva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void Btn_newCar_Click(object sender, EventArgs e)
        {
            string nombre = TB_nombre.Text;
 
            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "InsertCaratula";
            command.Parameters.AddWithValue("@Nombre", nombre);
            DataSet ds = Conectar(command);

            DataSet infoUsuario = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(infoUsuario);

            Response.Redirect("Caratulas.aspx");
        }
    }
}