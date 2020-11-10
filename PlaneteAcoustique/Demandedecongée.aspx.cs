using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace PlaneteAcoustique
{
    public partial class Demandedecongée : System.Web.UI.Page
    {
        public void charg()
        {
            if (Session["login"] != null)
            {
                DataTable t = new DataTable();
                using (SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=TissyrePartner;Integrated Security=True"))
                {
                    cnx.Open();
                    SqlDataAdapter ada = new SqlDataAdapter(@"SELECT   DemandeCongé.IdCongée,  DemandeCongé.DateDebut, DemandeCongé.DateFin, DemandeCongé.Motif, Service.NomService
FROM         DemandeCongé INNER JOIN
                      Employe ON DemandeCongé.IdEmploye = Employe.IdPersonne INNER JOIN
                      Service ON Employe.IdService = Service.IdService where  (Year(DateDebut) = Year(getdate())) and IdEmploye=" + Convert.ToInt32(Session["login"].ToString()), cnx);
                    ada.Fill(t);
                }
                if (t.Rows.Count > 0)
                {
                    GridView1.DataSource = t;
                    GridView1.DataBind();
                }
                else
                {
                    t.Rows.Add(t.NewRow());
                    GridView1.DataSource = t;
                    GridView1.DataBind();
                    GridView1.Rows[0].Cells.Clear();
                    GridView1.Rows[0].Cells.Add(new TableCell());
                    GridView1.Rows[0].Cells[0].ColumnSpan = t.Columns.Count;
                    GridView1.Rows[0].Cells[0].Text = "Il Y'a pas d'information";
                    GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            
                charg();

            }
        }
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TextBox Db = (TextBox)GridView1.FooterRow.FindControl("txtDb");
                TextBox DF = (TextBox)GridView1.FooterRow.FindControl("txtDF");
                DropDownList DP = (DropDownList)GridView1.FooterRow.FindControl("DropDownList1");
                DemandeCongé D = new DemandeCongé();
                D.DateDebut = Convert.ToDateTime(Db.Text.Trim()).Date;
                D.DateFin = Convert.ToDateTime(DF.Text.Trim()).Date;
                D.Motif = DP.Text.Trim();

                D.IdEmploye = Convert.ToInt32(Session["Login"].ToString());
                db.DemandeCongé.InsertOnSubmit(D);
                db.SubmitChanges();
                charg();
            }
            catch (Exception)
            {
                Response.Redirect("PageError.aspx");
            }
        }

    }
}