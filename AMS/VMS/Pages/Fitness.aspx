﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="Fitness.aspx.cs" Inherits="AMS.VMS.Pages.Fitness" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="../Resourcs/Scripts/jquery-3.2.1.min.js"></script>
    <script src="../Resourcs/Scripts/jquery-3.2.1.js"></script>
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
    <script src="../Resourcs/JS/jquery.js"></script>
    <script src="../Resourcs/JS/jquery.validate.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-fluid">
        <div class="panel panel-primary" style="margin: 20px;">
            <div class="panel-heading">
                <h3 class="panel-title headtitle" style="font-family: monospace"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Vehicles Fitness Information</h3>
            </div>
            <div class="panel-body" style="margin-bottom: -100px;">
                <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden">
                    <div style="margin-left: 15px; margin-right: 10px;">

                        <div class="form-group" style="margin-top: 100px;">

                            <asp:Label ID="Label2" CssClass="col-md-2  control-label driverid" runat="server" Text="Code :"></asp:Label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtCode" runat="server" CssClass="form-control input-sm" Style="background-color: #e6dfab;" ReadOnly="true"></asp:TextBox>
                            </div>

                            <asp:Label ID="lblCode" CssClass="col-md-2  control-label driverid" runat="server" Text="Registration No:"></asp:Label>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlRegistration" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>
                        </div>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label1" CssClass="col-md-2  control-label driverid" runat="server" Text="Chesis No:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtChesisNumber" runat="server" data-rule-required="true" data-msg-required="Chasis No is Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>


                        <asp:Label ID="Label4" CssClass="col-md-2  control-label driverid" runat="server" Text="Engine No:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtEngineNo" runat="server" data-rule-required="true" data-msg-required="Engine No is Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label3" CssClass="col-md-2  control-label driverid" runat="server" Text="Description:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtvehicleDescription" runat="server" data-rule-required="true" data-msg-required="Description Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label5" CssClass="col-md-2  control-label driverid" runat="server" Text="No Of Seat:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtSeat" runat="server" data-rule-required="true" data-msg-required="No Of Seat is Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>



                    <div class="form-group">
                        <asp:Label ID="Label6" CssClass="col-md-2  control-label driverid" runat="server" Text="Cylinder:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtCylinder" runat="server" data-rule-required="true" data-msg-required="Cylinder No Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label7" CssClass="col-md-2  control-label driverid" runat="server" Text="CC:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtCC" runat="server" data-rule-required="true" data-msg-required="CC is  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label8" CssClass="col-md-2  control-label driverid" runat="server" Text="Weight(Empty):"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtWeight" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label9" CssClass="col-md-2  control-label driverid" runat="server" Text="Weight(Load):"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtLoadWeght" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" CssClass="col-md-2  control-label driverid" runat="server" Text="No Tyres:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtNoOfTyre" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label11" CssClass="col-md-2  control-label driverid" runat="server" Text="Tyre Size:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtTyreSize" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>



                    <div class="form-group">
                        <asp:Label ID="Label12" CssClass="col-md-2  control-label driverid" runat="server" Text="OverHang(Front):"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtOverHangFront" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label13" CssClass="col-md-2  control-label driverid" runat="server" Text="OverHang(Back):"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtOverHangBack" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label14" CssClass="col-md-2  control-label driverid" runat="server" Text="Name:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtName" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label15" CssClass="col-md-2  control-label driverid" runat="server" Text="Father/Husband:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtFather" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label16" CssClass="col-md-2  control-label driverid" runat="server" Text="Address:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtAddress" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label18" CssClass="col-md-2  control-label driverid" runat="server" Text="TIN:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtTin" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>



                    <div class="form-group">

                        <asp:Label ID="Label19" CssClass="col-md-2  control-label driverid" runat="server" Text="From Date:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtFrmDate" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm NRDate"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label17" CssClass="col-md-2 col-md-offset-1  control-label driverid" runat="server" Text="To Date:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtTodate" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm NRDate"></asp:TextBox>
                        </div>

                    </div>

                    <div class="form-group">

                        <asp:Label ID="Label20" CssClass="col-md-2  control-label driverid" runat="server" Text="Approved Date:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtApprovedDate" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm NRDate"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label21" CssClass="col-md-2 col-md-offset-1 control-label driverid" runat="server" Text="Visit Date:"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtVisitDate" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm NRDate"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">

                        <asp:Label ID="Label22" CssClass="col-md-2  control-label driverid" runat="server" Text="Visitor Name:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtVisitor" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                        <asp:Label ID="Label23" CssClass="col-md-2  control-label driverid" runat="server" Text="Designation:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtDesignation" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>

                    </div>

                    <div class="form-group">

                        <asp:Label ID="Label24" CssClass="col-md-2  control-label driverid" runat="server" Text="Area Name:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtArea" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>


                        <asp:Label ID="Label25" CssClass="col-md-2  control-label driverid" runat="server" Text="Certification No:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtCertifivateNo" runat="server" data-rule-required="true" data-msg-required="Certification No is Required" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-6 col-md-offset-10">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-group-lg btn-primary" OnClick="btnSave_Click" />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-group-lg  btn-success" />
                        </div>
                    </div>
                </form>

            </div>

        </div>
    </div>

    <script type="text/javascript">
        //script for datepicker...
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
        //script for validation check 

        $(document).ready(function () {
            $(".commentForm").validate();
        });
    </script>
</asp:Content>
