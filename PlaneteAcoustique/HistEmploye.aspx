<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="HistEmploye.aspx.cs" Inherits="PlaneteAcoustique.HistEmploye" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
     .info {
     color: black;
     text-align:center;
     }
     .parametre {
         text-align:center;
         font-weight:bold;
     }
 </style>
     <table id="example" class="table table-bordered" width="100%" cellspacing="0">
        <tbody>
            <tr>
                       <td style="width: 201px" class="parametre">Fonction </td>
                       <td class="info">
                           <asp:Label ID="labelservice" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Nom</td>
                       <td class="info">
                           <asp:Label ID="lblnom" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Prenom</td>
                       <td class="info">
                           <asp:Label ID="lblprenom" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">CIN</td>
                       <td class="info">
                           <asp:Label ID="labelcin" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Adresse</td>
                       <td class="info">
                           <asp:Label ID="lbladresse" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Ville</td>
                       <td class="info">
                           <asp:Label ID="lblville" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Telephone</td>
                       <td class="info">
                           <asp:Label ID="lbltel" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px; height: 27px" class="parametre">Email</td>
                       <td style="height: 27px" class="info">
                           <asp:Label ID="lblEmail" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Date Embauche</td>
                       <td class="info">
                           <asp:Label ID="labeldateembauche" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Date De Naissance</td>
                       <td class="info">
                           <asp:Label ID="lblDN" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Date Sortie</td>
                       <td class="info">
                           <asp:Label ID="lblDS" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Pays </td>
                       <td class="info">
                           <asp:Label ID="lblPays" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">
                           Nationalité</td>
                       <td class="info">
                           <asp:Label ID="lblnationalite" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>

        </tbody>
    </table>

</asp:Content>
