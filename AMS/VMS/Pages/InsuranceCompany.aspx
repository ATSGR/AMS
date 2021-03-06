﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="InsuranceCompany.aspx.cs" Inherits="AMS.VMS.Pages.InsuranceCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="../Resourcs/Scripts/jquery-3.2.1.min.js"></script>
    <script src="../Resourcs/Scripts/jquery-3.2.1.js"></script>
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-fluid">
        <div class="panel panel-primary" style="margin: 25px;">
            <div class="panel-heading">
                <h3 class="panel-title headtitle" style="font-family: monospace"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Insurance Company Setup</h3>
            </div>

            <div class="panel-body" style="margin-bottom:-100px;">
                <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden">
                    <%--<p class="heading" style="margin-top: 20px;">After Incident</p>--%>
                    <div style="margin-left: 15px; margin-right: 15px;">
                        <div class="form-group" style="margin-top: 114px;">
                            <asp:Label ID="lblCode" CssClass="col-md-2 col-md-offset-2 control-label driverid" runat="server" Text="Code :"></asp:Label>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtCode" runat="server" CssClass="form-control input-sm" Style="background-color: #e6dfab;" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <asp:Label ID="lblCompanyName" CssClass="col-md-2 col-md-offset-2 control-label driverid" runat="server" Text="Company Name:"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtCompanyName" runat="server" data-rule-required="true" data-msg-required="Company Name is required"  CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <asp:Label ID="lblRemarks" CssClass="col-md-2 col-md-offset-2 control-label driverid" runat="server" Text="Remarks :"></asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>


                   <%-- <div class="form-group">
                        <div class="col-sm-6 col-md-offset-7">                            
                            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-group-lg btn-primary" OnClick="btnSave_Click" />
                        </div>
                    </div>--%>
                    <div class="form-group">
                        <div class="col-sm-6 col-md-offset-7">                            
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-group-lg btn-primary" OnClick="btnSave_Click" />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-group-lg  btn-success" OnClick="btnUpdate_Click"/>
                            
                        </div>                                                                                                    
                    </div>

                    <%-- html for gridview   table table-striped table-hover table-bordered table-responsive" border="0" cellpadding="0" cellspacing="0".....--%>
             <div class="form-group" style="margin-left: 20px;">
                <div class="col-md-3">
                    <label class="col-md-2 control-label" for="add"></label>

                    <asp:GridView ID="grdInsuranceCompany" runat="server" PageSize="5" Width="1000px" AllowPaging="True" CssClass="table table-hover table-bordered table-responsive"
                     AutoGenerateColumns="False" OnPageIndexChanging="grdInsuranceCompany_PageIndexChanging" OnSelectedIndexChanged="grdInsuranceCompany_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField HeaderText="Code" DataField="Code"></asp:BoundField>
                            <asp:BoundField HeaderText="Company Name" DataField="Companyname"></asp:BoundField>
                            <asp:BoundField HeaderText="Remarks" DataField="Remarks"></asp:BoundField>
                          
                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle  ForeColor="#333333" HorizontalAlign="Center" />

                        <%--<HeaderStyle BackColor="#669933" Font-Bold="True" ForeColor="White" />--%>

                        <HeaderStyle BackColor="#337ab7" ForeColor="White" />
                    </asp:GridView>

                </div>

            </div>             
                    <%-- ...end html for gridview...--%>
                </form>
            </div>
        </div>
    </div>

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

</script>
</asp:Content>
