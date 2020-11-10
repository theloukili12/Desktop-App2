using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class NouveauEmploye : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public void charg()
        {
            var v = from x in db.Service
                    select new { x.IdService, x.NomService };
            DropDownList1.DataTextField = "Nomservice";
            DropDownList1.DataValueField = "IdService";
            DropDownList1.DataSource = v;
            DropDownList1.DataBind();
        }
        public void vider()
        {
            txtprenom.Text = "";
            txtpays.Text = "";
            txtnom.Text = "";
            txttel.Text = "";
            txtville.Text = "";
            txtadresse.Text = "";
            txtemail.Text = "";
            //txtDN.Text = "";
            txtcin.Text = "";
            TextBox12.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = DateTime.Now.ToShortDateString();
                charg();
            }
        }
        public void insertemp()
        {
            try
            {
                Employe emp = new Employe();
                emp.Nom = txtnom.Text;
                emp.Prenom = txtprenom.Text;
                emp.Cin = txtcin.Text;
                emp.Adresse = txtadresse.Text;
                emp.Ville = txtville.Text;
                emp.Telephone = txttel.Text;
                emp.Email = txtemail.Text;
                emp.Nationalite = DropDownList2.Text;
                emp.Pays = txtpays.Text;
                emp.DN = Convert.ToDateTime(txtDN.Text).Date;
                emp.Situationfamilial = DropDownList3.Text;
                emp.Nbenfants = int.Parse(TextBox12.Text);
                emp.DateEmbauche = Convert.ToDateTime(Label1.Text);
                emp.IdService = Convert.ToInt32(DropDownList1.SelectedValue);
                db.Employe.InsertOnSubmit(emp);
                db.SubmitChanges();
                vider();
            }
            catch
            {
                Response.Redirect("PageError_admi.aspx");
            }
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            insertemp();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            vider();
        }
    }
}