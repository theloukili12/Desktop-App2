<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CongéAccordé.aspx.cs" Inherits="PlaneteAcoustique.CongéAccordé1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="card shadow mb-4">
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Congé Accordé</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-156px, 19px, 0px);">
                      <div class="dropdown-header">Filtrer</div>
                      <a class="dropdown-item" href="CongéAccordé.aspx">Congé Accordé</a>
                      <a class="dropdown-item" href="CongéRefuse.aspx">Congé Refusé</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="ArchiveCongé.aspx">Tous les congés</a>
                    </div>
                  </div>
                </div>
<div class="card-body">

              <div class="table-responsive">
        
                  <asp:GridView ID="GridView1" runat="server" class="table table-bordered"
                      AllowPaging="True"  AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None"   Width="730px" style="margin-left:80px" DataSourceID="SqlDataSource1"  >
         
                      
                      
                      
                      <Columns>
                          <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                          <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" />
                          <asp:BoundField DataField="DateCongé" HeaderText="DateCongé" SortExpression="DateCongé" />
                          <asp:BoundField DataField="Motif" HeaderText="Motif" SortExpression="Motif" />
                          <asp:BoundField DataField="NombreJour" HeaderText="NombreJour" SortExpression="NombreJour" />
                          <asp:BoundField DataField="Reponse" HeaderText="Reponse" SortExpression="Reponse" />
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
        
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TissyrePartnerConnectionString %>" SelectCommand="SELECT Employe.Nom, Employe.Prenom, Congées.DateCongé, Congées.Motif, Congées.NombreJour, DemandeCongé.Reponse 
FROM Congées INNER JOIN DemandeCongé ON Congées.IdCongée = DemandeCongé.IdCongée 
INNER JOIN Employe ON Congées.IdEmploye = Employe.IdPersonne AND DemandeCongé.IdEmploye = Employe.IdPersonne
where (year(Congées.DateCongé) = YEAR(getdate()))  and  (Employe.IdPersonne = @i) and (DemandeCongé.Reponse = 'Accordé')">
                      <SelectParameters>
                          <asp:SessionParameter Name="i" SessionField="login" />
                      </SelectParameters>
                  </asp:SqlDataSource>
        
</div>
</div>
</div>
</asp:Content>
