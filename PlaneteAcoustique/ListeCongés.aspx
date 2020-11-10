<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmi.Master" AutoEventWireup="true" CodeBehind="ListeCongés.aspx.cs" Inherits="PlaneteAcoustique.ListeCongés" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="card shadow mb-4">
<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Liste Congée </h6>
                </div>
<div class="card-body">

              <div class="table-responsive">
                  <rsweb:ReportViewer ID="ReportViewer1" runat="server"  Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt"  SizeToReportContent="True" ShowBackButton="False" ShowFindControls="False" ShowRefreshButton="False" ShowWaitControlCancelLink="False" Width="541px">
                      <localreport reportembeddedresource="PlaneteAcoustique.ListeCongé.rdlc" reportpath="ListeCongé.rdlc">
                          <datasources>
                              <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                          </datasources>
                      </localreport>
                  </rsweb:ReportViewer>
                  <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="PlaneteAcoustique.App_Code.DataSet1TableAdapters.ListeCongéTableAdapter"></asp:ObjectDataSource>
    <br />
                  </div>
</div>
</div>
</asp:Content>
