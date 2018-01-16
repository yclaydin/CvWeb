<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contact_Controller.ascx.cs" Inherits="webcv.Controllers.Contact_Controller" %>
<div class="content">
    <div class="main-container">
        <div class="left-content">
            <h1>CONTACT</h1>
            <div class="social-media">
                <div class="circle black">
                    <asp:Literal ID="ltr_Facebook" runat="server"></asp:Literal>
                </div>
                <div class="circle black">
                    <asp:Literal ID="ltr_Twitter" runat="server"></asp:Literal>
                </div>
                <div class="circle black">
                    <asp:Literal ID="ltr_GooglePlus" runat="server"></asp:Literal>
                </div>
            </div>
            <div class="contact-info">
                <span><strong>Cell :</strong><asp:Literal ID="ltr_Phone" runat="server"></asp:Literal></span><br>
                <span><strong>Email :</strong><asp:Literal ID="ltr_Mail" runat="server"></asp:Literal></span>
            </div>
        </div>
        <div class="right-content">
            <div class="contact-form">
                <asp:TextBox ID="txtName" placeholder="Name..." runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="contact" runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtEmail" placeholder="Email..." runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="contact" runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ErrorMessage="Invalid Email" ControlToValidate="txtEmail"
                    SetFocusOnError="True" ForeColor="Red" Font-Bold="true"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
                <asp:TextBox ID="txtSubject" placeholder="Subject..." runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="contact" runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtMessage" placeholder="Message..." TextMode="MultiLine" Rows="5" Columns="4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="contact" runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:Button ID="btnSend" runat="server" ValidationGroup="contact" Text="SEND" OnClick="btnSend_Click" />

            </div>
        </div>
    </div>
</div>
