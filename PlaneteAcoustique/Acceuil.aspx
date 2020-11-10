<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Acceuil.aspx.cs" Inherits="PlaneteAcoustique.Acceuil" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
          </div>
          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Date Aujourd'hui</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><asp:Label Text="" ID="lbldate" runat="server" /></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Salaire Mensuelle</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><asp:Label ID="lblsalaire" Text="" runat="server"></asp:Label></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Service </div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><asp:Label ID="lblservice" runat="server"></asp:Label></div>
                        </div>
 
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
               <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Jours Congéé Restant</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                          <asp:Label ID="jrsrestant" runat="server"></asp:Label>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
              
            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Exemple des Projets Gagnés</h6>
                  
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <ul class="list-group">
                        <li class="list-group-item active">Exemple des projets gagnés</li>
                        <li class="list-group-item">Académie Royale du Maroc : Salles de Conférences</li>
                        <li class="list-group-item">Bâtiment tertiaire Safran avec GA et Studios</li>
                        <li class="list-group-item">Aéroport de la Réunion avec AIA</li>
                        <li class="list-group-item">Salle Philharmonie Beyrouth avec IPPR</li>
                        <li class="list-group-item">Fablab ISAE</li>
                        <li class="list-group-item">Complexe Sportif Val de Reuil avec Studios</li>
                 </ul>
                </div>
          </div>
          </div>
         <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Agence</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <h5>TISSEYRE + PARTNERS</h5>
                    <p>5 impasse Doukkali – Derb Moulay Abdellah
                    <br />10040 Rabat Medina MAROC
                    <BR />Tél : +212 610 849 530</p>
              </div>
            </div>
    </div>
    </div>
</asp:Content>

