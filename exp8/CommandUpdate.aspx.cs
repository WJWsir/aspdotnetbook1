using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp8_1
{
    public partial class CommandUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.bind();
            }
        }

        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
        }

        protected void bind()
        {
            SqlConnection conn = GetConnection();
            conn.Open();
            string sqlStr = "select * from student_info";
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlStr, conn);
            System.Data.DataSet dataSet = new System.Data.DataSet();
            dataAdapter.Fill(dataSet);
            GridView1.DataSource = dataSet;
            GridView1.DataKeyNames = new string[] { "id" };
            GridView1.DataBind();
            dataAdapter.Dispose();
            dataSet.Dispose();
            conn.Close();
        }

        protected void Edit(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.bind();
        }
        protected void Update_zzz(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString();
            string sqlStr = "update student_info set name='" + name + "' where id=" + id;
            SqlConnection conn = GetConnection();
            conn.Open();
            SqlCommand command = new SqlCommand(sqlStr, conn);
            command.ExecuteNonQuery();
            command.Dispose();
            conn.Close();
            GridView1.EditIndex = -1;
            this.bind();
        }
        protected void Cancel(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.bind();
        }
    }
}