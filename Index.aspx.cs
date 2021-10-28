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
            SqlConnectionStringBuilder bil = new SqlConnectionStringBuilder();
            bil.InitialCatalog = "CIENTIFICA";
            bil.DataSource = "DESKTOP-18QTRGI";
            bil.UserID = "sa";
            bil.Password = "1234";

            SqlConnection conn = new SqlConnection(bil.ConnectionString);
            conn.Open();

            DataSet ds = new DataSet();
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "";
            command.Parameters.AddWithValue("Nombre", "Juan");
            command.Parameters.AddWithValue("Dni", "1234");
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(ds);

            //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
         

        }
    }
}