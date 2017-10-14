<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="afterIncident.aspx.cs" Inherits="AMS.VMS.Pages.afterIncident" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden;">

        <p class="heading" style="margin-top: 20px;">After Incident</p>
        <div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left: 15px; margin-right: 15px;">
            <div class="form-group" style="margin-top: 114px;">
                <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server" Text="After Incident ID :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm" ReadOnly="true"></asp:TextBox>
                </div>

                <asp:Label ID="lblTime" CssClass="col-md-2 control-label driverid" runat="server" Text=" Incident Id:"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlIncident" runat="server" CssClass="from-control input-sm" Style="width: 311px; height: 29px;">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">

                <asp:Label ID="lblRepairstatus" CssClass="col-md-2 control-label driverid" runat="server" Text=" Repair Status :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtRepstatus" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="Repair Status is required." placeholder="Repair Status  "></asp:TextBox>
                </div>
                <asp:Label ID="lblTreatment" CssClass="col-md-2 control-label driverid" runat="server" Text=" Cost :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcost" TextMode="Number" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="Cost is Required" placeholder="Cost"></asp:TextBox>

                </div>

            </div>

            <div class="form-group">

                <asp:Label ID="lblCompensation" CssClass="col-md-2 control-label driverid" runat="server" Text="Compensation :"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCompensation" runat="server" TextMode="MultiLine" Columns="20" Rows="2" CssClass="form-control input-sm resige" data-rule-required="true" data-msg-required="Compensation is Required" placeholder="Compensation "></asp:TextBox>
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

           <%-- <div class="form-group" style="margin-left: 20px;">
                <div class="col-md-3">
                    <label class="col-md-2 control-label" for="add"></label>

                    <asp:GridView ID="grdAfterIncident" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                        AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdAfterIncident_PageIndexChanging" OnSelectedIndexChanged="grdAfterIncident_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField HeaderText=" After IncidentId" DataField="AfterincidentId"></asp:BoundField>
                            <asp:BoundField HeaderText="Incident Id" DataField="IncidentId"></asp:BoundField>
                            <asp:BoundField HeaderText="Repair Status" DataField="RepairStatus"></asp:BoundField>
                            <asp:BoundField HeaderText="Compensation" DataField="Compensation"></asp:BoundField>
                            <asp:BoundField HeaderText="Cost" DataField="Cost"></asp:BoundField>

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
    <script src="../Resourcs/JS/jquery.js"></script>
    <script src="../Resourcs/JS/jquery.validate.js"></script>

    <script type="text/javascript">
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
