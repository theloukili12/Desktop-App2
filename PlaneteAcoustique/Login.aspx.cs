using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            var v = from x in db.Employe
                    where txtEmail.Text == x.Email && txtpasse.Text == x.Cin
                    select x;
            Employe emp = v.FirstOrDefault();
            if (v.Count() > 0 && (emp.IdService==1 || emp.IdService == 4))
            {
                Session["login"] = emp.IdPersonne ;
                Response.Redirect("Acceuil.aspx");
            }
            if (v.Count() > 0 && (emp.IdService == 2 || emp.IdService == 3))
            {
                Session["login"] = emp.IdPersonne;
                Response.Redirect("Acceuil_admi.aspx");
            }
        }
    }
}