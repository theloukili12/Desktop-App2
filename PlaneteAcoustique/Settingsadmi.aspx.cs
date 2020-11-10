using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class Settingsadmi : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public void charginfo()
        {
            var v = from x in db.Employe
                    where x.IdPersonne == Convert.ToInt32(Session["login"].ToString())
                    select x;
            Employe e = v.FirstOrDefault();
            Label1.Text = e.Nom;
            Label2.Text = e.Prenom;
            Label3.Text = e.Cin;
            txtadresse.Text = e.Adresse;
            string rnow = "dd/MM/yyyy";
            txtDn.Text = e.DN.Value.ToString(rnow);
            txtemail.Text = e.Email;
            txttel.Text = e.Telephone;
            txtville.Text = e.Ville;
            Label4.Text = Convert.ToDateTime(e.DateEmbauche).ToShortDateString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                charginfo();
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            charginfo();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
            var v = from x in db.Employe
                    where x.IdPersonne == Convert.ToInt32(Session["login"].ToString())
                    select x;
            Employe emp = v.FirstOrDefault();
            emp.Adresse = txtadresse.Text;
            emp.Ville = txtville.Text;
            emp.Telephone = txttel.Text;
            emp.Email = txtemail.Text;
            emp.DN = Convert.ToDateTime(txtDn.Text).Date;
            if (checkpicture.Checked == true)
            {
                emp.Image = pic;
            }
            db.SubmitChanges();
        }
    }
}