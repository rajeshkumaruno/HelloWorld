using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloWorld
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadButtonViewProject_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProject.aspx");

        }

        protected void RadButtonAddProject_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProjectAdd.aspx");
        }
    }
}