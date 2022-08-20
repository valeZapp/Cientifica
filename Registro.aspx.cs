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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = "GetDependencia";
            DataSet ds = conectar(comando);

            Fill(ddl_dependencia, ds, "Id", "Descripcion", 0, true);*/

        }

        private void Fill(ListControl listControl, DataSet ds, string valueMember, string displayMember, int table, bool mostrarSeleccione)
        {
            listControl.DataSource = ds.Tables[table].DefaultView;
            listControl.DataTextField = displayMember;
            listControl.DataValueField = valueMember;
            listControl.DataBind();
            if (mostrarSeleccione.Equals(true))
            {
                listControl.Items.Insert(0, new ListItem("Seleccione..", "-1"));
            }
        }
        private DataSet conectar(SqlCommand comando)
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
        protected void Btn_enviar_click(object sender, EventArgs e)
        {
            string user = TB_usuario.Text;
            string pass = TB_pass.Text;
            string nombre = TB_nombre.Text;
            string apellido = TB_apellido.Text;
            string dni = TB_doc.Text;

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
            command.CommandText = "InsertUsuario";
            command.Parameters.AddWithValue("@NomUsuario", user);
            command.Parameters.AddWithValue("@Clave", pass);
            command.Parameters.AddWithValue("@Nombre", nombre);
            command.Parameters.AddWithValue("@Apellido", apellido);
            command.Parameters.AddWithValue("@Doc", dni);
            //            Response.Redirect("Index.aspx");
        }
    }

}