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

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            string user = TB_usuario.Text;
            string pass = TB_pass.Text;

            SqlConnectionStringBuilder cadenaConn = new SqlConnectionStringBuilder();
            cadenaConn.DataSource = "DESKTOP-18QTRGI";
            cadenaConn.InitialCatalog = "CIENTIFICA";
            cadenaConn.UserID = "sa";
            cadenaConn.Password = "sql";

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = cadenaConn.ConnectionString;
            conn.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "GetUsuario";
            command.Parameters.AddWithValue("@NomUsuario", user);
            command.Parameters.AddWithValue("@Clave", pass);

            DataSet infoUsuario = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(infoUsuario);
            
            if (infoUsuario.Tables[0].Rows.Count > 0)
            {
                Session.Add("NomUsuario", infoUsuario);
                Response.Redirect("Inicio.aspx");               
            }            
        }
    }
}