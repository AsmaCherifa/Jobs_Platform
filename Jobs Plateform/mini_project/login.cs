using mini_projet.view;
using mini_projet.view.jobseeker;
using MySql.Data.MySqlClient;
using System.Data;

namespace mini_projet
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }
        public void clearData()
        {

        }
        private void button1_Click(object sender, EventArgs e)
        {
            inscri inscri = new inscri();
            this.Hide();
            inscri.ShowDialog();
        }

        private void btn_login_Click(object sender, EventArgs e)
        {
          
            string username, password;
            username = username_text.Text;
            password = password_text.Text;
            string connetionString = null;
            MySqlConnection cnn;            
            connetionString = "server=localhost;Port=3306;database=csharp;uid=root";
            //connetionString = "server=localhost;PORT=3307;DATABASE=csharp;uid=root;";
            cnn = new MySqlConnection(connetionString);
          /*  if (username == "" || password == "" )
            {
                MessageBox.Show("missing info  !! ");
            }
            else
            {*/

                try
            {
                //  admin

                if (username == "admin" && password == "admin")
                {
                    dashAdmin da = new dashAdmin();
                    this.Hide();
                    da.ShowDialog();
                }
                else { 
                cnn.Open();
                String stm = "SELECT * FROM users WHERE username ='"+username+"' AND password ='"+password+"'";
                MySqlDataAdapter sad = new MySqlDataAdapter(stm, connetionString);
                DataTable dt =new DataTable();
                sad.Fill(dt);
                    if(dt.Rows.Count > 0)
                    {
                        String type = (string)dt.Rows[0]["type"];
                        String status = (string)dt.Rows[0]["status"];
                        // company
                        if (type == "company" && status == "active")
                        {
                             dashCompany dc = new dashCompany();
                             this.Hide();
                             dc.ShowDialog();
                            
                           
                        }
                        else
                 
                       if (type == "jobseeker" && status == "active")
                        {
                             dashUser du = new dashUser();
                            // dashUser du = new dashUser(this.label2.Text);
                            this.Hide();
                            du.ShowDialog();
                           
                        }
                        else
                        if (status == "desactive")
                        {
                            MessageBox.Show("Account is not activated yet !");
                        }
                        //
                        /*else
                        {
                            MessageBox.Show("Check your username / password !! ");
                        }*/


                    } else
                    {
                        MessageBox.Show("Check your username/password ! ");
                    }
                }
                  
            }
           
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            } 
            }

        private void username_text_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            if(username_text.Text == "admin" && password_text.Text =="admin")
            {
                inscri i = new inscri();
                i.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("change your username");
            }
           
        }
    }
    }