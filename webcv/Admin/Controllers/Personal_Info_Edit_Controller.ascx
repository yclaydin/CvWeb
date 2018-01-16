<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Personal_Info_Edit_Controller.ascx.cs" Inherits="webcv.Admin.Controllers.Personal_Info_Edit_Controller" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<div class="PersonalInfoBox">
    <table>
        <tr>
            <th><span>Name</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txt_Name" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="changePersonalInfo" ControlToValidate="txt_Name" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Surname</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txt_Surname" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="changePersonalInfo" ControlToValidate="txt_Surname" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Phone</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txt_Phone" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="changePersonalInfo" ControlToValidate="txt_Phone" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Fax</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txt_Fax" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="changePersonalInfo" ControlToValidate="txt_Fax" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Facebook Link</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txtFacebook" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="changePersonalInfo" ControlToValidate="txtFacebook" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Twitter Link</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txtTwitter" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="changePersonalInfo" ControlToValidate="txtTwitter" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Google Plus Link</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txtGoogleplus" CssClass="Txtbox" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="changePersonalInfo" ControlToValidate="txtGoogleplus" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span>Home Page Text</span></th>
            <th>:</th>
            <th>
                <CKEditor:CKEditorControl ID="txtHomeText" name="comment" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="changePersonalInfo" ControlToValidate="txtHomeText" runat="server" ForeColor="Red" ErrorMessage="Required home"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th colspan="3">
                <asp:Button ID="btn_Change" CssClass="Buton" runat="server" ValidationGroup="changePersonalInfo" Text="Change" OnClick="btn_Change_Click" /></th>
        </tr>
    </table>

</div>
