<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="OtherExpanse.aspx.cs" Inherits="AMS.VMS.Pages.OtherExpanse" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden;">

        <p class="heading" style="margin-top: 20px;">Other Expanse</p>
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">

            <div class="form-group" style="margin-top: 114px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Expanse Id:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                </div>

                <asp:Label ID="hfh" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle Registration Number :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlVehicleRegistration" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblTotalEngineAmt" CssClass="col-md-2 control-label driverid" runat="server" Text=" Total Engine Oil Amount :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTotalEngineOilAmt" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder="Engine Oil Purchase in Taka"></asp:TextBox>
                </div>
                <asp:Label ID="lblTotalServiceAmt" CssClass="col-md-2 control-label driverid" runat="server" Text=" Total Service Amount :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTotalServiceAmt" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder="Total Service Amount"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="lblPurchaseDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Purchase Date :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPurchaseDate" TextMode="Date" runat="server" CssClass="form-control input-sm NRDate" Style="width: 240px;" placeholder=" Purchase Date"></asp:TextBox>
                </div>
                <asp:Label ID="lblRepairAmount" CssClass="col-md-2 control-label driverid" runat="server" Text=" Total Repair Amount :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTotalRepairAmt" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder="Total Repair Amount"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblTax" CssClass="col-md-2 control-label driverid" runat="server" Text="Tax-Token/Fitness Renew :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTaxAmount" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder="Tax-Token/Fitness Renew Amount "></asp:TextBox>
                </div>
                <asp:Label ID="lblOtherExpanse" CssClass="col-md-2 control-label driverid" runat="server" Text="Other Expanse Amount :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtOtherExpanse" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder="Other Expanse Amount"></asp:TextBox>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group" style="margin-top: 20px;">
                <label class="col-md-2 control-label" for="add"></label>
                <div class="col-md-6">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success saveIncident" OnClick="btnSave_Click" />

                    <asp:Button ID="btnEdit" runat="server" Text="Update" CssClass="btn btn-info editIncident" OnClick="btnEdit_Click" />

                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger editIncident" />
                    <asp:Button ID="btnFind" runat="server" Text="Find Expense" CssClass="btn btn-warning findexpense" OnClick="btnFind_Click" />
                </div>

            </div>

        </div>
    </form>
    
<nav class="navbar navbar-default">
        <div class="footer container" style="text-align: center; margin-top: 15px; ">
            <p>Copyright &copy; 2016 Code &amp; Design HDC(MIS). All rights reserved.</p>
        </div>
 </nav>  
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
    <script src="../Resourcs/JS/jquery.js"></script>
    <script src="../Resourcs/JS/jquery.validate.js"></script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

    <%--  <script type="text/javascript">
        $(document).ready(function () {
            $(".commentForm").validate();
        });

   </script>
     <style>
        label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: lighter;
    color: red;
}

    </style>--%>

    <script type="text/javascript">

        //$(document).ready(function () {

        //});
        $(function () {
            $('.NRDate').datepicker({
                dateFormat: 'yy-mm-dd',
                altField: '#thealtdate',
                altFormat: 'yy-mm-dd'
            });

        });

        $(function () {
            //$('.basicExample').timepicker();

            $('.basicExample').timepicker({ 'scrollDefault': 'now' });
        });


    </script>

</asp:Content>
