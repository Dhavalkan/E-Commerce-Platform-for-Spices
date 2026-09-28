using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace E_Commerce_Platform_for_Spices
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            string connectionString =
                    "Data Source=(localdb)\\ProjectModels;Initial Catalog=\"E-Commerce Platform For Spices\";Trusted_Connection=True;";


            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT COUNT(*) FROM Users " + "WHERE Email = '" + email + "' " + "AND Password = '" + password + "'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());
            connection.Close();

            if (count > 0)
            {
                Response.Write(
                    "<script>alert('Login Successful!'); window.location='Home.aspx';</script>"
                );
            }
            else
            {
                Response.Write(
                    "<script>alert('Invalid Email or Password!');</script>"
                );
            }
        }
    }
}