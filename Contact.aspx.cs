using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Platform_for_Spices
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        // =====================================================
        // MESSAGE VALIDATION
        // =====================================================

        protected void cvMessage_ServerValidate(
            object source,
            ServerValidateEventArgs args)
        {
            string message = args.Value.Trim();

            if (message.Length >= 10 && message.Length <= 500)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }


        // =====================================================
        // SEND MESSAGE
        // =====================================================

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            // Check all ASP.NET validations first

            if (!Page.IsValid)
            {
                return;
            }


            // Get values

            string email = txtContactEmail.Text.Trim();

            string inquiryType = ddlInquiryType.SelectedValue;

            string message = txtMessage.Text.Trim();


            // =====================================================
            // DATABASE CONNECTION
            // =====================================================

            string connectionString =
                "Data Source=(localdb)\\ProjectModels;" +
                "Initial Catalog=UserManagement;" +
                "Trusted_Connection=True;";


            // =====================================================
            // CHECK EMAIL IN USERS TABLE
            // =====================================================

            using (SqlConnection connection =
                   new SqlConnection(connectionString))
            {
                string query =
                    "SELECT COUNT(*) " +
                    "FROM Users " +
                    "WHERE Email = @Email";


                using (SqlCommand command =
                       new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue(
                        "@Email",
                        email
                    );


                    connection.Open();


                    int emailExists =
                        Convert.ToInt32(
                            command.ExecuteScalar()
                        );


                    connection.Close();


                    // =====================================================
                    // EMAIL DOES NOT EXIST
                    // =====================================================

                    if (emailExists == 0)
                    {
                        Response.Write(
                            "<script>" +
                            "alert('This email is not registered. Please use your registered email address.');" +
                            "</script>"
                        );

                        return;
                    }
                }
            }


            // =====================================================
            // EMAIL EXISTS
            // =====================================================

            Response.Write(
                "<script>" +
                "alert('Email verified! Your inquiry has been sent successfully.');" +
                "window.location='Contact.aspx';" +
                "</script>"
            );
        }
    }
}