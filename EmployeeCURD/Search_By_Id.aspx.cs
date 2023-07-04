using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeeCURD
{
    public partial class Search_By_Id : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("proc_Search_Employe", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", txtId.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridSearch.DataSource = dt;
                GridSearch.DataBind();
                con.Close();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}