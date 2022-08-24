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
    public partial class ParteVer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var DCO = Request.QueryString["id"];

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "GetPU";
            command.Parameters.AddWithValue("@ID", DCO);
            DataSet ds = Conectar(command);

            DataSet infoUsuario = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(infoUsuario);

            rptResult.DataSource = command.ExecuteReader();
            rptResult.DataBind();

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
    }
}