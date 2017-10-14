<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="VehicleSchedule.aspx.cs" Inherits="AMS.VMS.Pages.VehicleSchedule" %>
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
    <form class="form-horizontal backgroundcar" runat="server" style="overflow: hidden;">
        <div class="container" style="margin-top:120px;">
            <div class="row">
                <div class="col-sm-2">
                    <a href="#" class="nav-tabs-dropdown btn btn-block btn-primary">Tabs</a>
                    <ul id="nav-tabs-wrapper" class="nav nav-tabs nav-pills nav-stacked well">
                        <li class="active"><a href="#vtab1" data-toggle="tab">Daily Schedule</a></li>
                        <li><a href="#vtab2" data-toggle="tab">Daily Log Entry</a></li>
                        <li><a href="#vtab3" data-toggle="tab">Mechanical Information</a></li>
                        <li><a href="#vtab4" data-toggle="tab">Insurance Information</a></li>
                        <li><a href="#vtab5" data-toggle="tab">Fitness Information</a></li>
                    </ul>
                </div>
                <div class="col-sm-10">
                    <div class="tab-content" style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245);">
                        <div role="tabpanel" class="tab-pane fade in active" id="vtab1">
                            <h5 class="header">Daily Schedule</h5>

                            <div class="form-group">
                                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="ddlVehicle" runat="server" CssClass="form-control input-sm " placeholder="--Select Vehicle-- "></asp:DropDownList>                                </div>

                                <asp:Label ID="lblRegno" CssClass="col-md-2 control-label driverid" runat="server" Text="Depot/Department:"></asp:Label>
                                <div class="col-md-3">
                              <asp:DropDownList ID="ddlDepot" runat="server" CssClass="form-control input-sm " placeholder="--Select Department-- "></asp:DropDownList>                                </div>
                            </div>

                           
                                   <div class="form-group" style="margin-top:10px; margin-left:30px">
                                       <div class="col-md-3">


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

                            </div>
                            <br />
                                <div class="form-group">


                                    <asp:Button ID="btnPreview" runat="server" Text="Preview" CssClass="btn btn-success save" OnClick="btnPreview_Click" />


                                </div>



                            </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
