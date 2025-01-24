using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace fooddatadisplay
{
    public partial class fooddata : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optionally load previously saved data
                txtph.Text = Session["ph"] != null ? Session["ph"].ToString() : "";
                txttemp.Text = Session["temp"] != null ? Session["temp"].ToString() : "";
                txtgas.Text = Session["gas"] != null ? Session["gas"].ToString() : "";
                txtturbidity.Text = Session["turbidity"] != null ? Session["turbidity"].ToString() : "";
            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            // Connection string (ensure it is correctly formatted)
            string connectionString = @"Data Source=DESKTOP-3ATPPP8\SQLEXPRESS2012;Initial Catalog=foodsample;Persist Security Info=True;User ID=sa;Password=^lLoyyd567@";

            // Define your SQL query with parameters
            string query = @"INSERT INTO [dbo].[fooddata]
                 ([ph], [temperature], [gas], [Turbidity])
                 VALUES (@ph, @temperature, @gas, @turbidity)";

            // Create and open the connection
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Add parameters with type conversion where necessary
                    cmd.Parameters.AddWithValue("@ph", txtph.Text); // Assuming ph is varchar or string in the database
                    cmd.Parameters.AddWithValue("@temperature", Convert.ToInt32(txttemp.Text)); // Convert string to int
                    cmd.Parameters.AddWithValue("@gas", Convert.ToInt32(txtgas.Text));         // Convert string to int
                    cmd.Parameters.AddWithValue("@turbidity", Convert.ToInt32(txtturbidity.Text)); // Convert string to int

                    // Open connection
                    con.Open();

                    // Execute query
                    cmd.ExecuteNonQuery();

                    // Close connection
                    con.Close();
                }
            }

            // Inform the user
            Response.Write("<script>alert('Data inserted successfully.');</script>");
        }
    }
}


    