﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="webcv.Resume" %>

<%@ Register Src="~/Controllers/Header_Controller.ascx" TagPrefix="uc1" TagName="Header_Controller" %>
<%@ Register Src="~/Controllers/Resume_Controller.ascx" TagPrefix="uc1" TagName="Resume_Controller" %>
<%@ Register Src="~/Controllers/Footer_Controller.ascx" TagPrefix="uc1" TagName="Footer_Controller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>MY RESUME</title>
    <link href="theme/css/main.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="theme/css/resume.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="theme/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <uc1:Header_Controller runat="server" id="Header_Controller" />
        <uc1:Resume_Controller runat="server" id="Resume_Controller" />
        <uc1:Footer_Controller runat="server" id="Footer_Controller" />
    </form>
</body>
</html>
