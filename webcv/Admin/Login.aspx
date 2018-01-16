<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webcv.Admin.Login" %>

<%@ Register Src="~/Admin/Controllers/Login_Controller.ascx" TagPrefix="uc1" TagName="Login_Controller" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <link href="Theme/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Login_Controller runat="server" id="Login_Controller" />
    </form>
</body>
</html>
