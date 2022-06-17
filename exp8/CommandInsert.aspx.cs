using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp8_1
{
    public partial class CommandInsert : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public SqlConnection GetConnection()
        {
            string conStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(conStr);
            return conn;
        }

        protected void bind()
        {
            SqlConnection myConn = GetConnection();
            myConn.Open();
            string sqlStr = "select * from student_info";
            SqlDataAdapter myDa = new SqlDataAdapter(sqlStr, myConn);
            System.Data.DataSet myDs = new System.Data.DataSet();
            myDa.Fill(myDs);
            GridView1.DataSource = myDs;
            GridView1.DataBind();
            myDa.Dispose();
            myDs.Dispose();
            myConn.Close();
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (this.txtClass.Text != "")
            {
                SqlConnection conn = GetConnection();
                conn.Open();
                string sqlStr = $"INSERT INTO student_info(name) VALUES(N'{this.txtClass.Text.Trim()}')";
                SqlCommand comd = new SqlCommand(sqlStr, conn);
                comd.ExecuteNonQuery();
                conn.Close();
                this.bind();
            }
            else
            {
                this.bind();
            }
        }
    }
}