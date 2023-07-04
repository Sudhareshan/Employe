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
    public partial class Delete_Employ : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("proc_Delete_Employe", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", txtId.Text);
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i == 1)
                {
                    lblres.ForeColor = System.Drawing.Color.Green;
                    lblres.Text = "Successfull";
                }
                else
                {
                    lblres.ForeColor = System.Drawing.Color.Green;
                    lblres.Text = "Something went wrong";
                }


            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}