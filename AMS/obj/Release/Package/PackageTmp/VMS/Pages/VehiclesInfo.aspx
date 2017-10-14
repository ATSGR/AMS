<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="VehiclesInfo.aspx.cs" Inherits="AMS.VMS.Pages.VehiclesInfo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal backgroundcar cmxform commentForm" runat="server" style="overflow: hidden;">

        <div class="container">
            <%--  <h2>Nav-tabs Dropdown <small>Vertical</small></h2>
    <p class="lead">Dropdown appears at width less than or equal to 768px</p>--%>
            <div class="row">
                <div class="col-sm-2" style="margin-top: 128px;">
                    <a href="#" class="nav-tabs-dropdown btn btn-block btn-primary">Tabs</a>
                    <ul id="nav-tabs-wrapper" class="nav nav-tabs nav-pills nav-stacked well">
                        <li class="active"><a href="#vtab1" data-toggle="tab">Basic Information</a></li>
                        <li><a href="#vtab2" data-toggle="tab">Registration</a></li>
                      <%--  <li><a href="#vtab3" data-toggle="tab">Mechanical Information</a></li>
                        <li><a href="#vtab4" data-toggle="tab">Insurance Information</a></li>
                        <li><a href="#vtab5" data-toggle="tab">Fitness Information</a></li>--%>
                    </ul>
                </div>
                <div class="col-sm-10" style="margin-top: 125px;">
                    <div class="tab-content" style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245);">
                        <div role="tabpanel" class="tab-pane fade in active" id="vtab1" style="margin-top: 125px;">
                            <div class="form-group">
                                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="ID :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtVehicleID" ReadOnly="true" runat="server" CssClass="form-control input-sm " placeholder="Vehicle ID "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblRegno" CssClass="col-md-2 control-label driverid" runat="server" Text="Serial No :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtVhNo" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Serial  is required" placeholder="Serial No "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label7" CssClass="col-md-2 control-label driverid" runat="server" Text="Purchase Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtdtPurchase" TextMode="Date" runat="server" CssClass="form-control input-sm date NRDate" data-rule-required="true" data-msg-required="Purchase Date is required" placeholder="Purchase Date"></asp:TextBox>

                                </div>

                                <asp:Label ID="Label8" CssClass="col-md-2 control-label driverid" runat="server" Text="Waranty :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtWaranty" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder="Waranty "></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblChassisno" CssClass="col-md-2 control-label driverid" runat="server" Text="Chassis No :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtChassisno" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Chassis Number is required" placeholder=" Chasss no "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblBrandName" CssClass="col-md-2 control-label driverid" runat="server" Text="Price :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtPrice" TextMode="Number" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Price is required" placeholder="Cost Price "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblModelName" CssClass="col-md-2 control-label driverid" runat="server" Text="Model Name :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtModelName" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Model is required" placeholder=" Model Name "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblVehicleType" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle Type :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtVehicletype" runat="server" CssClass="form-control input-sm " placeholder="Vehicle Type "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblModelYear" CssClass="col-md-2 control-label driverid" runat="server" Text="Model Year :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtModelYear" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Model Year is required" placeholder=" Model Year "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblRegistrationYear" CssClass="col-md-2 control-label driverid" runat="server" Text="Brand Name  :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtBrand" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Brand Name is required" placeholder="Brand Name  "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblTypeofbody" CssClass="col-md-2 control-label driverid" runat="server" Text="Type Of Body :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtBodytype" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Body type is required" placeholder=" Type Of Body "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblBodycolor" CssClass="col-md-2 control-label driverid" runat="server" Text="Body Color :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtBodyColor" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Body Color is required" placeholder="Body Color "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblTiresize" CssClass="col-md-2 control-label driverid" runat="server" Text="Tire Size :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtTireSize" runat="server" CssClass="form-control input-sm " placeholder=" Tire Size "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblFueltype" CssClass="col-md-2 control-label driverid" runat="server" Text="Fuel Type:"></asp:Label>
                                <div class="col-md-3">
                                    <%--<asp:TextBox ID="txtFueltype" runat="server" CssClass="form-control input-sm " placeholder="Fuel Type "></asp:TextBox>--%>

                                    <asp:DropDownList ID="ddlFuelType" runat="server" CssClass="from-control input-sm" Style="width: 222px; height: 30px;">

                                        <asp:ListItem> Select Fuel Type </asp:ListItem>
                                        <asp:ListItem>Gas</asp:ListItem>
                                        <asp:ListItem>Diesel</asp:ListItem>
                                        <asp:ListItem>Petrol/Octen</asp:ListItem>
                                    </asp:DropDownList>


                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblDept" CssClass="col-md-2 control-label driverid" runat="server" Text="Dept/Depot:"></asp:Label>
                                <div class="col-md-3">
                                    <%-- <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control input-sm " placeholder=" Department or Depot "></asp:TextBox>--%>
                                    <asp:DropDownList ID="ddlDepartment" AutoPostBack="false" runat="server" CssClass="from-control input-sm" Style="width: 215px; height: 30px;">
                                    </asp:DropDownList>
                                </div>

                                <asp:Label ID="lblseatingcapacity" CssClass="col-md-2 control-label driverid" runat="server" Text="Seating Capacity:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtSeatingCapa" TextMode="Number" runat="server" CssClass="form-control input-sm" placeholder="Seating Capacity "></asp:TextBox>
                                </div>


                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblCylinder" CssClass="col-md-2 control-label driverid" Style="" runat="server" Text="   Cylinder Quantity:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtCylQty" TextMode="Number" runat="server" CssClass="form-control input-sm " placeholder=" Cylinder Quantity "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label6" CssClass="col-md-2 control-label driverid" runat="server" Text="Vendor :"></asp:Label>
                                <div class="col-md-2">
                                    <asp:DropDownList ID="ddlVendor" runat="server" CssClass="form-control input-sm " placeholder="--Select Vendor-- "></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-4" style="margin-left: 150px; margin-top: 15px; padding-bottom: 26px;">
                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success save" OnClick="btnSave_Click" />
                                    <%--<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info update" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary clear" />--%>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="vtab2" style="margin-top: 125px;">
                            <div class="form-group">
                                <asp:Label ID="lblVehicleId" CssClass="col-md-2 control-label driverid" runat="server" Text="Chassis Number :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="ddlVehicleId" AutoPostBack="false" runat="server" CssClass="from-control input-sm" Style="width: 218px; height: 32px;">
                                    </asp:DropDownList>
                                </div>

                                <asp:Label ID="lblDOP" CssClass="col-md-2 control-label driverid" runat="server" Text="Registration Date :"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtDateRegistration" TextMode="Date" runat="server" CssClass="form-control input-sm date NRDate" data-rule-required="true" data-msg-required="Registration Date is required" placeholder=" Date Of Registration "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblPcost" CssClass="col-md-2 control-label driverid" runat="server" Text="Registration No :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtRegistration" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Registration Number is required" placeholder=" Registration No "></asp:TextBox>
                                </div>
                                <asp:Label ID="Label10" CssClass="col-md-2 control-label driverid" runat="server" Text="License No :"></asp:Label>

                                <div class="col-md-4">
                                    <asp:TextBox ID="txtLicenseNo" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="License No is required" placeholder=" License No "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblExpirements" CssClass="col-md-2 control-label driverid" runat="server" Text=" license Expired :"></asp:Label>

                                <div class="col-md-3">
                                    <asp:TextBox ID="txtLicExpired" runat="server" CssClass="form-control input-sm date NRDate " placeholder=" Date Of license Expired "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label15" CssClass="col-md-2 control-label driverid" runat="server" Text=" Registered To :"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtRegisteredTo" runat="server" CssClass="form-control input-sm " placeholder="Registered To "></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label12" CssClass="col-md-2 control-label driverid" runat="server" Text=" Address :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control input-sm " placeholder="Address "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label11" CssClass="col-md-2 control-label driverid" runat="server" Text=" Email :"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control input-sm" placeholder="Address "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label13" CssClass="col-md-2 control-label driverid" runat="server" Text="Contact :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control input-sm " placeholder=" Contact "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label14" CssClass="col-md-2 control-label driverid" runat="server" Text="Reg. Document :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDocfile" runat="server" CssClass="form-control input-sm " placeholder="Document "></asp:TextBox>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />

                                </div>
                            </div>

                            <div class="form-group" style="margin-bottom: 1px;">
                                <div class="col-md-9" style="margin-left: 150px; margin-top: 15px; padding-bottom: 26px;">
                                    <asp:Button ID="BtnSave1" runat="server" Text="Save" CssClass="btn btn-success save" OnClick="btnSave1_Click" />
                                    <asp:Button ID="btnUpdate1" runat="server" Text="Update" CssClass="btn btn-success save" OnClick="btnUpdate1_Click" />
                                    <asp:Button ID="btnRefresh1" runat="server" CssClass="btn btn-primary" Style="width: 95px; margin-left: 15px;" Text="Clear" />
                                </div>
                            </div>



                            <div class="form-group" style="margin-left: 30px">
                                <label class="col-md-2 control-label" for="add"></label>
                                <asp:GridView ID="grdVehicleRegistration" runat="server" PageSize="5" Width="900" AllowPaging="True"
                                    AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField HeaderText="Id" DataField="VId"></asp:BoundField>

                                        <asp:BoundField HeaderText="RegNo" Visible="false" DataField="RegNo"></asp:BoundField>
                                        <asp:BoundField HeaderText="RegDate" DataField="RegDate"></asp:BoundField>

                                        <asp:BoundField HeaderText="LicNo" DataField="LicNo"></asp:BoundField>

                                        <asp:BoundField DataField="LicenseExDate" HeaderText="License Ex.Date"></asp:BoundField>

                                        <asp:BoundField DataField="RegTo" HeaderText="Registered To"></asp:BoundField>

                                        <asp:BoundField DataField="Address" HeaderText="Address"></asp:BoundField>

                                        <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>

                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo"></asp:BoundField>

                                        <asp:TemplateField HeaderText="View">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" Text="View" OnClick="btnlink" OnClientClick="showConfirm(event)" ID="btnlink"></asp:LinkButton>


                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Download">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" Text="Download" OnClick="btnDownload" ID="btnDownload"></asp:LinkButton>
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
                        <div role="tabpanel" class="tab-pane fade in" id="vtab3" style="margin-top: 100px;">
                            <div class="form-group">
                                <asp:Label ID="lblMechaInfo" CssClass="col-md-2 control-label driverid" runat="server" Text="Mechanical No:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtMechaNo" runat="server" CssClass="form-control input-sm " placeholder=" Mechanical No "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblEngineCap" CssClass="col-md-2 control-label driverid" runat="server" Text="Engine Capacity :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtEngineCapacity" runat="server" CssClass="form-control input-sm " placeholder="Engine Capacity "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblMileage" CssClass="col-md-2 control-label driverid" runat="server" Text="Mileage:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtMileage" runat="server" CssClass="form-control input-sm " placeholder=" Mileage "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblTransmision" CssClass="col-md-2 control-label driverid" runat="server" Text="Transmission:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtTransmission" runat="server" CssClass="form-control input-sm " placeholder="Transmission "></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div role="tabpanel" class="tab-pane fade in" id="vtab4" style="margin-top: 100px;">
                            <div class="form-group">
                                <asp:Label ID="lblInsurNo" CssClass="col-md-2 control-label driverid" runat="server" Text="Insurance No:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtInsuranceNo" runat="server" CssClass="form-control input-sm " placeholder=" Insurance No "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblRenew" CssClass="col-md-2 control-label driverid" runat="server" Text="Renew Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDateofRenew" runat="server" CssClass="form-control input-sm date NRDate" placeholder="Date of Renew "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblInserco" CssClass="col-md-2 control-label driverid" runat="server" Text="Insurance Company:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtInsuranceCom" runat="server" CssClass="form-control input-sm " placeholder=" Insurance Company "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblPreamt" CssClass="col-md-2 control-label driverid" runat="server" Text=" Premium Amount :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtPremAmt" runat="server" CssClass="form-control input-sm  " placeholder="Premium Amount"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblDueDate" CssClass="col-md-2 control-label driverid" runat="server" Text="Due Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDueDate" runat="server" CssClass="form-control input-sm date NRDate " placeholder=" Due Date "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
    
 <nav class="navbar navbar-default">
        <div class="footer container" style="text-align: center; margin-top: 15px; ">
            <p>Copyright &copy; 2016 Code &amp; Design HDC(MIS). All rights reserved.</p>
        </div>
  </nav>  
    

    <script type="text/javascript">
        function showConfirm(event) {
            event.preventDefault();
            return false;
        }
    </script>

</asp:Content>



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
    <script src="../Resourcs/JS/jquery.js"></script>
    <script src="../Resourcs/JS/jquery.validate.js"></script>

    <script type="text/javascript">

        //$(document).ready(function () {

        //});
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
    </style>
</asp:Content>










