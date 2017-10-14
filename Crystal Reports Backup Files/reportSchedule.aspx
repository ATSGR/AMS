<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportSchedule.aspx.cs" Inherits="AMS.VMS.Pages.reportSchedule" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" GroupTreeImagesFolderUrl="" Height="962px" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1344px" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" ToolPanelView="None"  />
    
    </div>
    </form>
</body>
</html>
