<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="VehicleLogEntry.aspx.cs" Inherits="AMS.VMS.Pages.VehicleLogEntry" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden;">

        <p class="heading" style="margin-top: 20px;">Vehicle Log Entry.</p>
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">


            <div class="form-group" style="margin-top: 114px;">
                <div class="col-md-3" style="margin-left: 225PX;">
                    <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-warning" Text="Find Vehicle" OnClick="btnEdit_Click" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Log ID:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    <%-- <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-success" Text="Edit" OnClick="btnEdit_Click"  />--%>
                </div>

                <asp:Label ID="lblVehicleRegistration" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle Registration No:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlVehicleRegistrationNo" AutoPostBack="true" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;" OnSelectedIndexChanged="ddlVehicleRegistrationNo_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblFromDate" CssClass="col-md-2 control-label driverid" runat="server" Text="From Date:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtFromDate" runat="server" AutoPostBack="true" CssClass="form-control input-sm NRDate" Style="width: 257px;" placeholder=" From Date" OnTextChanged="txtFromDate_TextChanged"></asp:TextBox>
                </div>

                <asp:Label ID="lblDepot" CssClass="col-md-2 control-label driverid" runat="server" Text="Depot:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlDepot" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblRoadName" CssClass="col-md-2 control-label driverid" runat="server" Text="Road Name:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtRoadName" runat="server" CssClass="form-control input-sm" placeholder="Road Name" OnTextChanged="txtRoadName_TextChanged"></asp:TextBox>
                </div>

                <asp:Label ID="Label2" CssClass="col-md-2 control-label driverid" runat="server" Text="Nature Of Work:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtNatureOfWork" runat="server" CssClass="form-control input-sm" placeholder="Nature Of Work"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFromTime" CssClass="col-md-2 control-label driverid" runat="server" Text="From Time:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtFromTime" runat="server" CssClass="form-control input-sm timepik basicExample" Style="width: 100px;" placeholder="From Time"></asp:TextBox>
                </div>

                <asp:Label ID="lblIntime" CssClass="col-md-2 control-label driverid" runat="server" Text="In Time:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtIntime" runat="server" CssClass="form-control input-sm timepik basicExample" Style="width: 100px;" placeholder="In Time"></asp:TextBox>
                </div>

                <asp:Label ID="Label6" CssClass="col-md-1 control-label driverid pkb" runat="server" Text="PQB:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPKB" runat="server" Text="35" CssClass="form-control input-sm timepik" Style="width: 100px; margin-left: 991px; margin-top: -28px;" placeholder="PKB"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblMilageIn" CssClass="col-md-2 control-label driverid" runat="server" Text="Mileage In:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMileageIn" runat="server" CssClass="form-control input-sm" placeholder="Mileage In"></asp:TextBox>
                </div>

                <asp:Label ID="lblMileageOut" CssClass="col-md-2 control-label driverid" runat="server" Text="Mileage Out:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMileageOut" runat="server" CssClass="form-control input-sm" placeholder="Mileage Out"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblOpenBalance" CssClass="col-md-2 control-label driverid" runat="server" Text="Open Balance:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtOpenBalance" runat="server" CssClass="form-control input-sm" placeholder="Open Banlace"></asp:TextBox>
                </div>

                <asp:Label ID="lblIssuTaka" CssClass="col-md-2 control-label driverid" runat="server" Text="Issuein Taka:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtIssueIntaka" runat="server" CssClass="form-control input-sm" placeholder="Issue In taka"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label driverid" runat="server" Text="Name of Identing Authority:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDriver" runat="server" CssClass="form-control input-sm" placeholder="Name of Identing Authority"></asp:TextBox>
                </div>

                <asp:Label ID="Label3" CssClass="col-md-2 control-label driverid" runat="server" Text="To Depot:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtto" runat="server" CssClass="form-control input-sm" placeholder="To Depot"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" CssClass="col-md-2 control-label driverid" runat="server" Text="Closeing Balance:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtClosingBalance" runat="server" CssClass="form-control input-sm" placeholder="Closing Balance"></asp:TextBox>
                </div>

                <asp:Label ID="Label5" CssClass="col-md-2 control-label driverid" runat="server" Text="Octen Issue In Taka:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtOctenIssueIntaka" runat="server" CssClass="form-control input-sm" placeholder="Issue In Taka"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFuelType" CssClass="col-md-2 control-label driverid" runat="server" Text="Running By:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlFuelType" runat="server" CssClass="from-control input-sm" Style="width: 222px; height: 30px;">

                        <asp:ListItem> Select Fuel Type </asp:ListItem>
                        <asp:ListItem>Gas</asp:ListItem>
                        <asp:ListItem>Diesel</asp:ListItem>
                        <asp:ListItem>Petrol/Octen</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>


           <%-- <div class="form-group" style="margin-left: 400px;">
                               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="5" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="413px" CssClass="gridview">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Name" DataField="DriverName"></asp:BoundField>
                                             

                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Select" ID="btnlink1" OnClick="btnlink1"></asp:LinkButton>

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

                    <PagerStyle BackColor="#669933" ForeColor="#333333" HorizontalAlign="Center" />

                    <HeaderStyle BackColor="#669933" Font-Bold="True" Height="30px" ForeColor="White" />
                </asp:GridView>

                <div style="float: right!important; margin-right: 252px;">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" PageSize="5" AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging"
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
                        CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="413px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField HeaderText="Name" DataField="DepotName"></asp:BoundField>
                                                       
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" Text="Select" ID="btnlink" OnClick="btnlink"></asp:LinkButton>

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

                        <PagerStyle BackColor="#669933" ForeColor="#333333" HorizontalAlign="Center" />

                        <HeaderStyle BackColor="#669933" Font-Bold="True" Height="30px" ForeColor="White" />
                    </asp:GridView>
                </div>

            </div>--%>

            <!-- Button -->
            <div class="form-group" style="margin-top: 100px;">
                <label class="col-md-2 control-label" for="add"></label>
                <div class="col-md-3">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success saveIncident" OnClick="btnSave_Click" />

                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info editIncident" />

                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger editIncident" />
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
    <link type="text/css" href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link type="text/css" href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link type="text/css" href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link type="text/css" href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" href="../Resourcs/CSS/main.css" rel="stylesheet" />
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
















