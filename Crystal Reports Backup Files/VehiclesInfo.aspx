<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="VehiclesInfo.aspx.cs" Inherits="AMS.VMS.Pages.VehiclesInfo" %>
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

        <div class="container">
            <%--  <h2>Nav-tabs Dropdown <small>Vertical</small></h2>
    <p class="lead">Dropdown appears at width less than or equal to 768px</p>--%>
            <div class="row">
                <div class="col-sm-2">
                    <a href="#" class="nav-tabs-dropdown btn btn-block btn-primary">Tabs</a>
                    <ul id="nav-tabs-wrapper" class="nav nav-tabs nav-pills nav-stacked well">
                        <li class="active"><a href="#vtab1" data-toggle="tab">Vehicles Information</a></li>
                        <li><a href="#vtab2" data-toggle="tab">Registration Information</a></li>
                        <li><a href="#vtab3" data-toggle="tab">Mechanical Information</a></li>
                        <li><a href="#vtab4" data-toggle="tab">Insurance Information</a></li>
                        <li><a href="#vtab5" data-toggle="tab">Fitness Information</a></li>
                    </ul>
                </div>
                <div class="col-sm-10">
                    <div class="tab-content" style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245);">
                        <div role="tabpanel" class="tab-pane fade in active" id="vtab1">
                            <h5 class="header">Vehicles Information</h5>

                            <div class="form-group">
                                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="ID :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtVehicleID" ReadOnly="true" runat="server" CssClass="form-control input-sm " placeholder="Vehicle ID "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblRegno" CssClass="col-md-2 control-label driverid" runat="server" Text="Serial No :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtVhNo" runat="server" CssClass="form-control input-sm " placeholder="Serial No "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label7" CssClass="col-md-2 control-label driverid" runat="server" Text="Purchase Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtdtPurchase" runat="server" CssClass="form-control input-sm date NRDate " placeholder="Purchase Date"></asp:TextBox>

                                </div>

                                <asp:Label ID="Label8" CssClass="col-md-2 control-label driverid" runat="server" Text="Waranty :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtWaranty" runat="server" CssClass="form-control input-sm " placeholder="Waranty "></asp:TextBox>
                                </div>
                            </div>







                            <div class="form-group">
                                <asp:Label ID="lblChassisno" CssClass="col-md-2 control-label driverid" runat="server" Text="Chassis No :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtChassisno" runat="server" CssClass="form-control input-sm " placeholder=" Chasss no "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblBrandName" CssClass="col-md-2 control-label driverid" runat="server" Text="Price :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control input-sm " placeholder="Cost Price "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblModelName" CssClass="col-md-2 control-label driverid" runat="server" Text="Model Name :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtModelName" runat="server" CssClass="form-control input-sm " placeholder=" Model Name "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblVehicleType" CssClass="col-md-2 control-label driverid" c runat="server" Text="Vehicle Type :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtVehicletype" runat="server" CssClass="form-control input-sm " placeholder="Vehicle Type "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblModelYear" CssClass="col-md-2 control-label driverid" runat="server" Text="Model Year :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtModelYear" runat="server" CssClass="form-control input-sm " placeholder=" Model Year "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblRegistrationYear" CssClass="col-md-2 control-label driverid" runat="server" Text="Brand Name  :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtBrand" runat="server" CssClass="form-control input-sm " placeholder="Brand Name  "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblTypeofbody" CssClass="col-md-2 control-label driverid" runat="server" Text="Type Of Body :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtBodytype" runat="server" CssClass="form-control input-sm " placeholder=" Type Of Body "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblBodycolor" CssClass="col-md-2 control-label driverid" runat="server" Text="Body Color :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtBodyColor" runat="server" CssClass="form-control input-sm " placeholder="Body Color "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblTiresize" CssClass="col-md-2 control-label driverid" runat="server" Text="Tire Size :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtTireSize" runat="server" CssClass="form-control input-sm " placeholder=" Tire Size "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblFueltype" CssClass="col-md-2 control-label driverid" runat="server" Text="Fuel Type:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtFueltype" runat="server" CssClass="form-control input-sm " placeholder="Fuel Type "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="lblDept" CssClass="col-md-2 control-label driverid" runat="server" Text="Dept/Depot:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control input-sm " placeholder=" Department or Depot "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblseatingcapacity" CssClass="col-md-2 control-label driverid" runat="server" Text="Seating Capacity:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtSeatingCapa" runat="server" CssClass="form-control input-sm " placeholder="Seating Capacity "></asp:TextBox>
                                </div>


                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblCylinder" CssClass="col-md-2 control-label driverid" runat="server" Text="Cylinder Quantity :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtCylQty" runat="server" CssClass="form-control input-sm " placeholder=" Cylinder Quantity "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label6" CssClass="col-md-2 control-label driverid" runat="server" Text="Vendor :"></asp:Label>
                                <div class="col-md-2">
                                    <asp:DropDownList ID="ddlVendor" runat="server" CssClass="form-control input-sm " placeholder="--Select Vendor-- "></asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group">


                                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success save" OnClick="btnSave_Click" />
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info update" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary clear" />

                            </div>



                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="vtab2">
                            <h3 class="header">Registration Information</h3>

                            <div class="form-group">
                                <asp:Label ID="lblOwnership" CssClass="col-md-2 control-label driverid" runat="server" Text="Vehicle Id :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="ddlVehicleId" AutoPostBack="false" runat="server" CssClass="from-control input-sm" Style="width: 150px;">
                                    </asp:DropDownList>
                                </div>

                                <asp:Label ID="lblDOP" CssClass="col-md-2 control-label driverid" runat="server" Text=" Date Of Registration"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtDateRegistration" runat="server" CssClass="form-control input-sm date NRDate " placeholder=" Date Of Registration "></asp:TextBox>
                                </div>


                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblPcost" CssClass="col-md-2 control-label driverid" runat="server" Text="Registration No:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtRegistration" runat="server" CssClass="form-control input-sm " placeholder=" Registration No "></asp:TextBox>
                                </div>
                                <asp:Label ID="Label10" CssClass="col-md-2 control-label driverid" runat="server" Text="License No:"></asp:Label>

                                <div class="col-md-4">
                                    <asp:TextBox ID="txtLicenseNo" runat="server" CssClass="form-control input-sm " placeholder=" License No "></asp:TextBox>
                                </div>


                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label9" CssClass="col-md-2 control-label driverid" runat="server" Text=" license Expired"></asp:Label>

                                <div class="col-md-3">
                                    <asp:TextBox ID="txtLicExpired" runat="server" Width="150" CssClass="form-control input-sm date NRDate " placeholder=" Date Of license Expired "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label15" CssClass="col-md-2 control-label driverid" runat="server" Text=" Registered To :"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtRegisteredTo" runat="server" CssClass="form-control input-sm " placeholder="Registered To "></asp:TextBox>
                                </div>
                            </div>


                            <div class="form-group">


                                <asp:Label ID="Label12" CssClass="col-md-2 control-label driverid" runat="server" Text=" Address"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control input-sm " placeholder="Address "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label11" CssClass="col-md-2 control-label driverid" runat="server" Text=" Email"></asp:Label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-sm " placeholder="Address "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label13" CssClass="col-md-2 control-label driverid" runat="server" Text="Contact"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control input-sm " placeholder=" Contact "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label14" CssClass="col-md-2 control-label driverid" runat="server" Text="Reg. Document"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDocfile" runat="server" CssClass="form-control input-sm " placeholder="Document "></asp:TextBox>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />

                                </div>
                            </div>

                            <div class="form-group">


                                <asp:Button ID="BtnSave1" runat="server" Text="Save" CssClass="btn btn-success save" OnClick="btnSave1_Click" />
                                <asp:Button ID="btnUpdate1" runat="server" Text="Update" CssClass="btn btn-success save" OnClick="btnUpdate1_Click" />
                                <asp:Button ID="btnRefresh1" runat="server" Text="Clear" />

                            </div>

                            <div class="form-group" style="margin-top: 10px; margin-left: 30px">
                                <div class="col-md-3">
                                    <label class="col-md-2 control-label" for="add"></label>

                                    <%-- <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" />

                <asp:Button ID="btnEdit" runat="server" Text="Update" CssClass="btn btn-info" />

                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />--%>

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

                                    <script type="text/javascript">



                                        function showConfirm(event) {
                                            event.preventDefault();
                                            return false;
                                        }


                                    </script>

                                </div>

                            </div>



                        </div>
                        <div role="tabpanel" class="tab-pane fade in" id="vtab3">
                            <h3 class="header">Mechanical Information</h3>
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


                        <div role="tabpanel" class="tab-pane fade in" id="vtab4">
                            <h3>Insurance Information</h3>
                            <div class="form-group">
                                <asp:Label ID="lblInsurNo" CssClass="col-md-2 control-label driverid" runat="server" Text="Insurance No:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtInsuranceNo" runat="server" CssClass="form-control input-sm " placeholder=" Insurance No "></asp:TextBox>
                                </div>

                                <asp:Label ID="lblRenew" CssClass="col-md-2 control-label driverid" runat="server" Text="Renew Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="txtDor" runat="server" CssClass="form-control input-sm date NRDate" placeholder="Date of Renew "></asp:TextBox>
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
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm date NRDate " placeholder=" Due Date "></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div role="tabpanel" class="tab-pane fade in" id="vtab5">
                            <h3>Fitness Information</h3>
                            <div class="form-group">
                                <asp:Label ID="Label1" CssClass="col-md-2 control-label driverid" runat="server" Text="Insurance No:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input-sm " placeholder=" Insurance No "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label2" CssClass="col-md-2 control-label driverid" runat="server" Text="Renew Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm date NRDate" placeholder="Date of Renew "></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label3" CssClass="col-md-2 control-label driverid" runat="server" Text="Insurance Company:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control input-sm " placeholder=" Insurance Company "></asp:TextBox>
                                </div>

                                <asp:Label ID="Label4" CssClass="col-md-2 control-label driverid" runat="server" Text=" Premium Amount :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control input-sm  " placeholder="Premium Amount"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label5" CssClass="col-md-2 control-label driverid" runat="server" Text="Due Date :"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control input-sm date NRDate " placeholder=" Due Date "></asp:TextBox>
                                </div>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
        </div>

    </form>

    
</asp:Content>





<%--
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Vehicles Information</a></li>
    <li><a href="#tabs-2">Registration Information</a></li>
    <li><a href="#tabs-3">Mechanical Information</a></li>
    <li><a href="#tabs-4">Insurance Information</a></li>
    <li><a href="#tabs-5">Fitness Information</a></li>
    <li><a href="#tabs-6">Tax/ Token Information</a></li>
  </ul>
  <div id="tabs-1">
    
      <section>
    <div class="form-group">
   <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server"  Text="ID :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtVehicleID" runat="server" CssClass="form-control input-sm " placeholder="Vehicle ID "></asp:TextBox>  
    </div>

     <asp:Label ID="lblRegno" CssClass="col-md-2 control-label driverid" runat="server"  Text="Reg No :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtRegNo" runat="server" CssClass="form-control input-sm " placeholder="Registration No "></asp:TextBox>  
  </div>
</div>

    <div class="form-group">
   <asp:Label ID="lblChassisno" CssClass="col-md-2 control-label driverid" runat="server"  Text="Chassis No :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtChassisno" runat="server" CssClass="form-control input-sm " placeholder=" Chasss no "></asp:TextBox>  
    </div>

     <asp:Label ID="lblBrandName" CssClass="col-md-2 control-label driverid" runat="server"  Text="Brand Name :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtBrandName" runat="server" CssClass="form-control input-sm " placeholder="Brand Name "></asp:TextBox>  
  </div>
</div>


<div class="form-group">
   <asp:Label ID="lblModelName" CssClass="col-md-2 control-label driverid" runat="server"  Text="Model Name :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtModelName" runat="server" CssClass="form-control input-sm " placeholder=" Model Name "></asp:TextBox>  
    </div>

     <asp:Label ID="lblVehicleType" CssClass="col-md-2 control-label driverid" c runat="server"  Text="Vehicle Type :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtVehicletype" runat="server" CssClass="form-control input-sm " placeholder="Vehicle Type "></asp:TextBox>  
  </div>
</div>

    <div class="form-group">
   <asp:Label ID="lblModelYear" CssClass="col-md-2 control-label driverid" runat="server"  Text="Model Year :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtModelYear" runat="server" CssClass="form-control input-sm " placeholder=" Model Year "></asp:TextBox>  
    </div>

     <asp:Label ID="lblRegistrationYear" CssClass="col-md-2 control-label driverid" runat="server"  Text="Registration Year :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtRegYear" runat="server" CssClass="form-control input-sm " placeholder="Registration Year "></asp:TextBox>  
  </div>
</div>

<div class="form-group">
   <asp:Label ID="lblTypeofbody" CssClass="col-md-2 control-label driverid" runat="server"  Text="Type Of Body :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtBodytype" runat="server" CssClass="form-control input-sm " placeholder=" Type Of Body "></asp:TextBox>  
    </div>

     <asp:Label ID="lblBodycolor" CssClass="col-md-2 control-label driverid" runat="server"  Text="Body Color :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtBodyColor" runat="server" CssClass="form-control input-sm " placeholder="Body Color "></asp:TextBox>  
  </div>
</div>


<div class="form-group">
   <asp:Label ID="lblTiresize" CssClass="col-md-2 control-label driverid" runat="server"  Text="Tire Size :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtTireSize" runat="server" CssClass="form-control input-sm " placeholder=" Tire Size "></asp:TextBox>  
    </div>

     <asp:Label ID="lblFueltype" CssClass="col-md-2 control-label driverid" runat="server"  Text="Fuel Type:"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtFueltype" runat="server" CssClass="form-control input-sm " placeholder="Fuel Type "></asp:TextBox>  
  </div>
</div>


     <div class="form-group">
   <asp:Label ID="lblDept" CssClass="col-md-2 control-label driverid" runat="server"  Text="Department / Depot :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control input-sm " placeholder=" Department or Depot "></asp:TextBox>  
    </div>

     <asp:Label ID="lblseatingcapacity" CssClass="col-md-2 control-label driverid" runat="server"  Text="Seating Capacity:"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtSeatingCapa" runat="server" CssClass="form-control input-sm " placeholder="Seating Capacity "></asp:TextBox>  
  </div>
</div>

<div class="form-group">
   <asp:Label ID="lblCylinder" CssClass="col-md-2 control-label driverid" runat="server"  Text="Cylinder Quantity :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtCylQty" runat="server" CssClass="form-control input-sm " placeholder=" Cylinder Quantity "></asp:TextBox>  
    </div>
</div>
</section>


  </div>
  <div id="tabs-2">


        <div class="form-group">
   <asp:Label ID="lblOwnership" CssClass="col-md-2 control-label driverid" runat="server"  Text="Ownership :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtownership" runat="server" CssClass="form-control input-sm " placeholder=" Ownership "></asp:TextBox>  
    </div>

     <asp:Label ID="lblDOP" CssClass="col-md-2 control-label driverid" runat="server"  Text=" Date Of Purchase :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtDOP" runat="server" CssClass="form-control input-sm date NRDate " placeholder=" Date Of Purchase : "></asp:TextBox>  
  </div>
</div>

<div class="form-group">
   <asp:Label ID="lblPcost" CssClass="col-md-2 control-label driverid" runat="server"  Text="Purchase Cost/ Price :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtPcost" runat="server" CssClass="form-control input-sm " placeholder=" Purchase Cost "></asp:TextBox>  
    </div>

     <asp:Label ID="lblUnload" CssClass="col-md-2 control-label driverid" runat="server"  Text=" Unload Weight :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtUweight" runat="server" CssClass="form-control input-sm " placeholder=" Unload Weight "></asp:TextBox>  
  </div>
</div>

<div class="form-group">
   <asp:Label ID="lblLoadweight" CssClass="col-md-2 control-label driverid" runat="server"  Text=" Load Weight :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtLoadweight" runat="server" CssClass="form-control input-sm " placeholder="  Load Weight "></asp:TextBox>  
    </div>
</div>



  </div>
<div id="tabs-3">

<div class="form-group">
   <asp:Label ID="lblMechaInfo" CssClass="col-md-2 control-label driverid" runat="server"  Text="Mechanical No:"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtMechaNo" runat="server" CssClass="form-control input-sm " placeholder=" Mechanical No "></asp:TextBox>  
    </div>

     <asp:Label ID="lblEngineCap" CssClass="col-md-2 control-label driverid" runat="server"  Text="Engine Capacity :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtEngineCapacity" runat="server" CssClass="form-control input-sm " placeholder="Engine Capacity "></asp:TextBox>  
  </div>
</div>


<div class="form-group">
   <asp:Label ID="lblMileage" CssClass="col-md-2 control-label driverid" runat="server"  Text="Mileage:"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtMileage" runat="server" CssClass="form-control input-sm " placeholder=" Mileage "></asp:TextBox>  
    </div>

     <asp:Label ID="lblTransmision" CssClass="col-md-2 control-label driverid" runat="server"  Text="Transmission:"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtTransmission" runat="server" CssClass="form-control input-sm " placeholder="Transmission "></asp:TextBox>  
  </div>
</div>
 </div>




<div id="tabs-5">


</div>




<div id="tabs-6">
<div class="form-group">
   <asp:Label ID="lblRenlDate" CssClass="col-md-2 control-label driverid" runat="server"  Text="Renewal Date :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control input-sm date NRDate" placeholder="  Date Of Renewal "></asp:TextBox>  
    </div>

     <asp:Label ID="lblNRDate" CssClass="col-md-2 control-label driverid" runat="server"  Text="Next Renewal Date :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtfgf" runat="server" CssClass="form-control input-sm date NRDate" placeholder="Date of Next Renewal "></asp:TextBox>
       
  </div>
</div>

<div class="form-group">
   <asp:Label ID="lblRootPermit" CssClass="col-md-2 control-label driverid" runat="server"  Text="Root Permit :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtRootpermit" runat="server" CssClass="form-control input-sm" placeholder=" Root Permit"></asp:TextBox>  
    </div>

</div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label" for="add"></label>
  <div class="col-md-3">
       <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="btn btn-success" />

      <asp:Button ID="btnEdit" runat="server" Text="Edit"  CssClass="btn btn-info" />

      <asp:Button ID="btnDelete" runat="server" Text="Delete"  CssClass="btn btn-danger" />
  </div>

</div>         --%>