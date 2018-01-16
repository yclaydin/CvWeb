<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal_Info_Edit.aspx.cs" Inherits="webcv.Admin.Personal_Info_Edit" %>

<%@ Register Src="~/Admin/Controllers/Personal_Info_Edit_Controller.ascx" TagPrefix="uc1" TagName="Personal_Info_Edit_Controller" %>
<%@ Register Src="~/Admin/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Info Edit</title>
    <link href="Theme/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" ID="Header_Controller" />
        <uc1:Personal_Info_Edit_Controller runat="server" ID="Personal_Info_Edit_Controller" />

    </form>
</body>
</html>
