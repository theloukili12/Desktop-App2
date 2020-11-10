<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="EditEmploye.aspx.cs" Inherits="PlaneteAcoustique.EditEmploye" %>
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
           <table class="table table-bordered" id="dataTable"  >

               <tbody>
                   <tr>
                       <td class="parametre">Fonction </td>
                       <td>
                           <asp:Label ID="labelservice" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Nom</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtname" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Prenom</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtprenom" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">CIN</td>
                       <td>
                           <asp:Label ID="labelcin" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Adresse</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtadresse" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Ville</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtville" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Telephone</td>
                       <td class="initialism">
                           <asp:TextBox ID="txttel" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Email</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Date Embauche</td>
                       <td>
                           <asp:Label ID="labeldateembauche" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Date De Naissance</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtDn" runat="server" TextMode="DateTime" CssClass="form-control input-lg"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Situation familial</td>
                       <td class="initialism">
                           <asp:TextBox ID="txtsituation" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">Nombre des enfants </td>
                       <td class="initialism">
                           <asp:TextBox ID="txtnbrenfant" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="parametre">
                           <asp:CheckBox class="custom-control teleport-switch" ID="checkpicture" runat="server" Text="Picture" />
                          </td>
                       <td class="initialism">
                           <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control input-lg" />
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2" style="text-align:center">
                           <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="btn-primary" OnClick="btndelete_Click" Width="107px" /> 
                           <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn-primary" OnClick="btncancel_Click" Width="107px" /> 
                        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn-primary" OnClick="btnsave_Click" Width="111px" /></td>
                   </tr>
               </tbody>
               </table>
</asp:Content>

