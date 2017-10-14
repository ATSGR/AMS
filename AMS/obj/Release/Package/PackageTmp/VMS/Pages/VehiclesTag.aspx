<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="VehiclesTag.aspx.cs" Inherits="AMS.VMS.Pages.driverWithVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden;">

        <p class="heading" style="margin-top: 20px;">Tag vehicles with driver</p>
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">

            <div class="form-group" style="margin-top: 114px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Tag Id:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm" ReadOnly="true"></asp:TextBox>
                </div>

                <asp:Label ID="hfh" CssClass="col-md-2 control-label driverid" runat="server" Text="Driver Id:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlDriver" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>

            </div>

            <div class="form-group">

                <asp:Label ID="lblVehicleRegNo" CssClass="col-md-2 control-label driverid" runat="server" Text="Assign Vehicle:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlVehicleRegNo" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>

                <div class="col-md-3">
                </div>

            </div>


            <!-- Button -->
            <div class="form-group" style="margin-top: 20px;">
                <label class="col-md-2 control-label" for="add"></label>
                <div class="col-md-6">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success saveIncident" OnClick="btnSave_Click" />

                    <asp:Button ID="btnEdit" runat="server" Text="Update" CssClass="btn btn-info editIncident" />

                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger editIncident" />
                    <%--<asp:Button ID="btnFind" runat="server" Text="Find Expense" CssClass="btn btn-warning findexpense"/>--%>
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
