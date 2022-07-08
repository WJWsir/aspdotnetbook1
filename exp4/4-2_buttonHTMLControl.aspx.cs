using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp4
{
    public partial class _4_2_buttonHTMLControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            login.InnerHtml = "点 击 <strong>登 录</strong>";
        }

        protected void LoginSuccessfully(object sender, EventArgs e)
        {
            Response.Write($"<script>alert('登录成功!您的账户：{accountCode.Value};密码：{accountPassword.Value}')</script>");
        }
    }
}