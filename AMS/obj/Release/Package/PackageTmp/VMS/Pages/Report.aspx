<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="AMS.VMS.Pages.Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden;">
          <p class="heading" style="margin-top: 20px;">Reports</p>
         
         <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245);">
             
              <div class="row" style="margin-top:100px;">

               <div class="col-md-6 reportsRadio">
                
                <asp:RadioButton ID="rdBtnvehiCleSchuduleManuale" CssClass="radio" AutoPostBack="false" GroupName="radiobutton"  runat="server" Text="Vehicle Schdule" OnCheckedChanged="rdBtnvehiCleSchuduleManuale_CheckedChanged" />
                <asp:RadioButton ID="rdbtnLogEntry" runat="server" CssClass="radio" AutoPostBack="false" GroupName="radiobutton" Text="Log Entry(Vehicle Wise)" OnCheckedChanged="rdbtnLogEntry_CheckedChanged" />
                <asp:RadioButton ID="rdbtnMonthlyAllVehicleStatement" CssClass="radio" AutoPostBack="false" GroupName="radiobutton" runat="server" Text="All Vehicle Statement" OnCheckedChanged="rdbtnMonthlyAllVehicleStatement_CheckedChanged" />
                <asp:RadioButton ID="rdbtnPurchaseSpareParts" CssClass="radio" AutoPostBack="false" GroupName="radiobutton" runat="server" Text="Purchase Spareparts" OnCheckedChanged="rdbtnPurchaseSpareParts_CheckedChanged" />
                   
                    </div>

                <div class="col-md-6 reportsRadioss">
                <asp:RadioButton ID="rdBtnDriver" CssClass="radio" GroupName="radiobutton" AutoPostBack="false"  runat="server" Text="Driver Information" OnCheckedChanged="rdBtnDriver_CheckedChanged" />
                <asp:RadioButton ID="rdbtnExpense" runat="server" CssClass="radio" AutoPostBack="false"  GroupName="radiobutton" Text="Expense" OnCheckedChanged="rdbtnExpense_CheckedChanged" />
                <asp:RadioButton ID="rdbtnMonthlyIndividualVehicleStatement" CssClass="radio" AutoPostBack="false" GroupName="radiobutton" runat="server" Text="Individual Vehicle Statement" OnCheckedChanged="rdbtnMonthlyIndividualVehicleStatement_CheckedChanged" />

                </div>
             </div>


             <div class="row" style="margin-top:20px;">
                 <div class="form-group">
                <asp:Label ID="lblPurchaseDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Date:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPurchaseDate" runat="server" CssClass="form-control input-sm NRDate" Style="width: 240px;" placeholder="Date"></asp:TextBox>
                </div>

                <asp:Label ID="lblVehicleRegNumber" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle Registration :"></asp:Label>
                <div class="col-md-3">
                   <asp:DropDownList ID="ddlVehicliRegistration" runat="server" CssClass="from-control input-sm" Style="width: 252px; height: 29px;">
                    </asp:DropDownList>
                </div>
               </div>
             
             
             <div class="form-group">
                <asp:Label ID="lblDepartment" CssClass="col-md-2 control-label driverid" runat="server" Text="Department :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="from-control input-sm" Style="width: 252px; height: 29px;">
                        </asp:DropDownList>
                </div>
               </div>



             </div>
             
             <!-- Button -->
            <div class="form-group" style="margin-top: 20px;">
                <label class="col-md-2 control-label" for="add"></label>
                <div class="col-md-6">
                   <asp:Button ID="btnPreview" runat="server" Text="preview" OnClientClick="target =_blank" CssClass="btn btn-success rptbuttonclass" OnClick="btnPreview_Click" />
                </div>

            </div>
         </div>'

         </form>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../Resourcs/bootstrap/js/bootstrap.js"></script>
    <script src="../Resourcs/bootstrap/js/bootstrap.min.js"></script>
    <script src="../Resourcs/bootstrap/js/jquery-1.11.0.min.js"></script>
    <script src="../Resourcs/bootstrap/js/jquery-ui.js"></script>
    <script src="../Resourcs/bootstrap/js/jquery-ui.min.js"></script>


    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
<script type="text/javascript">

    //$(document).ready(function () {

    //});
    $(function () {
        $('.NRDate').datepicker({
            dateFormat: 'yy-mm-dd',
            altField: '#thealtdate',
            altFormat: 'yy-mm-dd'
        });
        $('.nav-tabs-dropdown').each(function (i, elm) {
            $(elm).text($(elm).next('ul').find('li.active a').text());
        });
        $('.nav-tabs-dropdown').on('click', function (e) {
            e.preventDefault();
            $(e.target).toggleClass('open').next('ul').slideToggle();
        });
        $('#nav-tabs-wrapper a[data-toggle="tab"]').on('click', function (e) {

            e.preventDefault();

            $(e.target).closest('ul').hide().prev('a').removeClass('open').text($(this).text());
        });
    });

</script>
</asp:Content>