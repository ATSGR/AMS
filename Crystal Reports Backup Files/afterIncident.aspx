<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="afterIncident.aspx.cs" Inherits="AMS.VMS.Pages.afterIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <form class="form-horizontal img-responsive background" runat="server" style="overflow: hidden;">

        <p class="heading"> After Incident</p>
<div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left:15px; margin-right:15px;">
        <div class="form-group" style="margin-top:20px;">
            <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="ID :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm " placeholder="Id "></asp:TextBox>
            </div>

            <asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text=" Time :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtTime" runat="server" CssClass="form-control input-sm " placeholder="Time "></asp:TextBox>

            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="lblStatus" CssClass="col-md-2 control-label driverid" runat="server" Text="Status :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control input-sm " placeholder="Status "></asp:TextBox>
            </div>

            <asp:Label ID="lblRepairstatus" CssClass="col-md-2 control-label driverid" runat="server" Text=" Repair Status :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtRepstatus" runat="server" CssClass="form-control input-sm " placeholder="Repair Status  "></asp:TextBox>

            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="lblCompensation" CssClass="col-md-2 control-label driverid" runat="server" Text="Compensation :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtCompensation" runat="server" CssClass="form-control input-sm " placeholder="Compensation "></asp:TextBox>
            </div>

            <asp:Label ID="lblTreatment" CssClass="col-md-2 control-label driverid" runat="server" Text=" Treatment/ Medical Cost :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtMedicalcost" runat="server" CssClass="form-control input-sm " placeholder="Treatment Cost  "></asp:TextBox>

            </div>
        </div>
</div>
        <!-- Button -->
        <div class="form-group" style="margin-top:20px;">
            <label class="col-md-2 control-label" for="add"></label>
            <div class="col-md-3">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" />

                <asp:Button ID="btnEdit" runat="server" Text="Update" CssClass="btn btn-info" />

                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
            </div>

        </div>
        
    </form>







</asp:Content>
