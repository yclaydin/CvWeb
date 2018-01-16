<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home_Controller.ascx.cs" Inherits="webcv.Controllers.Home_Controller" %>
<div class="content">
    <div class="main-container">
        <div class="profile-img">
            <img src="<%=ResolveUrl("~/") %>img/profileimage.png">
        </div>
        <div class="right-content">
            <div class="title">
                <h3>Hello,</h3>
                <span>a bit about me:</span>
            </div>
            <div class="tree-circle-container">
                <a href="<%=ResolveUrl("~/") %>Resume">
                    <div class="circle red"><span>MY RESUME</span></div>
                </a><a href="<%=ResolveUrl("~/") %>Projects">
                    <div class="circle blue"><span>MY WORK</span></div>
                </a><a href="<%=ResolveUrl("~/") %>Resume">
                    <div class="circle yellow"><span>MY SKILLS</span></div>
                </a>
            </div>
            <div class="paragraph">
                <p>
                    <asp:Literal ID="ltr_HomeText" runat="server"></asp:Literal>
                </p>
            </div>
        </div>
    </div>
</div>
