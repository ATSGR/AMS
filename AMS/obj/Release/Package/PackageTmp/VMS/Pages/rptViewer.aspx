<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rptViewer.aspx.cs" Inherits="AMS.VMS.Pages.rptViewer" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    2
        

 <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server"  
            AutoDataBind="true"    PrintMode="Pdf"   oninit="CrystalReportViewer1_Init" 
             onload="CrystalReportViewer1_Load" ToolPanelView="None" />
   
    </div>
        
    </form>
</body>
</html>
