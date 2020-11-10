using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class EditEmploye : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                charginfo();
            }
        }
        public void charginfo()
        {
            try
            {
                var v = from x in db.Employe
                        where x.Cin == Session["cin"].ToString()
                        select x;
                var s = from x in db.Service
                        from emp in db.Employe
                        where x.IdService == emp.IdService && emp.Cin == Session["cin"].ToString()
                        select x;
                Service src = s.FirstOrDefault();
                labelservice.Text = src.NomService;
                Employe e = v.FirstOrDefault();
                txtname.Text = e.Nom;
                txtprenom.Text = e.Prenom;
                labelcin.Text = e.Cin;
                txtadresse.Text = e.Adresse;
                string rnow = "dd/MM/yyyy";
                txtDn.Text = e.DN.Value.ToString(rnow);
                txtemail.Text = e.Email;
                txttel.Text = e.Telephone;
                txtville.Text = e.Ville;
                txtsituation.Text = e.Situationfamilial;
                txtnbrenfant.Text = e.Nbenfants.ToString();
                labeldateembauche.Text = Convert.ToDateTime(e.DateEmbauche).ToShortDateString();
            }
            catch
            {
                Response.Redirect("PageError_admi.aspx");
            }
        }
        public void saveedit()
        {
            try
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                var v = from x in db.Employe
                        where x.Cin == labelcin.Text
                        select x;
                Employe emp= v.FirstOrDefault();
                emp.Nom = txtname.Text;
                emp.Prenom = txtprenom.Text;
                emp.Situationfamilial = txtsituation.Text;
                emp.Nbenfants = Convert.ToInt32(txtnbrenfant.Text);
                emp.Adresse = txtadresse.Text;
                emp.Ville = txtville.Text;
                emp.Telephone = txttel.Text;
                emp.Email = txtemail.Text;
                emp.DN = Convert.ToDateTime(txtDn.Text).Date;
                //if (checkpicture.Checked == true)
                //{
                //    emp.Image = pic;
                //}
                db.SubmitChanges();
            }
            catch
            {
                Response.Redirect("PageError_admi.aspx");
            }
        }
        public void deleteemp()
        {
            try
            {
                var v = from x in db.Employe
                        where x.Cin == labelcin.Text
                        select x;
                Employe emp = v.FirstOrDefault();
                db.Employe.DeleteOnSubmit(emp);
                db.SubmitChanges();
                Response.Redirect("Gestiondesingenieurs.aspx");
            }
            catch
            {
            }
            Response.Redirect("PageError_admi.aspx");
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            saveedit();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            charginfo();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            deleteemp();
        }
    }
}