<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Resume_Controller.ascx.cs" Inherits="webcv.Controllers.Resume_Controller" %>
<div class="content">
    <div class="main-container">
        <div class="left-content">
            <ul>
                <li>
                    <h1>RESUME</h1>
                </li>
                <hr>
                <li>
                    <div class="circle red">
                        <span>Professional
                            <br>
                            info</span>
                    </div>
                    <div class="paragraph">
                        <p>
                            <asp:Literal ID="ltr_Professional_Info" runat="server"></asp:Literal>
                        </p>

                    </div>
                </li>
                <hr>
                <li>
                    <div class="circle red">
                        <span>Work
                            <br>
                            experience</span>
                    </div>
                    <div class="paragraph">
                        <p>
                            <asp:Literal ID="ltr_Work_Experience" runat="server"></asp:Literal>
                        </p>
                    </div>
                </li>
                <hr>
                <li>
                    <div class="circle red"><span>Education</span></div>
                    <div class="paragraph">
                        <p>
                            <asp:Literal ID="ltr_Education" runat="server"></asp:Literal>
                        </p>
                    </div>
                </li>

            </ul>
        </div>
        <div class="right-content">
            <div class="element">
                <div class="circle-right blue left-icon"><i class="fa fa-exclamation" aria-hidden="true"></i></div>
                <div>
                    <h3>Skills</h3>
                    <hr>
                    <ul>
                        <asp:Literal ID="ltr_Skils" runat="server"></asp:Literal>
                    </ul>
                </div>
            </div>
            <div class="element">
                <div class="circle-right blue left-icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
                <div>
                    <h3>Languages</h3>
                    <hr>
                    <ul>
                        <asp:Literal ID="ltr_Languages" runat="server"></asp:Literal>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
