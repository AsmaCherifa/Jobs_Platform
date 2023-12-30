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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace mini_projet.view
{
    public partial class dashAdmin : Form
    {
        public dashAdmin()
        {
            InitializeComponent();
            getusers();
        }

        public void getusers()
        {
            string connetionString = "server=localhost;database=csharp;uid=root;pwd=\"\";";
            MySqlConnection cnn = new MySqlConnection(connetionString);
            cnn.Open();
            String stm = "SELECT * FROM users";
            MySqlDataAdapter sad = new MySqlDataAdapter(stm, connetionString);
            DataTable dt = new DataTable();
            sad.Fill(dt);
            dataGridView.DataSource = dt;
            cnn.Close();
        }

        private void dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex; // get the Row Index
            DataGridViewRow selectedRow = dataGridView.Rows[index];
            textID.Text = selectedRow.Cells[0].Value.ToString();

        }

        private void activateBtn_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("datasource=localhost; port=3306; username=root; password=; database=csharp");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("update users set status='active' where id=@id", con);
            cmd.Parameters.AddWithValue("@id", int.Parse(textID.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            getusers();
            MessageBox.Show("activated");

        }

        private void label3_Click(object sender, EventArgs e)
        {
            login l = new login();
            this.Hide();
            l.ShowDialog();
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("datasource=localhost; port=3306; username=root; password=; database=csharp");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("delete from users where id=@id", con);
            cmd.Parameters.AddWithValue("@id", int.Parse(textID.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            getusers();
            MessageBox.Show("deleted");
        }

        private void desactivate_btn_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("datasource=localhost; port=3306; username=root; password=; database=csharp");
            con.Open();
            MySqlCommand cmd = new MySqlCommand("update users set status='desactive' where id=@id", con);
            cmd.Parameters.AddWithValue("@id", int.Parse(textID.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            getusers();
            MessageBox.Show("Desactivated");
        }
    }

        
}
