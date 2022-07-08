using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp4
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "这里设置优先使用-沙漠的首页";
            Response.Write("<script>alert('首页_Default.Page_Load')</script>");
        }
    }
}