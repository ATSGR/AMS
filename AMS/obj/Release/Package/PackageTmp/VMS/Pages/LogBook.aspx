﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="LogBook.aspx.cs" Inherits="AMS.VMS.Pages.LogBook" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden;">

        <p class="heading" style="margin-top: 20px;">Schedule of Vehicles</p>
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">
            <div class="form-group" style="margin-top: 114px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="ID :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm" ReadOnly="true"></asp:TextBox>
                </div>

                <asp:Label ID="lblVehicle" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlVehicle" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>
            </div>

            <%--  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="Warrenty is Required"
         placeholder="Warrenty Period "></asp:TextBox>--%>

            <div class="form-group">

                <asp:Label ID="lblRepairstatus" CssClass="col-md-2 control-label driverid" runat="server" Text="Serial Number:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSerial" runat="server" CssClass="form-control input-sm " placeholder="Serial Number"></asp:TextBox>
                </div>
                <asp:Label ID="lblCompensation" CssClass="col-md-2 control-label driverid" runat="server" Text="Driver :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlDriver" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>

            </div>


            <div class="form-group">

                <asp:Label ID="lblDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Date:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPurcaseDate" runat="server" CssClass="form-control input-sm NRDate" Style="width: 257px;" placeholder="Date"></asp:TextBox>
                </div>
                <asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text="Time :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTime" runat="server" CssClass="form-control input-sm timepik basicExample" Style="width: 100px;" placeholder="Time"></asp:TextBox>
                </div>

            </div>

            <div class="form-group">

                <asp:Label ID="lblMiter" CssClass="col-md-2 control-label driverid" runat="server" Text="Meter Reading:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMiterreading" runat="server" CssClass="form-control input-sm " placeholder="Meter Reading"></asp:TextBox>
                </div>
                <asp:Label ID="lblLiter" CssClass="col-md-2 control-label driverid" runat="server" Text="Liter :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtLiter" runat="server" CssClass="form-control input-sm " placeholder="Liter"></asp:TextBox>
                </div>

            </div>


            <div class="form-group">

                <asp:Label ID="lblAmount" CssClass="col-md-2 control-label driverid" runat="server" Text="Amount:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control input-sm " placeholder="Amount"></asp:TextBox>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group" style="margin-top: 20px;">
                <label class="col-md-2 control-label" for="add"></label>
                <div class="col-md-3">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success saveIncident" OnClick="btnSave_Click" />

                    <asp:Button ID="btnEdit" runat="server" Text="Update" CssClass="btn btn-info editIncident" OnClick="btnEdit_Click" />

                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger editIncident" OnClick="btnDelete_Click" />
                </div>

            </div>

            <div class="form-group" style="margin-left: 20px; margin-top: 20px;">

                <asp:GridView ID="grdLogBookInfo" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                    AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdLogBookInfo_PageIndexChanging" OnSelectedIndexChanged="grdLogBookInfo_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField HeaderText=" Id" DataField="Id"></asp:BoundField>
                        <asp:BoundField HeaderText="Vehicle" DataField="VehicleId"></asp:BoundField>
                        <asp:BoundField HeaderText="Serial Number" DataField="SerialNumber"></asp:BoundField>
                        <asp:BoundField HeaderText="Driver" DataField="DriverId"></asp:BoundField>
                        <asp:BoundField HeaderText="Purcase Date" DataField="PurcaseDate"></asp:BoundField>
                        <asp:BoundField HeaderText="Purchase Time" DataField="PurchaseTime"></asp:BoundField>
                        <asp:BoundField HeaderText="Meter Rading" DataField="MeterRading"></asp:BoundField>
                        <asp:BoundField HeaderText="Liter" DataField="Liter"></asp:BoundField>
                        <asp:BoundField HeaderText="Amount" DataField="Amount"></asp:BoundField>
                        <asp:TemplateField HeaderText="View">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink"></asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle Height="20px" />
                    <AlternatingRowStyle Height="20px" />
                    <PagerStyle BackColor="#669933" ForeColor="#333333" HorizontalAlign="Center" />

                    <HeaderStyle BackColor="#669933" Font-Bold="True" Height="30px" ForeColor="White" />
                </asp:GridView>
            </div>

        </div>
    </form>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

    <%--script for time picker--%>
    <script src="../Resourcs/Timepicker/GruntFile.js"></script>
    <link type="text/css" href="../Resourcs/Timepicker/jquery.timepicker.css" rel="stylesheet" />
    <script src="../Resourcs/Timepicker/jquery.timepicker.js"></script>
    <script src="../Resourcs/Timepicker/jquery.timepicker.min.js"></script>
    <link type="text/css" href="../Resourcs/Timepicker/site.css" rel="stylesheet" />
    <script src="../Resourcs/Timepicker/site.js"></script>

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
