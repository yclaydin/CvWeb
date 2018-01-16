<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login_Controller.ascx.cs" Inherits="webcv.Admin.Controllers.Login_Controller" %>
<div class="LoginBox">
    <asp:Literal ID="ltr_Alert" runat="server"></asp:Literal><br />
    <asp:TextBox ID="txt_Email" CssClass="LoginTxtbox" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="login" ControlToValidate="txt_Email" runat="server" ForeColor="White" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
    <asp:TextBox ID="txt_Password" CssClass="LoginTxtbox" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="login" ControlToValidate="txt_Password"  runat="server" ForeColor="White" ErrorMessage="Required"></asp:RequiredFieldValidator><br /><br />
    <asp:Button ID="btn_Login" CssClass="LoginBtn" runat="server" ValidationGroup="login" Text="LOGIN" OnClick="btn_Login_Click" />
</div>
