﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="DriverInfo.aspx.cs" Inherits="AMS.VMS.Pages.DriverInfo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="form-horizontal cmxform commentForm" runat="server" style="overflow: hidden;">
        <p class="heading driverhead">Driver Information</p>
        <!-- Text input-->
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">

            <div class="form-group" style="margin-top: 114px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="ID :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm " placeholder="ID"></asp:TextBox>
                </div>

                <asp:Label ID="Label1" CssClass="col-md-2 control-label driverid" runat="server" Text="NID NO :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtNid" runat="server" CssClass="form-control input-sm" data-rule-required="true" data-msg-required="National id required" placeholder="National ID"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFirstName" CssClass="col-md-2 control-label driverid" runat="server" Text="First Name :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="First Name required" placeholder="First Name"></asp:TextBox>
                </div>

                <asp:Label ID="lblLastName" CssClass="col-md-2 control-label driverid" runat="server" Text="Last Name :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="Last Name required" placeholder="Last Name"></asp:TextBox>
                </div>
            </div>



            <div class="form-group">
                <asp:Label ID="lblPresentAddress" CssClass="col-md-2 control-label driverid" runat="server" Text="Present Address :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPresentAddress" TextMode="MultiLine" Columns="20" Rows="2" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>

                </div>

                <asp:Label ID="lblPermanentaddress" CssClass="col-md-2 control-label driverid" runat="server" Text="Permanent Address :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPermanentaddress" TextMode="MultiLine" Columns="20" Rows="2" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>

                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="lblLiceenseNo" CssClass="col-md-2 control-label driverid" runat="server" Text="License No :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtLicenseNo" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="License number required" placeholder="License No"></asp:TextBox>
                </div>

                <asp:Label ID="lblDepot" CssClass="col-md-2 control-label driverid" runat="server" Text="Depot/ Department:"></asp:Label>
                <div class="col-md-3">
                    
                    <asp:DropDownList ID="ddlDepot" AutoPostBack="false" runat="server" CssClass="from-control input-sm" Style="width: 307px; height: 32px;">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblMobile" CssClass="col-md-2 control-label driverid" runat="server" Text="Mobile / Phone :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control input-sm " placeholder="Mobile No or Phone No"></asp:TextBox>
                </div>

                <asp:Label ID="lblBloodgroup" CssClass="col-md-2 control-label driverid" runat="server" Text="Blood Group:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBloodgroup" runat="server" CssClass="from-control input-sm" Style="width: 307px; height: 29px;">

                        <asp:ListItem>  ---Select Your Blood Group--- </asp:ListItem>
                        <asp:ListItem> A +  </asp:ListItem>
                        <asp:ListItem>  A -  </asp:ListItem>
                        <asp:ListItem>B +  </asp:ListItem>
                        <asp:ListItem>  B -  </asp:ListItem>
                        <asp:ListItem> O + </asp:ListItem>
                        <asp:ListItem> O - </asp:ListItem>
                        <asp:ListItem>AB +  </asp:ListItem>
                        <asp:ListItem>AB -  </asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblStatus" CssClass="col-md-2 control-label driverid" runat="server" Text="Driver Status\ Remarks :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtstatus" CssClass="form-control input-sm" runat="server" placeholder="Driver Remarks "></asp:TextBox>

                </div>


                <asp:Label ID="lblReffperson" CssClass="col-md-2 control-label driverid" runat="server" Text="Reff. Person :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtrefperson" TextMode="MultiLine" Columns="10" Rows="2" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>

                </div>


            </div>
            <div class="form-group">
                <asp:Label ID="lblExperience" CssClass="col-md-2 control-label driverid" runat="server" Text="Experience Year :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtExpyers" TextMode="Number" CssClass="form-control input-sm" runat="server" placeholder="Experience Year"></asp:TextBox>

                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label driverid" runat="server"></asp:Label>
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />

                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info" OnClick="btnUpdate_Click" />

                    <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="Button3_Click" />
                </div>
            </div>

            <!-- Button -->
         <%--   <div class="form-group" style="margin-top: 10px; margin-left: 30px">
                <div class="col-md-3">
                    <label class="col-md-2 control-label" for="add"></label>
                    <asp:GridView ID="grdDriverr" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                        AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdDriverr_PageIndexChanging" OnSelectedIndexChanged="grdDriverr_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField HeaderText="Driver Id" DataField="DriverId"></asp:BoundField>

                            <asp:BoundField HeaderText="Name" Visible="false" DataField="fullName"></asp:BoundField>
                            <asp:BoundField HeaderText="First Name" DataField="FirstName"></asp:BoundField>

                            <asp:BoundField HeaderText="Last Name" DataField="LastName"></asp:BoundField>

                            <asp:BoundField DataField="PresentAdd" HeaderText="Present Add"></asp:BoundField>

                            <asp:BoundField DataField="PerAdd" HeaderText="Permanent Add"></asp:BoundField>

                            <asp:BoundField DataField="NID" HeaderText="NID"></asp:BoundField>

                            <asp:BoundField DataField="LicenseNo" HeaderText="License No"></asp:BoundField>

                            <asp:BoundField DataField="Depot" HeaderText="Depot/Department"></asp:BoundField>
                            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No"></asp:BoundField>

                            <asp:BoundField DataField="BloodGrp" HeaderText="Blood Group"></asp:BoundField>

                            <asp:BoundField DataField="RefPerson" HeaderText="Refference"></asp:BoundField>
                            <asp:BoundField DataField="Experience" HeaderText="Experience No"></asp:BoundField>
                            <asp:BoundField DataField="Remarks" HeaderText="Remarks"></asp:BoundField>

                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle Height="20px" />
                        <AlternatingRowStyle Height="20px" />
                        <PagerStyle BackColor="#669933" ForeColor="#333333" HorizontalAlign="Center" />

                        <HeaderStyle BackColor="#669933" Font-Bold="True" Height="30px" ForeColor="White" />
                    </asp:GridView>

                </div>

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
    <link href="../Resourcs/CSS/screen.css" rel="stylesheet" />
    <script src="../Resourcs/JS/jquery.js"></script>
    <script src="../Resourcs/JS/jquery.validate.js"></script>
    <script type="text/javascript">
        //-----------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------
        ////this is another _loadJavaScript and most important please don not delete By nasir
        //-------------------------------------------------------------------------------------
        //-----------------------------------------------------------------------------------
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

        //this is another _loadJavaScript and most important please don not delete By nasir

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
