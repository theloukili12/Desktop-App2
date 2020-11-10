using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class MasterPageAdmi : System.Web.UI.MasterPage
    {
        SqlCommand cmd;
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=TissyrePartner;Integrated Security=True");
        DataClasses1DataContext db = new DataClasses1DataContext();
        public void chargusername()
        {
            var v = from x in db.Employe
                    where x.IdPersonne == Convert.ToInt32(Session["login"].ToString())
                    select x;
            Employe emp = v.FirstOrDefault();
            lblusername.Text = emp.Nom + " " + emp.Prenom;
        }
        public void chargpicture()
        {
            var v = from x in db.Employe
                    where x.IdPersonne == Convert.ToInt32(Session["login"].ToString())
                    select x;
            Employe e = v.FirstOrDefault();
            if (e.Image == null)
            {
                Image1.ImageUrl = "https://source.unsplash.com/QAB-WJcbgJk/60x60";
            }
            else
            {
                cnx.Open();
                cmd = new SqlCommand("select Image from Employe where idPersonne=" + Convert.ToInt32(Session["login"].ToString()), cnx);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        byte[] imagedate = (byte[])dr["Image"];
                        string img = Convert.ToBase64String(imagedate, 0, imagedate.Length);
                        Image1.ImageUrl = "data:image/png;base64," + img;
                    }
                }
                cnx.Close();
            }
        }
        public void nbrdemande()
        {
            var v = from x in db.DemandeCongé
                    select x;
            if (v.Count() > 0)
            {
                lblalert.Text = v.Count().ToString();
            }
            else
            {
                lblalert.Text = "";
            }
        }
        public void messagealert()
        {
            var v = from x in db.DemandeCongé
                    select x;
            if (v.Count() > 0)
            {
                lblmessage.Text = "Vous avez " + v.Count().ToString()+" Demandes de congé en cours ";
            }
            else
            {
                lblmessage.Text = "Il y'a pas de nouveauté";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] != null)
            {
                messagealert();
                nbrdemande();
                chargusername();
                chargpicture();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}