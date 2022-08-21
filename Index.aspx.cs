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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LBL_Res.Text = "";
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
        protected void Button_Login_Click(object sender, EventArgs e)
        {
            string user = TB_usuario.Text;
            string pass = TB_pass.Text;

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "GetUsuario";
            command.Parameters.AddWithValue("@NomUsuario", user);
            command.Parameters.AddWithValue("@Clave", pass);
            DataSet ds = Conectar(command);

            DataSet infoUsuario = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(infoUsuario);

            if (infoUsuario.Tables[0].Rows.Count > 0)
            {

                Session.Add("NomUsuario", infoUsuario);
                Response.Redirect("Inicio.aspx");
            }
            else 
            {
                LBL_Res.Text = "Usuario o contraseña incorrectos";
            }
        }
    }
}