<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="TaxToken.aspx.cs" Inherits="AMS.VMS.Pages.TaxToken" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link  href="../Resourcs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
       <link href="../Resourcs/bootstrap/css/bootstrap.css" rel="stylesheet" />
       <script src="../Resourcs/Scripts/jquery-3.2.1.min.js"></script>
       <script src="../Resourcs/Scripts/jquery-3.2.1.js"></script>
    <link href="../Resourcs/CSS/main.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container container-fluid">
        <div class="panel panel-primary" style="margin: 5px;">
            <div class="panel-heading">
                <h3 class="panel-title"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Vehicle Fitness</h3>

            </div>
            <div class="panel-body">
                <form class="form-horizontal img-responsive background cmxform commentForm" runat="server" style="overflow: hidden">
                    <div style="margin-left: 15px; margin-right: 10px;">

                        <div class="form-group" style="margin-top: 100px;">
                            <asp:Label ID="lblCode" CssClass="col-md-2  control-label driverid" runat="server" Text="Registration No:"></asp:Label>
                            <div class="col-md-3">
                                <asp:DropDownList ID="ddlRegistration" runat="server" CssClass="form-control input-sm"></asp:DropDownList>
                            </div>

                            <asp:Label ID="Label2" CssClass="col-md-2  control-label driverid" runat="server" Text="Registration Date:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtRegDate" runat="server" data-rule-required="true" data-msg-required="Field is Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                    
                        <div class="form-group" >
                            <asp:Label ID="Label1" CssClass="col-md-2  control-label driverid" runat="server" Text="Tax Token No:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtTaxTokenNumber" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>


                          <asp:Label ID="Label4" CssClass="col-md-2  control-label driverid" runat="server" Text="Transaction No:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtTransactionNo" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                            </div>


                        <div class="form-group" >
                            <asp:Label ID="Label3" CssClass="col-md-2  control-label driverid" runat="server" Text="eTracking No:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtEtrackingNo" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                            
                            <asp:Label ID="Label5" CssClass="col-md-2  control-label driverid" runat="server" Text="Issue Bank Name:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtIssueBankName" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                          
                        </div>



                    <div class="form-group" >
                            <asp:Label ID="Label6" CssClass="col-md-2  control-label driverid" runat="server" Text="Issue Branch/Both:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtBranchBoth" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                            
                            <asp:Label ID="Label7" CssClass="col-md-2  control-label driverid" runat="server" Text="Issue Teller Name:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtIssueteller" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                          
                        </div>
                   
                  
                        <div class="form-group" >
                            <asp:Label ID="Label8" CssClass="col-md-2  control-label driverid" runat="server" Text="Previous Exp. date:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtExpdate" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                            
                            <asp:Label ID="Label9" CssClass="col-md-2  control-label driverid" runat="server" Text="Issue Date:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtIssueDate" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                          
                        </div>
                   <div class="form-group" >
                            <asp:Label ID="Label10" CssClass="col-md-2  control-label driverid" runat="server" Text="Tax Period:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtTaxPeriod" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                            
                            <asp:Label ID="Label11" CssClass="col-md-2  control-label driverid" runat="server" Text="Pricipal Amount:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtPrincipalAmt" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                          
                        </div>



                         <div class="form-group" >
                            <asp:Label ID="Label12" CssClass="col-md-2  control-label driverid" runat="server" Text="Fine/Additional(TK):"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtFineamt" runat="server" data-rule-required="true" data-msg-required="Field Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                            
                            <asp:Label ID="Label13" CssClass="col-md-2  control-label driverid" runat="server" Text="Total Amount:"></asp:Label>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtTotalAmt" runat="server" data-rule-required="true" data-msg-required="Field  Required" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                          
                        </div>
                                          
                    
                    <div class="form-group">
                        <div class="col-sm-6 col-md-offset-7">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-group-lg btn-primary"  />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-group-lg  btn-success"  />

                        </div>
                    </div>
                </form>

            </div>

        </div>
    </div>




</asp:Content>
