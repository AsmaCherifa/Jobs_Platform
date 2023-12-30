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

namespace mini_projet.view.jobseeker
{
    public partial class dashUser : Form
    {
        public dashUser()
        {
            InitializeComponent();
            offers();
        }
       /* public dashUser(String a)
        {
            InitializeComponent();
            this.label2.Text += a;
            offers();
        }
       */
        public void offers()
        {
            string connetionString = "server=localhost;database=csharp;uid=root;pwd=\"\";";
            MySqlConnection cnn = new MySqlConnection(connetionString);
            cnn.Open();
            String dateNow = DateTime.Now.ToString("yyyy-MM-dd");
            String stm = "SELECT * FROM offer where date_exp > '" + dateNow + "'";
            MySqlDataAdapter sad = new MySqlDataAdapter(stm, connetionString);
            DataTable dt = new DataTable();
            sad.Fill(dt);
            dgv2.Show();
            dgv2.DataSource = dt;
        }
        private void label10_Click(object sender, EventArgs e)
        {

        }



        private void button1_Click_1(object sender, EventArgs e)
        {
            offer_detail od = new offer_detail();
            od.Show();
            this.Hide();
        }

        private void dgv2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void cellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex; // get the Row Index
            DataGridViewRow selectedRow = dgv2.Rows[index];
            textID.Text = selectedRow.Cells[0].Value.ToString();
            label2.Text = selectedRow.Cells[0].Value.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog1 = new OpenFileDialog
            {
                InitialDirectory = @"C:\",
                Title = "Browse Text Files",

                CheckFileExists = true,
                CheckPathExists = true,

                DefaultExt = "pdf",
                Filter = "pdf files (*.pdf)|*.pdf",
                FilterIndex = 2,
                RestoreDirectory = true,

                ReadOnlyChecked = true,
                ShowReadOnly = true
            };

            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                txtcv.Text = openFileDialog1.FileName.ToString();
               //axAcroPDF1.src = openFileDialog1.FileName;
            }
        }
    }
}
