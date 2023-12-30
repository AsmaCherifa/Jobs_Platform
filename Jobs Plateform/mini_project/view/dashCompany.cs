using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace mini_projet.view
{
    public partial class dashCompany : Form
    {
        public dashCompany()
        {
            InitializeComponent();
        }

      

        private void label8_Click(object sender, EventArgs e)
        {

            string connetionString = "server=localhost;database=csharp;uid=root;pwd=\"\";";
            MySqlConnection cnn = new MySqlConnection(connetionString);
            cnn.Open();
            String dateNow = DateTime.Now.ToString("yyyy-MM-dd");
            String stm = "SELECT * FROM offer where date_exp > '"+ dateNow + "'";
            MySqlDataAdapter sad = new MySqlDataAdapter(stm, connetionString);
            DataTable dt = new DataTable();
            sad.Fill(dt);
            dgv.Show();
            dgv.DataSource = dt;
        }

        private void label6_Click(object sender, EventArgs e)
        {
            login l = new login();
            this.Hide();
            l.ShowDialog();
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            offers_company oc = new offers_company();
            oc.Show();

        }

        private void label7_Click(object sender, EventArgs e)
        {
            
        }
    }
}
