<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header_Controller.ascx.cs" Inherits="webcv.Controllers.Header_Controller" %>
<header class="header">
    <div class="main-container">
        <div class="name-logo">
            <h2><asp:Literal ID="ltr_Name_Surname" runat="server"></asp:Literal></h2>
            <span><asp:Literal ID="ltr_Job" runat="server"></asp:Literal></span>
        </div>
        <div class="menu">
            <ul>
                <li><a href="<%=ResolveUrl("~/") %>Home">HOME</a></li>
                <li><a href="<%=ResolveUrl("~/") %>Resume">RESUME</a></li>
                <li><a href="<%=ResolveUrl("~/") %>Projects">PROJECTS</a></li>
                <li><a href="<%=ResolveUrl("~/") %>Contact">CONTACT</a></li>
            </ul>
        </div>
    </div>
</header>
