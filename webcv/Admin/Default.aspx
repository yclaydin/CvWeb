<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webcv.Admin.Default" %>

<%@ Register Src="~/Admin/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>
<%@ Register Src="~/Admin/Controllers/Default_Controller.ascx" TagPrefix="uc1" TagName="Default_Controller" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Theme/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" ID="Header_Controller" />
        <uc1:Default_Controller runat="server" id="Default_Controller" />
    </form>
</body>
</html>
