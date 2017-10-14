<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="SparePartsReceived.aspx.cs" Inherits="AMS.VMS.Pages.SparePartsReceived" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="form-horizontal cmxform commentForm" runat="server" style="overflow: hidden;">

        <p class="heading" style="margin-top: 20px; margin-bottom: 15px; font-size: 16px;">Spareparts purchase</p>
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">
            <div class="form-group" style="margin-top: 114px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Received ID :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm" ReadOnly="true"></asp:TextBox>
                </div>

                <asp:Label ID="lblVehicleRegistation" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle Registration:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlRegistration" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="lblCategory" CssClass="col-md-2 control-label driverid" runat="server" Text="Item Category :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="from-control input-sm" AutoPostBack="true" Style="width: 311px; height: 29px;" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>

                <asp:Label ID="lblItemName" CssClass="col-md-2 control-label driverid" runat="server" Text="Item Name:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlItemName" runat="server" CssClass="from-control input-sm" AutoPostBack="true" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblVendorName" CssClass="col-md-2 control-label driverid" runat="server" Text="Vendor Name :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlVendor" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>

                <asp:Label ID="lblRecDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Receive Date:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtRecDate" TextMode="Date" runat="server" CssClass="form-control input-sm NRDate" Style="width: 257px;" placeholder="Receive Date"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblWarrenty" CssClass="col-md-2 control-label driverid" runat="server" Text="Warrenty Period:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtWarrenty" TextMode="Number" runat="server" CssClass="form-control input-sm" placeholder="Warrenty Period"></asp:TextBox>
                </div>

                <asp:Label ID="lblWarrentyEndDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Warrenty End Date:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtWarrentEndDate" TextMode="Date" runat="server" CssClass="form-control input-sm NRDate" Style="width: 257px;" placeholder="Warrenty Date"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="lblUnitPrice" CssClass="col-md-2 control-label driverid" runat="server" Text="Unit Price:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtUnitPrice" TextMode="Number" runat="server" CssClass="form-control input-sm" AutoPostBack="true" OnTextChanged="txt_TextChanged" placeholder="Unit Price"></asp:TextBox>
                </div>

                <asp:Label ID="lblQuantity" CssClass="col-md-2 control-label driverid" runat="server" Text="Quantity :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" TextMode="Number" runat="server" CssClass="form-control input-sm" AutoPostBack="true" OnTextChanged="txt_TextChanged" placeholder="Quantity"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblTotalPrice" CssClass="col-md-2 control-label driverid" runat="server" Text="Total Price:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control input-sm" ReadOnly="true" placeholder="Total Price"></asp:TextBox>
                </div>

                <asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text="Department/Depot :"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlDept" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
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

            <%--   <div class="form-group" style="margin-left: 20px; margin-top: 20px;">

                    <asp:GridView ID="grdSparepartsReceived" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                         AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdSparepartsReceived_PageIndexChanging" OnSelectedIndexChanged="grdSparepartsReceived_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField HeaderText="Received Id" DataField="Id"></asp:BoundField>
                            <asp:BoundField HeaderText="Department" DataField="Department"></asp:BoundField>
                            <asp:BoundField HeaderText="Category" DataField="Category"></asp:BoundField>
                            <asp:BoundField HeaderText="Item Name" DataField="ItemName"></asp:BoundField>
                            <asp:BoundField HeaderText="Vendor Name" DataField="VendorName"></asp:BoundField>
                            <asp:BoundField HeaderText="Receive Date" DataField="ReceiveDate"></asp:BoundField>
                            <asp:BoundField HeaderText="Warrenty Period" DataField="WarrentyPeriod"></asp:BoundField>
                            <asp:BoundField HeaderText="Warrenty EndDate" DataField="WarrentyEndDate"></asp:BoundField>
                            <asp:BoundField HeaderText="Unit Price" DataField="UnitPrice"></asp:BoundField>
                            <asp:BoundField HeaderText="Receive Quantity" DataField="RecQuantity"></asp:BoundField>
                             <asp:BoundField HeaderText="Total Price" DataField="TotalPrice"></asp:BoundField>
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
</div>--%>
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
