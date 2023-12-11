using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Warehouse
{
    public partial class Client : Form
    {
        MySqlConnection connection;
        private int orderid;
        public double Total { get; private set; }

        // Constructor that takes the total as a parameter
        public Client(double total)
        {
            InitializeComponent();
            connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=''");
            Total = total; // Set the total property
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();

                // Insert a new order with the provided client information
                MySqlCommand command = new MySqlCommand("INSERT INTO warehouse.clients(name, address, total, date) VALUES (@name, @address, @total, NOW());", connection);
                command.Parameters.AddWithValue("@name", textBox1.Text);
                command.Parameters.AddWithValue("@address", textBox2.Text);
                command.Parameters.AddWithValue("@total", Total);
                command.ExecuteNonQuery();

                // Retrieve the auto-generated order ID
                MySqlCommand getLastInsertedIdCmd = new MySqlCommand("SELECT LAST_INSERT_ID();", connection);
                orderid = Convert.ToInt32(getLastInsertedIdCmd.ExecuteScalar());

                if (orderid != 0)
                {
                    MessageBox.Show($"Date: {DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")}\nOrderID: {orderid}\nTotal: {Total:C}\n");
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Data Not Saved");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
