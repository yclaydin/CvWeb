<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_EmailPass.aspx.cs" Inherits="webcv.Admin.Change_EmailPass" %>

<%@ Register Src="~/Admin/Controllers/Change_EmailPass_Controller.ascx" TagPrefix="uc1" TagName="Change_EmailPass_Controller" %>
<%@ Register Src="~/Admin/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Email / Password</title>
    <link href="Theme/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" ID="Header_Controller" />
        <uc1:Change_EmailPass_Controller runat="server" ID="Change_EmailPass_Controller" />
    </form>
</body>
</html>
