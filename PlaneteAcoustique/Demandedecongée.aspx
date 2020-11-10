<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Demandedecongée.aspx.cs" Inherits="PlaneteAcoustique.Demandedecongée" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Demande de Congée </h6>
            </div>
    <div class="card-body">
              <div class="table-responsive">
    <asp:GridView class="table table-bordered" ID ="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" DataKeyNames="IdCongée"
        CellPadding="4" ForeColor="#333333" GridLines="None" Width="600px"   ShowFooter="True"  >
       <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
         <Columns>

             <asp:TemplateField HeaderText="DateDebut" SortExpression="DateDebut">
                 <EditItemTemplate>
                     <asp:Label ID="TextBox2" runat="server" Text='<%# Eval("DateDebut") %>'></asp:Label>
                 </EditItemTemplate>
                 <FooterTemplate>
                     <asp:TextBox ID="txtDB" runat="server" TextMode="Date"  ></asp:TextBox>
                 </FooterTemplate>
                 <ItemTemplate>
                     <asp:Label  ID="Label2" runat="server" Text='<%# Eval("DateDebut","{0:dd/MM/yyyy}") %>'></asp:Label>
                 </ItemTemplate>

             </asp:TemplateField>
             <asp:TemplateField HeaderText="DateFin" SortExpression="DateFin">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("DateFin") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <FooterTemplate>
                     <asp:TextBox ID="txtDF" runat="server" TextMode="Date"></asp:TextBox>
                 </FooterTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("DateFin","{0:dd/MM/yyyy}") %>'></asp:Label>
                 </ItemTemplate>

             </asp:TemplateField>
             <asp:TemplateField HeaderText="Motif" SortExpression="Motif">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox4" runat="server"  Text='<%# Eval("Motif") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <FooterTemplate>
                     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-toggle" >
                         <asp:ListItem>Maladie</asp:ListItem>
                         <asp:ListItem>Congé</asp:ListItem>
                     </asp:DropDownList>
                 </FooterTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("Motif") %>'></asp:Label>
                 </ItemTemplate>

             </asp:TemplateField>
             <asp:TemplateField HeaderText="Service" SortExpression="NomService">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox5" runat="server"  Text='<%# Eval("NomService") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <FooterTemplate>
                     <asp:Button ID="Button1" runat="server" CssClass="btn-primary" OnClick="Button1_Click" Text="Envoyer" />
                 </FooterTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("NomService") %>'></asp:Label>
                 </ItemTemplate>

             </asp:TemplateField>
    
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
