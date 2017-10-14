<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AMS.VMS.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vehicles management system</title>
    <link href="../Resourcs/CSS/Login.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <br />
            <center>
    <div class="Login">
       <br />
        <div class="Login_from">
            <br />
            <h1>Login from</h1>
             
            <asp:TextBox ID="txtUseraName" runat="server" placeholder="USER NAME" CssClass="Login_un"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtPassword" runat="server" placeholder="PASS WORD" TextMode="Password" CssClass="Login_un btn"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnLogin" runat="server" CssClass="Login_btn" Text="LOGIN" OnClick="btnLogin_Click"  />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Check Your 'USER NAME' or 'PASS WORD' " CssClass="Login_Lbl"></asp:Label>

        </div>


    </div>
 </center>

        </div>
    </form>
</body>
</html>
