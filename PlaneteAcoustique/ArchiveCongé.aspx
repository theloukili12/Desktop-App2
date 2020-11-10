<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArchiveCongé.aspx.cs" Inherits="PlaneteAcoustique.ArchiveCongé" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card shadow mb-4">
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Tous les congés</h6>

                </div>
<div class="card-body">

              <div class="table-responsive">
<asp:GridView class="table table-bordered" ID ="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None"   Width="730px" HorizontalAlign="Left" 
                AllowSorting="True">
              <Columns>

                  <asp:BoundField DataField="IdCongée" HeaderText="IdCongée" SortExpression="IdCongée" />
                  <asp:BoundField DataField="NC" HeaderText="NC" SortExpression="NC" />
                  <asp:BoundField DataField="DateCongé" DataFormatString="{0:yyyy-mm-dd}" HeaderText="DateCongé" SortExpression="DateCongé" />
                  <asp:BoundField DataField="Motif" HeaderText="Motif" SortExpression="Motif" />
                  <asp:BoundField DataField="NombreJour" HeaderText="NombreJour" SortExpression="NombreJour" />

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
                  
</div>
</div>
</div>
</asp:Content>
