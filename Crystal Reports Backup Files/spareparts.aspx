<%@ Page Title="" Language="C#" MasterPageFile="~/VMS/Site.Master" AutoEventWireup="true" CodeBehind="spareparts.aspx.cs" Inherits="AMS.VMS.Pages.spareparts" %>
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


       $(document).ready(function () {
           $(".commentForm").validate();
       });

   </script>

    <style>
        label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
    color: red;
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">


    <form class="form-horizontal cmxform commentForm" runat="server"  style="overflow:hidden;">

 <p class="heading">Spare parts Information</p>

<div style="border: 1px solid rgb(204, 204, 204); background-color: rgb(245, 245, 245); margin-left:15px; margin-right:15px;">
<!-- Text input-->
<div class="form-group" style="margin-top:20px;">
   <asp:Label ID="lblId" CssClass="col-md-2 control-label driverid" runat="server"  Text="ID :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtId" runat="server" CssClass="form-control input-sm " placeholder="ID" ReadOnly="true"></asp:TextBox>  
    </div>
    <asp:Label ID="lblAutoparts" CssClass="col-md-2 control-label driverid" runat="server" Text="Category :"></asp:Label>
            <div class="col-md-3">
                <%--<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm " placeholder="National ID"></asp:TextBox>  --%>
                <asp:DropDownList ID="ddlCategory" AutoPostBack="false" runat="server" CssClass="from-control input-sm ddl" Style="width: 307px; height:30px;">
                   
                </asp:DropDownList>
            </div>

</div>
<%--<input id="cemail" name="email" data-rule-email="true" data-msg-required="Please enter your email address" data-rule-required="true"  data-fv-emailaddress-message="The value is not a valid email address"/>--%>
   <div class="form-group">
   <asp:Label ID="lblSerialNo" CssClass="col-md-2 control-label driverid" runat="server"  Text=" Serial No :"></asp:Label>
    <div class="col-md-3">
    <asp:TextBox ID="txtSerialNo" runat="server" CssClass="form-control input-sm "  data-rule-required="true" 
        data-msg-required="Serial Number is Required" data-fv-emailaddress-message="The value is not a valid email address" placeholder="Serial No "></asp:TextBox>  
    </div>

            <asp:Label ID="lblName" CssClass="col-md-2 control-label driverid name" runat="server"  Text="Name:"></asp:Label>
  <div class="col-md-3">
    <%--<asp:TextBox ID="txtName" runat="server" CssClass="form-control input-sm " placeholder="Name"></asp:TextBox>  --%>
      <asp:TextBox ID="txtName" runat="server"  CssClass="form-control input-sm " data-rule-required="true" 
          data-msg-required="Name is required"  placeholder="Name"></asp:TextBox> 
  </div>

</div>  
       
   <div class="form-group">
     <asp:Label ID="lblRemarks" CssClass="col-md-2 control-label driverid" runat="server"  Text="Remarks :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtRemarks" TextMode="MultiLine" Columns="20" Rows="4" runat="server" CssClass="form-control input-sm resige " placeholder="Remarks "></asp:TextBox>  
  </div>


         <asp:Label ID="lblWannenty" CssClass="col-md-2 control-label driverid" runat="server"  Text="Warranty Period :"></asp:Label>
  <div class="col-md-3">
    <asp:TextBox ID="txtWarranty" runat="server" CssClass="form-control input-sm " data-rule-required="true" data-msg-required="Warrenty is Required"
         placeholder="Warrenty Period "></asp:TextBox>  
  </div>

</div>
   
<div class="form-group" style="margin-top:20px;">
  <label class="col-md-1 control-label" for="add"></label>
  <div class="col-md-3">
       <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="btn btn-success savenew" OnClick="btnSave_Click" OnClientClick="return validate();" />
      <asp:Button ID="btnUpdate" runat="server" Text="Update"  CssClass="btn btn-info" OnClick="btnUpdate_Click"/>
      <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-primary clear" OnClick="btnClear_Click"/>

  </div>
</div>

    

    <div class="form-group" style="margin-left: 20px; margin-top: 20px;">

                    <asp:GridView ID="grdSpareparts" runat="server" PageSize="5" Width="1246px" AllowPaging="True"
                         AlternatingRowStyle-BackColor="LightCyan" AutoGenerateColumns="False" OnPageIndexChanging="grdSpareparts_PageIndexChanging" OnSelectedIndexChanged="grdSpareparts_SelectedIndexChanged" 
                         >
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="Id"></asp:BoundField>
                            <asp:BoundField HeaderText="Category" DataField="Category"></asp:BoundField>
                            <asp:BoundField HeaderText="Name" DataField="Name"></asp:BoundField>
                            <asp:BoundField HeaderText="Serial No" DataField="SerialNo"></asp:BoundField>
                            <asp:BoundField DataField="WarrantyPeriod" HeaderText="Warranty Period"></asp:BoundField>
                            <asp:BoundField DataField="Remarks" HeaderText="Remarks"></asp:BoundField>
                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" Text="View" ID="btnlink" OnClick="btnlink"></asp:LinkButton>

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
