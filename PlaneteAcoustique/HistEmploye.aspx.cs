using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class HistEmploye : System.Web.UI.Page
    {
        public void charginfo()
        {
            try
            {
                var v = from x in db.HistoriqueEmploye
                        where x.Cin == Request.QueryString["cin"]
                        select x;
                var s = from x in db.Service
                        from emp in db.HistoriqueEmploye
                        where x.IdService == emp.IdService && emp.Cin == Request.QueryString["cin"]
                        select x;
                Service src = s.FirstOrDefault();
                labelservice.Text = src.NomService;
                HistoriqueEmploye e = v.FirstOrDefault();
                lblnom.Text = e.Nom;
                lblprenom.Text = e.Prenom;
                labelcin.Text = e.Cin;
                lbladresse.Text = e.Adresse;
                string rnow = "dd/MM/yyyy";
                lblDN.Text = e.DN.Value.ToString(rnow);
                lblEmail.Text = e.Email;
                lbltel.Text = e.Telephone;
                lblville.Text = e.Ville;
                labeldateembauche.Text = Convert.ToDateTime(e.DateEmbauche).ToShortDateString();
                lblDS.Text = Convert.ToDateTime(e.DateSortie).ToShortDateString();
                lblPays.Text = e.Pays;
                lblnationalite.Text = e.Nationalite;
            }
            catch
            {
                Response.Redirect("PageError_admi.aspx");
            }
        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                charginfo();
            }
        }
    }
}