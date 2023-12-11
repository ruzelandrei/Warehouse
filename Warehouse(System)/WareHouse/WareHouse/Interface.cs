using System;
using System.Windows.Forms;

namespace Warehouse
{
    public partial class Interface : Form
    {
        private Client client;

        public Interface()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double total = 0; // Variable to accumulate the total

            CalculateAndDisplay(textBox1, 1500, ref total);
            CalculateAndDisplay(textBox2, 1500, ref total);
            CalculateAndDisplay(textBox3, 1500, ref total);
            CalculateAndDisplay(textBox4, 1500, ref total);
            CalculateAndDisplay(textBox5, 1500, ref total);
            CalculateAndDisplay(textBox6, 350, ref total);
            CalculateAndDisplay(textBox7, 250, ref total);
            CalculateAndDisplay(textBox8, 280, ref total);
            CalculateAndDisplay(textBox9, 370, ref total);
            CalculateAndDisplay(textBox10, 400, ref total);
            CalculateAndDisplay(textBox11, 2400, ref total);
            CalculateAndDisplay(textBox12, 2700, ref total);
            CalculateAndDisplay(textBox13, 3200, ref total);
            CalculateAndDisplay(textBox14, 3000, ref total);
            CalculateAndDisplay(textBox15, 3500, ref total);

            MessageBox.Show($"Total: {total:C}", "Total Amount");

            // Pass the total to the Client form
            Client client = new Client(total);
            client.Show();
            this.Hide();
        }

        private void CalculateAndDisplay(TextBox textBox, double fixedValue, ref double total)
        {
            double amount;

            // Check if the input is a valid number
            if (double.TryParse(textBox.Text, out amount))
            {
                double result = amount * fixedValue;

                // Add the result to the total
                total += result;
            }
        }
    }
}
