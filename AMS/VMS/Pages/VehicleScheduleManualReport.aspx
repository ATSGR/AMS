<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="VehicleScheduleManualReport.aspx.cs" Inherits="AMS.VMS.Pages.VehicleScheduleManualReport" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form class="form-horizontal" runat="server" style="overflow: hidden;">

    <p class="heading" style="margin-top:5px;">Vehicle Report</p>

<div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left:15px; margin-right:15px;">

    <div class="form-group" style="margin-top: 144px;">
        <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Select depot/Department :"></asp:Label>
        <div class="col-md-3">
            <%--<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm " placeholder="National ID"></asp:TextBox>  --%>
            <asp:DropDownList ID="ddlDepot" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 30px;">
            </asp:DropDownList>
        </div>

        <%--<asp:Label ID="lblVehicle" CssClass="col-md-2 control-label driverid" runat="server" Text=" Vehicle :"></asp:Label>
        <div class="col-md-3">
            <asp:DropDownList ID="ddlVehicle" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 30px;">
            </asp:DropDownList>
        </div>--%>
    </div>

 <div class="form-group" style="margin-top: 10px;">
     <asp:Label ID="Label1" CssClass="col-md-2 control-label driverid" runat="server" Text=" Vehicle :"></asp:Label>
        <div class="col-md-3">
           
            <asp:DropDownList ID="ddlVehicle" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 30px;">
            </asp:DropDownList>
        </div>
    </div>


  <div class="form-group" style="margin-left: 20px; margin-top: 2px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                               BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                                               CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="413px">
                                               <AlternatingRowStyle BackColor="White" />
                                               <Columns>
                                                   <asp:BoundField HeaderText="Id" DataField="DriverId"></asp:BoundField>
                                                   <asp:BoundField HeaderText="Name" DataField="DriverName"></asp:BoundField>

                                                   <asp:TemplateField HeaderText="Select Data">
                                                       <EditItemTemplate>
                                                           <asp:CheckBox ID="CheckBox1" runat="server" />
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:CheckBox ID="CheckBox1" runat="server" />
                                                       </ItemTemplate>
                                                   </asp:TemplateField>
                                               </Columns>
                                               <FooterStyle BackColor="#CCCC99" />
                                               <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                               <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                               <RowStyle BackColor="#F7F7DE" />
                                               <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                               <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                               <SortedAscendingHeaderStyle BackColor="#848384" />
                                               <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                               <SortedDescendingHeaderStyle BackColor="#575357" />
                                           </asp:GridView>
</div>


       
   
    
     <!-- Button -->
 <div class="form-group" style="margin-left: 20px; margin-top: 20px;">
 

                          <asp:Button ID="btnPreview" runat="server" Text="Preview" CssClass="btn btn-success save" OnClick="btnPreview_Click" />
</div>

    </div>

</form>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link type="text/css" href="../Resourcs/bootstrap/css/bootstrap-theme.css"  rel="stylesheet" />
    <link  type="text/css"  href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link type="text/css"  href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link type="text/css"  href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css"  href="../Resourcs/CSS/main.css" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<%--script for time picker--%>
    <script src="../Resourcs/Timepicker/GruntFile.js"></script>
    <link type="text/css"  href="../Resourcs/Timepicker/jquery.timepicker.css" rel="stylesheet" />
    <script src="../Resourcs/Timepicker/jquery.timepicker.js"></script>
    <script src="../Resourcs/Timepicker/jquery.timepicker.min.js"></script>
    <link type="text/css"  href="../Resourcs/Timepicker/site.css" rel="stylesheet" />
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
