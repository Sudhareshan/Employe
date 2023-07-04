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
    public partial class Diplay_Employ : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        public void Display()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("proc_Display_Employe", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Grid_Employe.DataSource = dt;
                Grid_Employe.DataBind();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }
        }
    }
}