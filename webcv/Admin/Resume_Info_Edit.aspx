<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="Resume_Info_Edit.aspx.cs" Inherits="webcv.Admin.Resume_Info_Edit" %>

<%@ Register Src="~/Admin/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>
<%@ Register Src="~/Admin/Controllers/Resume_Content_Edit_Controller.ascx" TagPrefix="uc1" TagName="Resume_Content_Edit_Controller" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resume Content Edit</title>
    <link href="Theme/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" ID="Header_Controller" />
        <uc1:Resume_Content_Edit_Controller runat="server" id="Resume_Content_Edit_Controller" />
    </form>
</body>
</html>
