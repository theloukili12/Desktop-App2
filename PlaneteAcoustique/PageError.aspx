<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PageError.aspx.cs" Inherits="PlaneteAcoustique.PageError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="container-fluid">

          <!-- 404 Error Text -->
          <div class="text-center">
            <div class="error mx-auto" data-text="404">404</div>
            <p class="lead text-gray-800 mb-5">Page non trouvée</p>
            <p class="text-gray-500 mb-0">On dirait que vous avez trouvé un petit problème dans la matrice ...</p>
            <a href="Acceuil.aspx">&larr; Retour à tableau de bord</a>
          </div>

        </div>
</asp:Content>
