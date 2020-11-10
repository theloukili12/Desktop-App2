using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class LesDemandesCongé : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["IdPer"] = GridView1.SelectedRow.Cells[1].Text;
            Session["NC"] = GridView1.SelectedRow.Cells[2].Text;
            Session["IdCongé"] = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("DetailCongé.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}