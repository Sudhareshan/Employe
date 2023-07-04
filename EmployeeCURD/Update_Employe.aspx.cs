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
    public partial class Update_Employe : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["Id"] != null)
                    {

                        string name = Session["Id"].ToString();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("proc_Search_Employe", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@id", name);
                        SqlDataReader da = cmd.ExecuteReader();

                        txtname.Text = name;
                        if (da.Read())
                        {
                            txtId.Text = da["empid"].ToString();
                            txtmail.Text = da["Email"].ToString();
                            txtmobile.Text = da["mobile"].ToString();
                            txtUname.Text = da["username"].ToString();
                            txtPwd.Text = da["pwd"].ToString();
                            DropDesi.SelectedItem.Text = da["Degination"].ToString();
                            DropDepartment.SelectedItem.Text = da["department"].ToString();
                            txtname.ReadOnly = false;

                        }

                    }

                    con.Close();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);
                }
            }
           
            

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            try
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("prc_Update_Employe", con);
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
                con.Close();
                if (i == 1)
                {
                    lblres.ForeColor = System.Drawing.Color.Green;
                    lblres.Text = "Record Updated";
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