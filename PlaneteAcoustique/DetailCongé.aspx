<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="DetailCongé.aspx.cs" Inherits="PlaneteAcoustique.DetailCongé" %>
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
                       <td style="width: 201px" class="parametre">Reference de Congé</td>
                       <td class="info">
                           <asp:Label ID="labelId" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Matricule EMP</td>
                       <td class="info">
                           <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Nom Complet</td>
                       <td class="info">
                           <asp:Label ID="lblnom" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
    
                   <tr>
                       <td style="width: 201px" class="parametre">Date Debut</td>
                       <td class="info">
                           <asp:Label ID="labelDB" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Date Fin</td>
                       <td class="info">
                           <asp:Label ID="lblDF" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                    </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Durée Congé</td>
                       <td class="info">
                           <asp:Label ID="label1" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 201px" class="parametre">Motif </td>
                       <td class="info">
                           <asp:Label ID="lblMotif" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn-primary"  Width="107px" OnClick="btncancel_Click" />
                    <asp:Button ID="btnAccpt" runat="server" Text="Accordé" CssClass="btn-primary"  Width="111px" OnClick="btnAccpt_Click" />
                <asp:Button ID="btnrefuse" runat="server" Text="Réfusé" CssClass="btn-primary"  Width="111px" OnClick="btnrefuse_Click" /></td>

            </tr>

        </tbody>
    </table>
</asp:Content>
