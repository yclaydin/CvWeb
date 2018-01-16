<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Change_EmailPass_Controller.ascx.cs" Inherits="webcv.Admin.Controllers.Change_EmailPass_Controller" %>


<div class="ChangeEmailPassBox">
    <asp:Literal ID="ltr_Alert" runat="server"></asp:Literal><br />
    <span>Email</span>
    <asp:TextBox ID="txt_Email" CssClass="Txtbox" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="change" ControlToValidate="txt_Email" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ErrorMessage="Invalid Email" ControlToValidate="txt_Email"
        SetFocusOnError="True" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
    </asp:RegularExpressionValidator><br />
    <span>Current Password</span>
    <asp:TextBox ID="txt_CurrentPass" CssClass="Txtbox" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="change" ControlToValidate="txt_CurrentPass" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
    <span>New Password</span>
    <asp:TextBox ID="txt_Password" CssClass="Txtbox" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="change" ControlToValidate="txt_Password" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
    <span>Re-Password</span>
    <asp:TextBox ID="txt_RePassword" CssClass="Txtbox" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="change" ControlToValidate="txt_RePassword" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="change" ControlToCompare="txt_Password" ControlToValidate="txt_RePassword" ForeColor="Red" ErrorMessage="Passwords dont match "></asp:CompareValidator><br />
    <br />
    <asp:Button ID="btn_Change" CssClass="Buton" runat="server" ValidationGroup="change" Text="Change" OnClick="btn_Change_Click" />
</div>
