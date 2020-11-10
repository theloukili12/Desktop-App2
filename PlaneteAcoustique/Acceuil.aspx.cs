using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class Acceuil : System.Web.UI.Page
    {
        public void Salaireandservice()
        {
            if (Session["login"] != null)
            {
            var v = from x in db.Service
                    from e in db.Employe
                    where e.IdPersonne == Convert.ToInt32(Session["Login"].ToString()) && x.IdService == e.IdService
                    select x;
            Service s = v.FirstOrDefault();
            lblservice.Text = s.NomService;
            lblsalaire.Text = s.SalaireNet.ToString();
            }
        }
        public void jrscongéerst()
        {
            if (Session["login"] != null)
            {
                var v = from e in db.Employe
                        where e.IdPersonne == Convert.ToInt32(Session["Login"].ToString())
                        select e;
                Employe s = v.FirstOrDefault();
                jrsrestant.Text = s.jrsrestantconges.ToString();
            }
        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                lbldate.Text = DateTime.Now.Date.ToShortDateString();
                Salaireandservice();
                jrscongéerst();
           
        }


    }
}