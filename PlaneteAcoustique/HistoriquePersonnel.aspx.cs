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
    public partial class HistoriquePersonnel : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=TissyrePartner;Integrated Security=True");
        DataTable t = new DataTable();
        public void charg()
        {
            cnx.Open();
            SqlDataAdapter ada = new SqlDataAdapter(@"SELECT  HistoriqueEmploye.Cin, HistoriqueEmploye.Nom, HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                          FROM  HistoriqueEmploye INNER JOIN
                                                          Service ON HistoriqueEmploye.IdService = Service.IdService", cnx);
            ada.Fill(t);

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
            cnx.Close();
        }
        public void chargparnom(string @i)
        {
            cnx.Open();
            SqlCommand ada = new SqlCommand(@"SELECT    HistoriqueEmploye.Cin,  HistoriqueEmploye.Nom, HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                   FROM         HistoriqueEmploye INNER JOIN
                                                   Service ON HistoriqueEmploye.IdService = Service.IdService
                                                   WHERE     (HistoriqueEmploye.Nom = @i)", cnx);
            ada.Parameters.Clear();
            ada.Parameters.AddWithValue("@i", @i);
            t.Load(ada.ExecuteReader());
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
            cnx.Close();
        }
        public void chargparcin(string @i)
        {
            cnx.Open();
            SqlCommand ada = new SqlCommand(@"SELECT      HistoriqueEmploye.Cin, HistoriqueEmploye.Nom,HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                   FROM         HistoriqueEmploye INNER JOIN
                                                   Service ON HistoriqueEmploye.IdService = Service.IdService
                                                   WHERE     (HistoriqueEmploye.Cin = @i)", cnx);
            ada.Parameters.Clear();
            ada.Parameters.AddWithValue("@i", @i);
            t.Load(ada.ExecuteReader());
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
            cnx.Close();
        }
        public void chargparprenom(string @i)
        {
            cnx.Open();
            SqlCommand ada = new SqlCommand(@"SELECT    HistoriqueEmploye.Cin,  HistoriqueEmploye.Nom, HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                   FROM         HistoriqueEmploye INNER JOIN
                                                   Service ON HistoriqueEmploye.IdService = Service.IdService
                                                   WHERE     (HistoriqueEmploye.Prenom = @i)", cnx);
            ada.Parameters.Clear();
            ada.Parameters.AddWithValue("@i", @i);
            t.Load(ada.ExecuteReader());
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
            cnx.Close();
        }
        public void chargpartelephone(string @i)
        {
            cnx.Open();
            SqlCommand ada = new SqlCommand(@"SELECT   HistoriqueEmploye.Cin,   HistoriqueEmploye.Nom, HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                   FROM         HistoriqueEmploye INNER JOIN
                                                   Service ON HistoriqueEmploye.IdService = Service.IdService
                                                   WHERE     (HistoriqueEmploye.Telephone = @i)", cnx);
            ada.Parameters.Clear();
            ada.Parameters.AddWithValue("@i", @i);
            t.Load(ada.ExecuteReader());
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
            cnx.Close();
        }
        public void chargparservice(string @i)
        {
            cnx.Open();
            SqlCommand ada = new SqlCommand(@"SELECT     HistoriqueEmploye.Cin, HistoriqueEmploye.Nom, HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                   FROM         HistoriqueEmploye INNER JOIN
                                                   Service ON HistoriqueEmploye.IdService = Service.IdService
                                                   WHERE     (HistoriqueEmploye.IdService = @i)", cnx);
            ada.Parameters.Clear();
            ada.Parameters.AddWithValue("@i", @i);
            t.Load(ada.ExecuteReader());
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
            cnx.Close();
        }
        public void chargparDS(DateTime @i)
        {
            cnx.Open();
            SqlCommand ada = new SqlCommand(@"SELECT     HistoriqueEmploye.Cin, HistoriqueEmploye.Nom, HistoriqueEmploye.Prenom, HistoriqueEmploye.Telephone, Service.NomService
                                                   FROM         HistoriqueEmploye INNER JOIN
                                                   Service ON HistoriqueEmploye.IdService = Service.IdService
                                                   WHERE     (HistoriqueEmploye.DateSortie = @i)", cnx);
            ada.Parameters.Clear();
            ada.Parameters.AddWithValue("@i", @i);
            t.Load(ada.ExecuteReader());
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
            cnx.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                charg();
            }
        }
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void txtname_TextChanged(object sender, EventArgs e)
        {
            TextBox txt = (TextBox)GridView1.FooterRow.FindControl("txtname");
            if (txt.Text == null)
            {
                charg();
            }
            else
            {
                chargparnom(txt.Text);
            }
        }
        protected void txtprenom_TextChanged(object sender, EventArgs e)
        {
            TextBox txt = (TextBox)GridView1.FooterRow.FindControl("txtprenom");
            if (txt.Text == "")
            {
                charg();
            }
            else
            {

                chargparprenom(txt.Text);
            }
        }
        protected void txttel_TextChanged(object sender, EventArgs e)
        {
            TextBox txt = (TextBox)GridView1.FooterRow.FindControl("txttel");
            if (txt.Text == "")
            {
                charg();
            }
            else
            {
              
                chargpartelephone(txt.Text);
            }
        }
        protected void service_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList txt = (DropDownList)GridView1.FooterRow.FindControl("service");
            if (txt.Text == "----Choisir----")
            {
                charg();
            }
            else
            {

                chargparservice(txt.SelectedValue.ToString());
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            charg();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        protected void txtCin_TextChanged(object sender, EventArgs e)
        {
            TextBox txt = (TextBox)GridView1.FooterRow.FindControl("txtCin");
            if (txt.Text == "")
            {
                charg();
            }
            else
            {

                chargparcin(txt.Text);
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("pageexuc.aspx?Cin=" + GridView1.SelectedRow.Cells[0].Text );
            Session["fonction"] = GridView1.SelectedRow.Cells[5].Text.ToString();
            Response.Redirect("HistEmploye.aspx");
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }
    }
}