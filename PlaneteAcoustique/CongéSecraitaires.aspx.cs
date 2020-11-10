using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlaneteAcoustique
{
    public partial class CongéSecraitaires : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable t = new DataTable();
            using (SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=TissyrePartner;Integrated Security=True"))
            {
                cnx.Open();
                SqlDataAdapter ada = new SqlDataAdapter(@"SELECT     CongéesAccordé.IdCongée, Employe.Nom + N' ' + Employe.Prenom AS NC, CongéesAccordé.DateCongé, CongéesAccordé.Motif, CongéesAccordé.NombreJour
FROM         CongéesAccordé INNER JOIN
                      Employe ON CongéesAccordé.IdEmploye = Employe.IdPersonne
WHERE     (YEAR(CongéesAccordé.DateCongé) = YEAR(GETDATE())) AND (Employe.IdService = 3) ", cnx);
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
}