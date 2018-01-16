<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Add_Edit_Delete.aspx.cs" Inherits="webcv.Admin.Project_Add_Edit_Delete" %>

<%@ Register Src="~/Admin/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>
<%@ Register Src="~/Admin/Controllers/Project_Add_Edit_Delete_Controller.ascx" TagPrefix="uc1" TagName="Project_Add_Edit_Delete_Controller" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projects</title>
    <link href="Theme/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" ID="Header_Controller" />
        <uc1:Project_Add_Edit_Delete_Controller runat="server" ID="Project_Add_Edit_Delete_Controller" />
    </form>
</body>
</html>
