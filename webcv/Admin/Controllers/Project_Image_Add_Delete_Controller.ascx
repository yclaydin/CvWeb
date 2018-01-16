<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Project_Image_Add_Delete_Controller.ascx.cs" Inherits="webcv.Admin.Controllers.Project_Image_Add_Delete_Controller" %>

<div class="ProjectsGridBox">
    <asp:DropDownList ID="drpProjects" CssClass="drpdown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpProjects_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <hr />
    <br />
    <asp:GridView ID="grd_Images" runat="server" Width="90%"
        AutoGenerateColumns="false"
        Font-Size="14pt" AlternatingRowStyle-BackColor="#C2D69B"
        HeaderStyle-BackColor="#ffffff" RowStyle-BackColor="#8dc5d6" AllowPaging="true" ShowFooter="true"
        OnPageIndexChanging="OnPaging" OnRowEditing="EditImage"
        OnRowUpdating="UpdateImage" OnRowCancelingEdit="CancelEdit"
        PageSize="10">

        <Columns>
            <asp:TemplateField ItemStyle-Width="30px" HeaderText="Image ID">
                <ItemTemplate>
                    <asp:Label ID="lblImageID" runat="server"
                        Text='<%# Eval("Image_ID")%>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="700px" HeaderText="Image Path">
                <ItemTemplate>
                    <asp:Label ID="txtImagePath" runat="server"
                        Text='<%# Eval("Image_Path")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtImagePath" runat="server"
                        Text='<%# Eval("Image_Path")%>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtImagePath" Width="300px" Height="20px" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkRemove" runat="server"
                        CommandArgument='<%# Eval("Image_ID")%>'
                        OnClientClick="return confirm('Do you want to delete?')"
                        Text="Delete" OnClick="DeleteImage"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="btnAdd" Width="100px" Font-Bold="true" runat="server" Text="Add"
                        OnClick="AddImage" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <AlternatingRowStyle BackColor="#C2D69B" />
    </asp:GridView>
</div>
