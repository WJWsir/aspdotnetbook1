using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exp4
{
    public partial class _4_5_fileInputHTMLControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UplaodFile(object sender, EventArgs e)
        {
            fileUpload.PostedFile.SaveAs($"{Server.MapPath("~")}/Files/{fileUpload.PostedFile.FileName}");
        }
    }
}