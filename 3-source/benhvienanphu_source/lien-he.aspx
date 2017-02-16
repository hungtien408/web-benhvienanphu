<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <asp:ListView ID="lstBannerLienHe" runat="server"
            DataSourceID="odsBannerLienHe" EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerLienHe" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="10" Name="AdsCategoryID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="Website" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True"
                    Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True"
                    Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="colmain" runat="Server">
    <div class="title-main">
        <h1>LIÊN HỆ VỚI CHÚNG TÔI</h1>
    </div>
    <div class="contact-main">
        <asp:ListView ID="lstInfo" runat="server" DataSourceID="odsInfo"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="contact-text">
                    <h1><%# Eval("ProjectTitle") %></h1>
                    <p><span class=" fa fa-map-marker"></span><%# Eval("Description") %></p>
                    <p><span class="fa fa-phone"></span><%# Eval("MetaTittle") %>   </p>
                    <p><span class="fa fa-envelope"></span><a href='<%# "mailto:" + Eval("MetaDescription") %>'><%# Eval("MetaDescription") %></a></p>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsInfo" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProjectTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DefaultValue="35" Name="ProjectCategoryID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
                <asp:Parameter Name="IsNew" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <div class="map-main">
            <div id="mapshow"></div>
            <p>Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</p>
        </div>
        <div class="wrap-send">
            <div class="contact-w">
                <div class="contact-input">
                    <asp:TextBox ID="txtTitle" CssClass="contact-textbox" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Tiêu đề" TargetControlID="txtTitle">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtTitle"
                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                <div class="contact-input contact-name">
                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" Enabled="True"
                        WatermarkText="Họ tên" TargetControlID="txtFullName">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="contact-input contact-phone">
                    <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" Enabled="True"
                        WatermarkText="Điện thoại" TargetControlID="txtPhone">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtPhone" ErrorMessage="Information required!"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="contact-input">
                    <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Email" TargetControlID="txtEmail">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                        runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                        ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Information required!"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="contact-w">
                <div class="contact-input contactarea">
                    <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Nội dung lời nhắn" TargetControlID="txtNoiDung">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                        ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="contact-w">
                <div class="contact-input contact-name">
                    <div class="wcodes">
                        <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                            Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                        </asp:TextBoxWatermarkExtender>
                    </div>
                </div>
                <div class="contact-input contact-phone">
                    <div class="wcodes">
                        <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="SendEmail"
                            runat="server" Display="Dynamic"
                            ErrorMessage="Mã xác nhận: không chính xác." CaptchaLinkButtonText="Refesh"
                            CssClass="capcha" EnableRefreshImage="True">
                            <CaptchaImage RenderImageOnly="True" Width="115" Height="31" BackgroundNoise="High" BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" ImageCssClass="code-img" />
                        </asp:RadCaptcha>
                    </div>
                </div>
            </div>
            <div class="contact-button">
                <div class="contact-btn">
                    <asp:Button ID="btnHuy" CssClass="button-btn" runat="server" Text="HỦY BỎ" OnClick="btnHuy_Click" />
                </div>
                <div class="contact-btn">
                    <asp:Button ID="btnGui" CssClass="button-btn" runat="server" Text="GỬI TIN" OnClick="btnGui_Click" />
                </div>
            </div>
        </div>
    </div>
    <style>
        .icon-list {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="asidelist" runat="Server">
</asp:Content>

