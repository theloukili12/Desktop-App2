<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="LesDemandesCongé.aspx.cs" Inherits="PlaneteAcoustique.LesDemandesCongé" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card shadow mb-4">
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Les Demandes en cours</h6>

                </div>
<div class="card-body">

              <div class="table-responsive">
          <asp:GridView class="table table-bordered" ID ="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" 
        CellPadding="0" ForeColor="#333333" GridLines="None"   Width="650px"   
               AllowSorting="True"  DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="IdPersonne" HorizontalAlign="Left" OnRowEditing="GridView1_RowEditing">

                <Columns>
                    <asp:BoundField DataField="IdCongée" HeaderText="Réf.C" ReadOnly="True" SortExpression="IdCongée" InsertVisible="False" />
                    <asp:BoundField DataField="IdPersonne" HeaderText="Matricule" ReadOnly="True" SortExpression="IdPersonne" InsertVisible="False" />
                    <asp:BoundField DataField="Nom Complet" HeaderText="Nom.C" SortExpression="Nom Complet" ReadOnly="True" />
                    <asp:BoundField DataField="DateDebut" HeaderText="DateDebut" SortExpression="DateDebut" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="DateFin" HeaderText="DateFin" SortExpression="DateFin" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/image/icons8-paramètres-administrateur-homme-32.png" ShowSelectButton="True" />

                </Columns>

                <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TissyrePartnerConnectionString %>" SelectCommand="SELECT Employe.IdPersonne, DemandeCongé.IdCongée, Employe.Nom + N' ' + Employe.Prenom AS [Nom Complet], DemandeCongé.DateDebut, DemandeCongé.DateFin, DemandeCongé.Motif FROM DemandeCongé INNER JOIN Employe ON DemandeCongé.IdEmploye = Employe.IdPersonne"></asp:SqlDataSource>
</div>
</div>
         </div>
</asp:Content>
