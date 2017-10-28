<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="vendorInfo.aspx.cs" Inherits="AMS.VMS.Pages.vendorInfo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container container-fluid">
        <div class="panel panel-primary" style="margin: 20px;">

             <div class="panel-heading">
                <h3 class="panel-title headtitle" style="font-family: monospace"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Vendor Information</h3>
            </div>

 <div class="panel-body" style="margin-bottom: -100px;">

    <form class="form-horizontal img-responsive background cmxform commentForm" id="vendorfrom" runat="server" style="overflow: hidden;">      
            <!-- Text input-->
            <div class="form-group" style="margin-top: 110px;">
                <asp:Label ID="lblId" CssClass="col-sm-4 col-md-2 control-label driverid" runat="server" Text="Vendor ID :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server"  CssClass="form-control input-sm" Style="background-color: #e6dfab;" ReadOnly="true"></asp:TextBox>
                </div>

                <asp:Label ID="lblName" CssClass="col-md-2 control-label driverid" runat="server" Text="Name :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Name is required" placeholder="Name"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lbladdress1" CssClass="col-md-2 control-label driverid" runat="server" Text="Address 1 :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAddress1" TextMode="MultiLine" Columns="12" Rows="2" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>
                </div>
                <asp:Label ID="lblAddress2" CssClass="col-md-2 control-label driverid" runat="server" Text="Address 2 :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAddress2" TextMode="MultiLine" Columns="12" Rows="2" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblMobile" CssClass="col-md-2 control-label driverid" runat="server" Text="Mobile/ Phone :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMobile" TextMode="Phone" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="Mobile Number is required" placeholder="Mobile or Phone"></asp:TextBox>
                </div>

                <asp:Label ID="lblEmail" CssClass="col-md-2 control-label driverid" runat="server" Text="Email :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control input-sm " placeholder="Email"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblCountry" CssClass="col-md-2 control-label driverid" runat="server" Text="Country :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="Country is required" placeholder="Country "></asp:TextBox>
                </div>

                <asp:Label ID="lblCity" CssClass="col-md-2 control-label driverid" runat="server" Text="City :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control input-sm " placeholder="City "></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblPostalcode" CssClass="col-md-2 control-label driverid" runat="server" Text="Postal Code :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPostalcode" runat="server" CssClass="form-control input-sm " placeholder="Postal Code "></asp:TextBox>
                </div>

                <asp:Label ID="lblContactperson" CssClass="col-md-2 control-label driverid" runat="server" Text="Contact Person :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtContactperson" runat="server" CssClass="form-control input-sm " placeholder="Contact Person "></asp:TextBox>
                </div>
               
            </div>

            <div class="form-group">

                 <div class="col-md-4 col-md-offset-7">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success save" OnClick="btnSave_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info update" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary clear" OnClick="btnClear_Click" />
                </div>
            </div>

            <div class="form-group" style="margin-left: 20px;">
                <div class="col-md-3">
                    <label class="col-md-2 control-label" for="add"></label>

                    <asp:GridView ID="grdVendor" runat="server" PageSize="5" Width="1072px" AllowPaging="True"  CssClass="table table-hover table-bordered table-responsive"
                         AutoGenerateColumns="False" OnPageIndexChanging="grdVendor_PageIndexChanging"
                        OnSelectedIndexChanged="grdVendor_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField HeaderText="Vendor Id" DataField="VendorId"></asp:BoundField>

                            <asp:BoundField HeaderText="Vendor Name" DataField="VendorNm"></asp:BoundField>

                            <asp:BoundField HeaderText="Mobile" DataField="Mobile"></asp:BoundField>

                            <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>

                            <asp:BoundField DataField="Add1" HeaderText="Add1"></asp:BoundField>

                            <asp:BoundField DataField="Add2" HeaderText="Add2"></asp:BoundField>

                            <asp:BoundField DataField="Country" HeaderText="Country"></asp:BoundField>

                            <asp:BoundField DataField="City" HeaderText="City"></asp:BoundField>
                            <asp:BoundField DataField="PostalCode" HeaderText="Postal Code"></asp:BoundField>
                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink"></asp:LinkButton>

                                    <%--            <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink" onClientClick="window.open('../Leave/Report/lveReport.aspx');"></asp:LinkButton>--%>
                                    <%--<asp:HyperLink ID="HyperLink1" Target="_blank" NavigateUrl="~/UI/Leave/Report/lveReport.aspx" runat="server">HyperLink</asp:HyperLink>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                      <PagerStyle  ForeColor="#333333" HorizontalAlign="Center" />

                       <HeaderStyle BackColor="#669933" Font-Bold="True" ForeColor="White" />

                      <HeaderStyle BackColor="#337ab7" ForeColor="White" />
                    </asp:GridView>

                </div>

            </div>
            </form>
        </div>
</div>
 </div>
    
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
    <link href="../Resourcs/CSS/screen.css" rel="stylesheet" />
    <script src="../Resourcs/JS/jquery.js"></script>
    <script src="../Resourcs/JS/jquery.validate.js"></script>
    <script type="text/javascript">


        //do not delete the comment script it's very necessary for next business by Nasir

       <%-- function validate() {
           var Name = document.getElementById('<%=txtName.ClientID%>').value;
           var serialno = document.getElementById('<%=txtSerialNo.ClientID%>').value;
           var warranty = document.getElementById('<%=txtWarranty.ClientID%>').value;

           if (Name == "") {
               document.getElementById('<%=txtName.ClientID%>').focus();
               alert("Please Enter the Name");
               return false;
           }

           if (serialno == "") {

               document.getElementById('<%=txtSerialNo.ClientID%>').focus();
               alert("Please Enter the serial number. ");
               return false;
           }

           if (warranty == "") {
               document.getElementById('<%=txtWarranty.ClientID%>').focus();
               alert("Please Enter the warranty Period");
               return false;
           }
       }--%>

        //do not delete the comment script it's very necessary for next business by Nasir

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
