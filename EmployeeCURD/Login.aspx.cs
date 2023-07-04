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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string username = txtuname.Text;
                string pwd = txtpwd.Text;
                string prc_login = "prc_Login_Employe";
                SqlCommand cmd = new SqlCommand(prc_login, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@pwd", pwd);
                SqlDataReader dr = cmd.ExecuteReader();
                // int i = Convert.ToInt32(cmd.ExecuteScalar());

                if (dr.Read())
                {
                    Session["Id"] = dr["name"].ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblres.ForeColor = System.Drawing.Color.Red;
                    lblres.Text = "Check Credencials";
                }

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
                txtuname.Text = "";
                txtpwd.Text = "";
                txtuname.Focus();
            }
        }
    }
}