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
            cadenaConn.Password = "1234";

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = cadenaConn.ConnectionString;
            conn.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "GetUsuario";
            command.Parameters.AddWithValue("@NomUsuario", user);
            command.Parameters.AddWithValue("@pass", pass);

            DataSet infoUsuario = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            adapter.Fill(infoUsuario);

            if(infoUsuario.Tables[0].Rows.Count > 0)
            {
                if(infoUsuario.Tables[0].Rows[0]["Nombre"] == user)
                {
                    LBL_Res.Text = "Ingresar";
                }
                else
                {
                    LBL_Res.Text = "Clave incorrecta";
                }
            }
            else {
                LBL_Res.Text = "No existe";
            }
            //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        }
    }
}
/*CREATE PROCEDURE GetUsuario
	-- Add the parameters for the stored procedure here
	@NomUsuario nvarchar(50) 
	, @Clave nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM usuario WHERE UserName=@NomUsuario and Pass=@Clave
END*/