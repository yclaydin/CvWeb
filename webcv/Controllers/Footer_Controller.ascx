<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer_Controller.ascx.cs" Inherits="webcv.Controllers.Footer_Controller" %>
<footer class="footer">
    <div class="main-container">
        <div class="footer-section">
            <div class="footer-icon"><i class="fa fa-phone"></i></div>
            <div class="footer-icon-text">
                <h3>Call</h3>
                T:
                <asp:Literal ID="ltr_Phone" runat="server"></asp:Literal>
                <br>
                F:
                <asp:Literal ID="ltr_Fax" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="footer-section">
            <div class="footer-icon"><i class="fa fa-envelope-o"></i></div>
            <div class="footer-icon-text">
                <h3>Contact</h3>
                <asp:Literal ID="ltr_Mail" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="footer-section">
            <div class="footer-icon"><i class="fa fa-plus"></i></div>
            <div class="footer-icon-text">
                <h3>Follow me</h3>
                <div class="social-media">
                    <asp:Literal ID="ltr_Social_Media_Account" runat="server"></asp:Literal>
                </div>
            </div>
        </div>
        <div class="footer-section">
            <div class="footer-icon"><i class="fa fa-copyright"></i></div>
            <div class="footer-icon-text">
                <br>
                © <%=DateTime.Now.Year.ToString() %> by
                <asp:Literal ID="ltr_Name_Surname" runat="server"></asp:Literal>.
            </div>
        </div>
    </div>
</footer>
