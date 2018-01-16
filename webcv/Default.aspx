<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webcv.Default" %>

<%@ Register Src="~/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>
<%@ Register Src="~/Controllers/Home_Controller.ascx" TagPrefix="uc1" TagName="Home_Controller" %>
<%@ Register Src="~/Controllers/Footer_Controller.ascx" TagPrefix="uc1" TagName="Footer_Controller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <title>HOME</title>
    <link href="theme/css/main.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="theme/css/home.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="theme/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen"/>
</head>
<body class="body">
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" id="Header_Controller" />
        <uc1:Home_Controller runat="server" id="Home_Controller" />
        <uc1:Footer_Controller runat="server" id="Footer_Controller" />
    </form>
</body>
</html>
