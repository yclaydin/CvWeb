<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="webcv.Projects" %>

<%@ Register Src="~/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>
<%@ Register Src="~/Controllers/Projects_Controller.ascx" TagPrefix="uc1" TagName="Projects_Controller" %>
<%@ Register Src="~/Controllers/Footer_Controller.ascx" TagPrefix="uc1" TagName="Footer_Controller" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>MY WORKS</title>
    <link href="theme/css/main.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="theme/css/project.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="theme/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" id="Header_Controller" />
        <uc1:Projects_Controller runat="server" id="Projects_Controller" />
        <uc1:Footer_Controller runat="server" id="Footer_Controller" />
    </form>
    <script src="theme/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="theme/js/sldier.js" type="text/javascript"></script>
</body>
</html>
