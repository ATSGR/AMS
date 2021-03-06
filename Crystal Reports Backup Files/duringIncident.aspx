﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="duringIncident.aspx.cs" Inherits="AMS.VMS.Pages.duringIncident" %>
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
    <link href="../Resourcs/Timepicker/jquery.timepicker.css" rel="stylesheet" />
    <script src="../Resourcs/Timepicker/jquery.timepicker.js"></script>
    <script src="../Resourcs/Timepicker/jquery.timepicker.min.js"></script>
    <link href="../Resourcs/Timepicker/site.css" rel="stylesheet" />
    <script src="../Resourcs/Timepicker/site.js"></script>
<script type="text/javascript">

    //$(document).ready(function () {

    //});
    $(function () {
        $('.NRDate').datepicker({
            dateFormat: 'dd-mm-yy',
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form class="form-horizontal" runat="server" style="overflow: hidden;">


        <p class="heading"> New Incident</p>
<div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left:15px; margin-right:15px;">
        <div class="form-group" style="margin-top:20px;">
            <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Incident ID :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm " placeholder="Incident Id" ReadOnly="true"></asp:TextBox>
            </div>

            <asp:Label ID="lblVehicle" CssClass="col-md-2 control-label driverid" runat="server" Text=" Vehicle :"></asp:Label>
            <div class="col-md-3">
                <%--<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm " placeholder="National ID"></asp:TextBox>  --%>
                <asp:DropDownList ID="ddlVehicle" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 30px;">
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="lblLocation" CssClass="col-md-2 control-label driverid" runat="server" Text="Incident Location :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control input-sm resige " placeholder=" Incident Loation" TextMode="MultiLine" Columns="20" Rows="2"></asp:TextBox>
            </div>

            <%--<asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text="Incident Time :"></asp:Label>
            <div class="col-md-3">
              <asp:TextBox ID="txtIncidentTime" runat="server" CssClass="form-control input-sm " placeholder="Incident Time"></asp:TextBox>
            </div>--%>
            <asp:Label ID="lblDriver" CssClass="col-md-2 control-label driverid" runat="server" Text=" Driver :"></asp:Label>
            <div class="col-md-3">
                <%--<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm " placeholder="National ID"></asp:TextBox>  --%>
                <asp:DropDownList ID="ddlDriver" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                </asp:DropDownList>
            </div>

        </div>


         <div class="form-group">
            <asp:Label ID="lblPerson" CssClass="col-md-2 control-label driverid" runat="server" Text="Person List :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtPersonList" runat="server" CssClass="form-control input-sm " placeholder=" Person List"></asp:TextBox>
            </div>

            <asp:Label ID="lblDistination" CssClass="col-md-2 control-label driverid" runat="server" Text="Distination :"></asp:Label>
            <div class="col-md-3">
            <asp:DropDownList ID="ddlDestination" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 30px;">
               
                <asp:ListItem>  Incoming  </asp:ListItem>
                 <asp:ListItem> Outgoing  </asp:ListItem>

                </asp:DropDownList>
            </div>
        </div>

       <div class="form-group">
            <asp:Label ID="lblCashamt" CssClass="col-md-2 control-label driverid" runat="server" Text="Cash Amount :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtCashamt" runat="server" CssClass="form-control input-sm " placeholder=" Cash Amount"></asp:TextBox>
            </div>

            <asp:Label ID="Label2" CssClass="col-md-2 control-label driverid" runat="server" Text="Product Amount :"></asp:Label>
            <div class="col-md-3">
             <asp:TextBox ID="txtProductamt" runat="server" CssClass="form-control input-sm " placeholder=" Product Amount"></asp:TextBox>
            </div>
        </div>

    <div class="form-group">
            <asp:Label ID="lblDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Incident Date :"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control input-sm NRDate" Style="width:257px;" placeholder=" Incident Date"></asp:TextBox>
            </div>

            <%--<asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text="Incident Time :"></asp:Label>
            <div class="col-md-3">
              <asp:TextBox ID="txtIncidentTime" runat="server" CssClass="form-control input-sm " placeholder="Incident Time"></asp:TextBox>
            </div>--%>
            <asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text=" Time :"></asp:Label>
            <div class="col-md-1">
                <asp:TextBox ID="txtTime" runat="server" CssClass="form-control input-sm timepik basicExample" style="width:100px;" placeholder="Time"></asp:TextBox>
                
            </div>

        </div>
   
    
     <!-- Button -->
<div class="form-group" style="margin-top:20px;">
  <label class="col-md-1 control-label" for="add"></label>
  <div class="col-md-3">
       <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="btn btn-success" OnClick="btnSave_Click" />

      <asp:Button ID="btnUpdate" runat="server" Text="Update"  CssClass="btn btn-info" OnClick="btnUpdate_Click" />

      <asp:Button ID="btnRefresh" runat="server" Text="Clear"  CssClass="btn btn-primary" OnClick="btnRefresh_Click" />
  </div>

</div>



  <div class="form-group" style="margin-left: 20px; margin-top: 20px;">

                    <asp:GridView ID="grdNewIncidentInfo" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                         AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdNewIncidentInfo_PageIndexChanging" OnSelectedIndexChanged="grdNewIncidentInfo_SelectedIndexChanged" 
                         >
                        <Columns>
                            <asp:BoundField HeaderText="Incident Id" DataField="IncidntId"></asp:BoundField>
                            <asp:BoundField HeaderText="Vehicles Id" DataField="VId"></asp:BoundField>
                            <asp:BoundField HeaderText="Location" DataField="IncidentLocation"></asp:BoundField>
                            <asp:BoundField HeaderText="Driver" DataField="DriverId"></asp:BoundField>
                            <asp:BoundField HeaderText="Person" DataField="PersonList"></asp:BoundField>
                            <asp:BoundField HeaderText="Destination" DataField="Destination"></asp:BoundField>
                            <asp:BoundField HeaderText="Cash Amount" DataField="CashAmt"></asp:BoundField>
                            <asp:BoundField HeaderText="Product Amount" DataField="ProductAmt"></asp:BoundField>
                            <asp:BoundField HeaderText="Date" DataField="IncidentDate"></asp:BoundField>
                            <asp:BoundField HeaderText="Time" DataField="IncidentTime"></asp:BoundField>

                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                   <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink" ></asp:LinkButton>

                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <rowstyle Height="20px" />
        <alternatingrowstyle  Height="20px"/>
                        <PagerStyle BackColor="#669933" ForeColor="#333333" HorizontalAlign="Center" />

                        <HeaderStyle BackColor="#669933" Font-Bold="True" Height="30px" ForeColor="White"/>
                    </asp:GridView>

                </div>




    </div>

</form>

   

</asp:Content>
