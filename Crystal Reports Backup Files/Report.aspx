<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="AMS.VMS.Pages.Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
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
            dateFormat: 'dd-mm-yy',
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

        <!-- Text input-->

                <asp:RadioButton ID="rdBtnvehiCleSchuduleManuale" runat="server" Text="Vehicle Schdule" />
            
               <asp:Button ID="btnPreview" runat="server" Text="preview"  OnClick="btnPreview_Click" />
      

    
    </form>
</asp:Content>
