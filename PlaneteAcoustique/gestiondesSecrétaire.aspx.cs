using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class gestiondesSecrétaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["cin"] = GridView1.SelectedRow.Cells[0].Text.ToString();
            Session["fonction"] = GridView1.SelectedRow.Cells[5].Text.ToString();
            Response.Redirect("EditEmploye.aspx");
        }
    }
}