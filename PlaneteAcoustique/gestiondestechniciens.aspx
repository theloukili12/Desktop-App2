<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="gestiondestechniciens.aspx.cs" Inherits="PlaneteAcoustique.gestiondestechniciens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="card shadow mb-4">
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Les techniciens</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink" style="position: absolute; top: 0px; left: 0px; transform: translate3d(-156px, 19px, 0px);">
                      <div class="dropdown-header">Filtrer</div>
                      <a class="dropdown-item" href="Gestiondesingenieurs.aspx">Ingénieurs</a>
                      <a class="dropdown-item" href="gestiondestechniciens.aspx">techniciens</a>
                      <a class="dropdown-item" href="gestiondesSecrétaire.aspx">Secrétaires</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="GestionEmploye.aspx">Tous les Employés </a>
                    </div>
                  </div>
                </div>
<div class="card-body">

              <div class="table-responsive">
          <asp:GridView class="table table-bordered" ID ="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None"   Width="730px"   
               DataSourceID="SqlDataSource1" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Left">
              <Columns>
                  <asp:BoundField DataField="Cin" HeaderText="Cin" SortExpression="Cin" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" >
                  </asp:BoundField>
                  <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" >
                       </asp:BoundField>
                  <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" >
                  </asp:BoundField>
                  <asp:BoundField DataField="NomService" HeaderText="NomService" SortExpression="NomService" >
                  </asp:BoundField>
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
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TissyrePartnerConnectionString %>" SelectCommand="SELECT Employe.Cin, Employe.Nom, Employe.Prenom, Employe.Telephone, Service.NomService FROM Employe INNER JOIN Service ON Employe.IdService = Service.IdService WHERE (Service.NomService = N'Technicien') ORDER BY Employe.Nom">
                  </asp:SqlDataSource>
</div>
</div>
</div>
</asp:Content>
