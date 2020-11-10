    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class DetailCongé : System.Web.UI.Page
    {
        int a;
        DataClasses1DataContext db = new DataClasses1DataContext();
        public void charg()
        {
            var v = (from x in db.DemandeCongé
                    where x.IdCongée == int.Parse(Session["IdCongé"].ToString())
                    select x).FirstOrDefault();
            DemandeCongé d = v;
            lblMotif.Text = d.Motif;
            lblDF.Text = d.DateFin.ToShortDateString();

            labelDB.Text = d.DateDebut.ToShortDateString();
            TimeSpan Diff = d.DateFin - d.DateDebut;
             a = ((int)Diff.TotalDays);
            label1.Text = a.ToString() + " Jours";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["IdCongé"] != null)
                {
                    charg();
                    lblnom.Text = Session["NC"].ToString();
                    labelId.Text = Session["IdCongé"].ToString();
                    Label2.Text = Session["IdPer"].ToString();
                }
                else
                {
                    Response.Redirect("LesDemandesCongé.aspx");
                }
            }
            catch
            {
                Response.Redirect("PageError_admi.aspx");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("LesDemandesCongé.aspx");
        }

        protected void btnAccpt_Click(object sender, EventArgs e)
        {
            try
            {
                // Ajouté à table accordé
                CongéesAccordé ca = new CongéesAccordé();
                ca.IdCongée = int.Parse(labelId.Text);
                ca.IdEmploye = int.Parse(Label2.Text);
                ca.Motif = lblMotif.Text;
                ca.DateCongé = Convert.ToDateTime(labelDB.Text).Date;
                ca.NombreJour = a;
                db.CongéesAccordé.InsertOnSubmit(ca);
                db.SubmitChanges();
                // Supprimé  le 
                var v = (from x in db.DemandeCongé
                        where x.IdCongée == int.Parse(labelId.Text)
                        select x).FirstOrDefault();
                DemandeCongé d = v;
                db.DemandeCongé.DeleteOnSubmit(d);
                db.SubmitChanges();
            }
            catch (Exception)
            {
                Response.Redirect("PageError_admi.aspx");

            }
            finally
            {
                Response.Redirect("LesDemandesCongé.aspx");
            }
        }

        protected void btnrefuse_Click(object sender, EventArgs e)
        {
            try
            {
                // Ajouté à table accordé
                CongéesRefusé ca = new CongéesRefusé();
                ca.IdCongée = int.Parse(labelId.Text);
                ca.IdEmploye = int.Parse(Label2.Text);
                ca.Motif = lblMotif.Text;
                ca.DateCongé = Convert.ToDateTime(labelDB.Text).Date;
                ca.NombreJour = a;
                db.CongéesRefusé.InsertOnSubmit(ca);
                db.SubmitChanges();
                // Supprimé  le 
                var v = (from x in db.DemandeCongé
                         where x.IdCongée == int.Parse(labelId.Text)
                         select x).FirstOrDefault();
                DemandeCongé d = v;
                db.DemandeCongé.DeleteOnSubmit(d);
                db.SubmitChanges();
            }
            catch (Exception)
            {
                Response.Redirect("PageError_admi.aspx");

            }
            finally
            {
                Response.Redirect("LesDemandesCongé.aspx");
            }
        }
    }
}