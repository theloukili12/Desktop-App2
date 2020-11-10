<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="NouveauEmploye.aspx.cs" Inherits="PlaneteAcoustique.NouveauEmploye" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
     .info {
     color: black;
     text-align:center;
     width:100px;
     }
     .parametre {
         text-align:center;
         font-weight:bold;
     }
 </style>
     <table id="example" class="table table-bordered" >
        <tbody>
            <tr>
                       <td style="width: 201px" class="parametre">Fonction </td>
                       <td class="info">
                           <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control input-lg">
                           </asp:DropDownList>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Nom</td>
                       <td class="info">
                           <asp:TextBox ID="txtnom" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Prenom</td>
                       <td class="info">
                           <asp:TextBox ID="txtprenom" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">CIN</td>
                       <td class="info">
                           <asp:TextBox ID="txtcin" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Adresse</td>
                       <td class="info">
                           <asp:TextBox ID="txtadresse" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Ville</td>
                       <td class="info">
                           <asp:TextBox ID="txtville" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Telephone</td>
                       <td class="info">
                           <asp:TextBox ID="txttel" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px; height: 27px" class="parametre">Email</td>
                       <td style="height: 27px" class="info">
                           <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Date Embauche</td>
                       <td class="info">
                           <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Date De Naissance</td>
                       <td class="info">
                           <asp:TextBox ID="txtDN" runat="server" TextMode="Date" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Situation Familial</td>
                       <td class="info">
                           <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="form-control input-lg">
                               <asp:ListItem>Célébataire</asp:ListItem>
                               <asp:ListItem>Marié</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Nombre D&#39;Enfant</td>
                       <td class="info">
                           <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Pays </td>
                       <td class="info">
                           <asp:TextBox ID="txtpays" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">
                           Nationalité</td>
                       <td class="info">
                           <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="form-control input-lg">
                               <asp:ListItem>Marocain</asp:ListItem>
                               <asp:ListItem>Etranger</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                   </tr>

                   <tr>
                       <td class="parametre" colspan="2">
                           <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn-primary" OnClick="btncancel_Click" Width="107px" /> 
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn-primary" OnClick="btnsave_Click" Width="111px" /></td>
                   </tr>

        </tbody>
    </table>
</asp:Content>
