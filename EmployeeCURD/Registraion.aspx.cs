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
    public partial class Registraion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnReg_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("prc_Register_Employe", con);
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@id", txtId.Text);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@email", txtmail.Text);
                cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@uname", txtUname.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPwd.Text);
                cmd.Parameters.AddWithValue("@desg", DropDesi.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@dept", DropDepartment.SelectedItem.Text);
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    lblres.ForeColor = System.Drawing.Color.Green;
                    lblres.Text = "Successful....!";
                }
                else
                {
                    lblres.ForeColor = System.Drawing.Color.Red;
                    lblres.Text = "Oops......!";
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