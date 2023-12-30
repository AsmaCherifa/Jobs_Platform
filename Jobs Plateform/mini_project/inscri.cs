using Microsoft.VisualBasic.ApplicationServices;
using mini_projet.view.jobseeker;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Utilities.Collections;
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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace mini_projet.view
{
    public partial class inscri : Form
    {
        public inscri()
        {
            InitializeComponent();
        }

        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(inscri));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.username_inscri_txt = new System.Windows.Forms.TextBox();
            this.psw_inscri_txt = new System.Windows.Forms.TextBox();
            this.phone_inscri_txt = new System.Windows.Forms.TextBox();
            this.mail_inscri_txt = new System.Windows.Forms.TextBox();
            this.btn_inscri = new System.Windows.Forms.Button();
            this.companycheck = new System.Windows.Forms.CheckBox();
            this.jobseekercheck = new System.Windows.Forms.CheckBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(141, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 21);
            this.label1.TabIndex = 0;
            this.label1.Text = "SIGN UP";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(81, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "Username";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label3.Location = new System.Drawing.Point(81, 113);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(57, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "Password";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label5.Location = new System.Drawing.Point(81, 162);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(30, 15);
            this.label5.TabIndex = 4;
            this.label5.Text = "Mail";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label6.Location = new System.Drawing.Point(81, 200);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(86, 15);
            this.label6.TabIndex = 5;
            this.label6.Text = "Phone number";
            // 
            // username_inscri_txt
            // 
            this.username_inscri_txt.Location = new System.Drawing.Point(181, 63);
            this.username_inscri_txt.Name = "username_inscri_txt";
            this.username_inscri_txt.Size = new System.Drawing.Size(100, 23);
            this.username_inscri_txt.TabIndex = 6;
            // 
            // psw_inscri_txt
            // 
            this.psw_inscri_txt.Location = new System.Drawing.Point(181, 114);
            this.psw_inscri_txt.Name = "psw_inscri_txt";
            this.psw_inscri_txt.Size = new System.Drawing.Size(100, 23);
            this.psw_inscri_txt.TabIndex = 7;
            // 
            // phone_inscri_txt
            // 
            this.phone_inscri_txt.Location = new System.Drawing.Point(181, 201);
            this.phone_inscri_txt.Name = "phone_inscri_txt";
            this.phone_inscri_txt.Size = new System.Drawing.Size(100, 23);
            this.phone_inscri_txt.TabIndex = 8;
            // 
            // mail_inscri_txt
            // 
            this.mail_inscri_txt.Location = new System.Drawing.Point(181, 163);
            this.mail_inscri_txt.Name = "mail_inscri_txt";
            this.mail_inscri_txt.Size = new System.Drawing.Size(100, 23);
            this.mail_inscri_txt.TabIndex = 9;
            // 
            // btn_inscri
            // 
            this.btn_inscri.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.btn_inscri.Location = new System.Drawing.Point(94, 336);
            this.btn_inscri.Name = "btn_inscri";
            this.btn_inscri.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.btn_inscri.Size = new System.Drawing.Size(142, 23);
            this.btn_inscri.TabIndex = 11;
            this.btn_inscri.Text = "Sign up";
            this.btn_inscri.UseVisualStyleBackColor = true;
            this.btn_inscri.Click += new System.EventHandler(this.btn_inscri_Click);
            // 
            // companycheck
            // 
            this.companycheck.AutoSize = true;
            this.companycheck.Location = new System.Drawing.Point(181, 245);
            this.companycheck.Name = "companycheck";
            this.companycheck.Size = new System.Drawing.Size(78, 19);
            this.companycheck.TabIndex = 12;
            this.companycheck.Text = "Company";
            this.companycheck.UseVisualStyleBackColor = true;
            // 
            // jobseekercheck
            // 
            this.jobseekercheck.AutoSize = true;
            this.jobseekercheck.Location = new System.Drawing.Point(181, 284);
            this.jobseekercheck.Name = "jobseekercheck";
            this.jobseekercheck.Size = new System.Drawing.Size(77, 19);
            this.jobseekercheck.TabIndex = 13;
            this.jobseekercheck.Text = "Jobseeker";
            this.jobseekercheck.UseVisualStyleBackColor = true;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label7.Location = new System.Drawing.Point(81, 265);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(65, 15);
            this.label7.TabIndex = 14;
            this.label7.Text = "Sign up as:";
            // 
            // label8
            // 
            this.label8.Location = new System.Drawing.Point(0, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(100, 23);
            this.label8.TabIndex = 17;
            // 
            // label9
            // 
            this.label9.Image = ((System.Drawing.Image)(resources.GetObject("label9.Image")));
            this.label9.Location = new System.Drawing.Point(395, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(605, 397);
            this.label9.TabIndex = 16;
            this.label9.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.label9.UseWaitCursor = true;
            // 
            // inscri
            // 
            this.ClientSize = new System.Drawing.Size(1012, 389);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.jobseekercheck);
            this.Controls.Add(this.companycheck);
            this.Controls.Add(this.btn_inscri);
            this.Controls.Add(this.mail_inscri_txt);
            this.Controls.Add(this.phone_inscri_txt);
            this.Controls.Add(this.psw_inscri_txt);
            this.Controls.Add(this.username_inscri_txt);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "inscri";
            this.ResumeLayout(false);
            this.PerformLayout();

        }



        private void btn_inscri_Click(object sender, EventArgs e)
        {

            string username, password, password2, mail, phone, type;
            username = username_inscri_txt.Text;
            password = psw_inscri_txt.Text;
            // password2 = psw2_inscri_txt.Text;
            mail = mail_inscri_txt.Text;
            phone = phone_inscri_txt.Text;
            type = null;
            if (companycheck.Checked == true)
            {
                type = "company";
            }
            else if (jobseekercheck.Checked == true)
            {
                type = "jobseeker";
            }

            string connetionString = null;
            MySqlConnection cnn;
            connetionString = "server=localhost;database=csharp;uid=root;pwd=\"\";";
            cnn = new MySqlConnection(connetionString);

            try
            {
                cnn = new MySqlConnection(connetionString);
                String query = "INSERT INTO users (username,password,mail,phone,type,status) VALUES(@username, @password, @mail,@phone,'" + type + "','desactive')";
                cnn.Open();
                String stm = "SELECT * FROM users WHERE username ='" + username + "'";
                MySqlDataAdapter sad = new MySqlDataAdapter(stm, connetionString);
                DataTable dt = new DataTable();
                sad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    MessageBox.Show("username already exists ! please change the username");
                }
                else
                {
                    MySqlCommand cmd = new MySqlCommand(query, cnn);
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.Parameters.AddWithValue("@mail", mail);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    int x = cmd.ExecuteNonQuery();
                    if (x > 0)
                    {
                        MessageBox.Show("ADDED");
                        login l = new login();
                        this.Hide();
                        l.ShowDialog();
                        this.Close();
                    }
                    else if (username.Equals("") || password.Equals("") || mail.Equals("") || phone.Equals(""))

                    {
                        MessageBox.Show("Please Complete your informations! ");
                    }
                }

                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

    }
}