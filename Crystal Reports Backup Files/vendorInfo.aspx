<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="vendorInfo.aspx.cs" Inherits="AMS.VMS.Pages.vendorInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Resourcs/bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Resourcs/CSS/bootstrapValidator.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
    <script src="../Resourcs/JS/bootstrapValidator.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal" id="vendorfrom" runat="server" style="overflow: hidden;">

        <p class="heading">Vendor Information</p>

        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">
            <!-- Text input-->
            <div class="form-group" style="margin-top: 20px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="Vendor ID :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm " ReadOnly="true" placeholder="Vendor ID"></asp:TextBox>
                </div>

                <asp:Label ID="lblName" CssClass="col-md-2 control-label driverid" runat="server" Text="Name :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control input-sm " placeholder="Name"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lbladdress1" CssClass="col-md-2 control-label driverid" runat="server" Text="Address 1 :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAddress1" TextMode="MultiLine" Columns="20" Rows="4" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>
                </div>
                <asp:Label ID="lblAddress2" CssClass="col-md-2 control-label driverid" runat="server" Text="Address 2 :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAddress2" TextMode="MultiLine" Columns="20" Rows="4" CssClass="form-control input-sm resige" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblMobile" CssClass="col-md-2 control-label driverid" runat="server" Text="Mobile/ Phone :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control input-sm " placeholder="Mobile or Phone"></asp:TextBox>
                </div>

                <asp:Label ID="lblEmail" CssClass="col-md-2 control-label driverid" runat="server" Text="Email :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-sm " placeholder="Email"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblCountry" CssClass="col-md-2 control-label driverid" runat="server" Text="Country :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control input-sm " placeholder="Country "></asp:TextBox>
                </div>

                <asp:Label ID="lblCity" CssClass="col-md-2 control-label driverid" runat="server" Text="City :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCity" runat="server"  CssClass="form-control input-sm " placeholder="City "></asp:TextBox>
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


                <div class="col-md-4" style="margin-left: 40px; margin-top: 20px;">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success save" OnClick="btnSave_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-info update" OnClick="btnUpdate_Click" />
                     <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary clear" OnClick="btnClear_Click"/>
                </div>



            </div>
            <div class="form-group" style="margin-left: 20px; margin-top: 20px;">

                    <asp:GridView ID="grdVendor" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                         AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdVendor_PageIndexChanging"
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
                                    <asp:LinkButton runat="server" Text="View" ID="btnlink"  OnClick="btnlink"></asp:LinkButton>

                                    <%--            <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink" onClientClick="window.open('../Leave/Report/lveReport.aspx');"></asp:LinkButton>--%>
                                    <%--<asp:HyperLink ID="HyperLink1" Target="_blank" NavigateUrl="~/UI/Leave/Report/lveReport.aspx" runat="server">HyperLink</asp:HyperLink>--%>
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
