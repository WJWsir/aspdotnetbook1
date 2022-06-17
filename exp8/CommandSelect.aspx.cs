using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp8_1
{
    public partial class CommandSelect : System.Web.UI.Page
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

        protected void selectBtn_Click(object sender, EventArgs e)
        {
            if (this.txtName.Text != "")
            {
                SqlConnection conn = GetConnection();
                conn.Open();
                string sqlStr = "select * from student_info where name=@name";
                SqlCommand command = new SqlCommand(sqlStr, conn);
                command.Parameters.Add("@name", SqlDbType.NVarChar, 20).Value = this.txtName.Text.Trim();
                SqlDataAdapter sqtaAdapter = new SqlDataAdapter(command);
                System.Data.DataSet dataSet = new System.Data.DataSet();
                sqtaAdapter.Fill(dataSet);
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = dataSet;
                    GridView1.DataBind();
                }
                else
                {

                    Response.Write("<script>alert('未查询到相关数据')</script>");
                }
                dataSet.Dispose();
                conn.Close();
            }
            else
                this.bind();
        }
    }
}