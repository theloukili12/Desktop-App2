<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="PlaneteAcoustique.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <tbody>
            <tr>
                <td class="parametre">Nom</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="parametre">Prenom</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="parametre">CIN</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="parametre">Adresse</td>
                <td>
                    <asp:TextBox ID="txtadresse" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="parametre">Ville</td>
                <td>
                    <asp:TextBox ID="txtville" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="parametre">Telephone</td>
                <td>
                    <asp:TextBox ID="txttel" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="parametre">Email</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="parametre">Date Embauche</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="form-control input-lg"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="parametre">Date De Naissance</td>
                <td>
                    <asp:TextBox ID="txtDn" runat="server" TextMode="DateTime" CssClass="form-control input-lg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="parametre">
                    <asp:CheckBox ID="checkpicture" runat="server" Text="Picture" />
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control input-lg" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn-primary" OnClick="btncancel_Click" Width="107px" />
                    <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn-primary" OnClick="btnsave_Click" Width="111px" /></td>
            </tr>
        </tbody>
    </table>
    <style>
        .info {
            color: black;
            text-align: center;
        }

        .parametre {
            text-align: center;
            font-weight: bold;
        }
    </style>
</asp:Content>
