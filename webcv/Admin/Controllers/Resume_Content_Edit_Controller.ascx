<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Resume_Content_Edit_Controller.ascx.cs" Inherits="webcv.Admin.Controllers.Resume_Content_Edit_Controller" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<div class="ResumeContextBox">
    <table>
        <tr>
            <th><span class="title">Professional Info</span></th>
            <th>:</th>
            <th>
                <CKEditor:CKEditorControl ID="txt_ProInfo" name="comment" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="resumeContext" ControlToValidate="txt_ProInfo" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </th>
        </tr>
        <tr>
            <th><span class="title">Work Experience</span></th>
            <th>:</th>
            <th>
                <CKEditor:CKEditorControl ID="txt_Work" name="comment" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="resumeContext" ControlToValidate="txt_Work" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span class="title">Education</span></th>
            <th>:</th>
            <th>
                <CKEditor:CKEditorControl ID="txt_Education" name="comment" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="resumeContext" ControlToValidate="txt_Education" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span class="title">Skills</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txt_Skills" TextMode="MultiLine" CssClass="txt" Columns="6" Rows="1" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="resumeContext" ControlToValidate="txt_Skills" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th><span class="title">Languages</span></th>
            <th>:</th>
            <th>
                <asp:TextBox ID="txt_Languages" CssClass="txt" TextMode="MultiLine" Columns="6" Rows="1" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="resumeContext" ControlToValidate="txt_Languages" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator><br />
            </th>
        </tr>
        <tr>
            <th colspan="3">
                <asp:Button ID="btn_Change" CssClass="Buton" runat="server" ValidationGroup="resumeContext" Text="Change" OnClick="btn_Change_Click" /></th>
        </tr>
    </table>
</div>
