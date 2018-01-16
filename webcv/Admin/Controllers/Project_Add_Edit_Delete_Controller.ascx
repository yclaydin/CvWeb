<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Project_Add_Edit_Delete_Controller.ascx.cs" Inherits="webcv.Admin.Controllers.Project_Add_Edit_Delete_Controller" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<div class="ProjectsGridBox">
    <asp:GridView ID="grd_Projects" runat="server" Width="90%"
        AutoGenerateColumns="false"
        Font-Size="14pt" AlternatingRowStyle-BackColor="#969696"
        HeaderStyle-BackColor="#cecece" BackColor="#969696" AllowPaging="true" ShowFooter="true"
        OnPageIndexChanging="OnPaging" OnRowEditing="EditProject"
        OnRowUpdating="UpdateProject" OnRowCancelingEdit="CancelEdit"
        PageSize="10">
        <Columns>
            <asp:TemplateField ItemStyle-Width="30px" HeaderText="Project ID">
                <ItemTemplate>
                    <asp:Label ID="lblProjectID" runat="server"
                        Text='<%# Eval("Project_ID")%>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100px" HeaderText="Project Title">
                <ItemTemplate>
                    <asp:Label ID="lblProjectTitle" runat="server"
                        Text='<%# Eval("Project_Title")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtProjectTitleEdit" runat="server"
                        Text='<%# Eval("Project_Title")%>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtProjectTitleAdd" Width="200px"
                        runat="server"></asp:TextBox>

                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="100%" HeaderText="Project Description">
                <ItemTemplate>
                    <asp:Label ID="lblProjectDescription" runat="server"
                        Text='<%# Eval("Project_Description")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <CKEditor:CKEditorControl ID="txtProjectDescriptionEdit" Text='<%# Eval("Project_Description")%>' name="comment" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                </EditItemTemplate>
                <FooterTemplate>
                    <CKEditor:CKEditorControl ID="txtProjectDescriptionAdd" name="comment" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkRemove" runat="server"
                        CommandArgument='<%# Eval("Project_ID")%>'
                        OnClientClick="return confirm('Do you want to delete?')"
                        Text="Delete" OnClick="DeleteProject"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="btnAdd" runat="server" Text="Add"
                        OnClick="AddProject" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <AlternatingRowStyle BackColor="#aaaba9" />
    </asp:GridView>
</div>
