<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="HistoriquePersonnel.aspx.cs" Inherits="PlaneteAcoustique.HistoriquePersonnel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card shadow mb-4">
           <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Tous les Employés</h6>
                </div>
<div class="card-body">

    <div class="table-responsive">
        <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="730px" ShowFooter="True"
              OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Left" >

                      <Columns>
                  <asp:TemplateField HeaderText="Cin" SortExpression="Cin">
                      <EditItemTemplate>
                          <asp:TextBox ID="Textboxcin" runat="server" Text='<%# Bind("Cin") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <FooterTemplate>
                          <asp:TextBox ID="txtCin" runat="server" type="search" placeholder="Cin"  class="form-control form-control-sm" AutoPostBack="true" OnTextChanged="txtCin_TextChanged" ></asp:TextBox>
                      </FooterTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Labelcin" runat="server" Text='<%# Bind("Cin") %>'></asp:Label>
                      </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Nom") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <FooterTemplate>
                          <asp:TextBox ID="txtname" runat="server" type="search" placeholder="Nom" aria-controls="dataTable" class="form-control form-control-sm" AutoPostBack="true" OnTextChanged="txtname_TextChanged" ></asp:TextBox>
                      </FooterTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("Nom") %>'></asp:Label>
                      </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Prenom" SortExpression="Prenom">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Prenom") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <FooterTemplate>
                          <asp:TextBox ID="txtprenom" runat="server" type="search" placeholder="Prenom" aria-controls="dataTable" class="form-control form-control-sm" AutoPostBack="true" OnTextChanged="txtprenom_TextChanged"   ></asp:TextBox>
                      </FooterTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("Prenom") %>'></asp:Label>
                      </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Telephone" SortExpression="Telephone">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Telephone") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <FooterTemplate>
                          <asp:TextBox ID="txttel" runat="server" type="search" placeholder="Telephone" aria-controls="dataTable" class="form-control form-control-sm" AutoPostBack="true" OnTextChanged="txttel_TextChanged"  ></asp:TextBox>
                      </FooterTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server"  Text='<%# Eval("Telephone") %>'></asp:Label>
                      </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="NomService" SortExpression="NomService">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("NomService") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <FooterTemplate>
                      <asp:DropDownList ID="service"  runat="server"   AutoPostBack="true" CssClass="selectpicker" DataSourceID="SqlDataSource1" DataTextField="NomService" DataValueField="IdService" OnSelectedIndexChanged="service_SelectedIndexChanged" AppendDataBoundItems="True" >
                          <asp:ListItem Selected="True">----Choisir----</asp:ListItem>
                     </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TissyrePartnerConnectionString %>" SelectCommand="SELECT [IdService], [NomService] FROM [Service]"></asp:SqlDataSource>
                      </FooterTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%# Eval("NomService") %>'></asp:Label>
                      </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                  <ItemStyle HorizontalAlign="Center" />
                  </asp:TemplateField>
                          <asp:HyperLinkField  DataNavigateUrlFormatString="~/HistEmploye.aspx?Cin={0}"  HeaderText="Edit" NavigateUrl="~/HistEmploye.aspx" DataNavigateUrlFields="cin" Text="Ici" />

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
