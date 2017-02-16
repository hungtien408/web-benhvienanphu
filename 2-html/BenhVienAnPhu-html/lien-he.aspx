<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Phu</title>
    <meta name="description" content="An Phu" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <img src="assets/images/banner5.jpg" alt="" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="colmain" runat="Server">
    <div class="title-main">
        <h1>LIÊN HỆ VỚI CHÚNG TÔI</h1>
    </div>
    <div class="contact-main">
        <div class="contact-text">
            <h1>PHÒNG KHÁM ĐA KHOA QUỐC TẾ AN PHÚ</h1>
            <p><span class=" fa fa-map-marker"></span>2nd Floor, Building 72/24 Phan Dang Luu, Phu Nhuan, HCMC</p>
            <p><span class="fa fa-phone"></span>+84908317381   </p>
            <p><span class="fa fa-envelope"></span><a href="mailto:sinfo@hqsoft.com.vn">info@hqsoft.com.vn</a></p>
        </div>
        <div class="map-main">
            <div id="mapshow"></div>
            <p>Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</p>
        </div>
        <div class="wrap-send">
            <div class="contact-w">
                <div class="contact-input">
                    <asp:textbox id="txtFullName" cssclass="contact-textbox" runat="server" placeholder="Tiêu đề"></asp:textbox>
                </div>
                <div class="contact-input contact-name">
                    <asp:textbox id="Textbox1" cssclass="contact-textbox" runat="server" placeholder="Họ tên"></asp:textbox>
                </div>
                <div class="contact-input contact-phone">
                    <asp:textbox id="Textbox2" cssclass="contact-textbox" runat="server" placeholder="Điện thoại"></asp:textbox>
                </div>
                <div class="contact-input">
                    <asp:textbox id="Textbox3" cssclass="contact-textbox" runat="server" placeholder="Email"></asp:textbox>
                </div>
            </div>
            <div class="contact-w">
                <div class="contact-input contactarea">
                    <asp:textbox id="TextBox4" cssclass="contact-area" runat="server" textmode="MultiLine" placeholder="Nội dung lời nhắn"></asp:textbox>
                </div>
            </div>
            <div class="contact-button">
                <div class="contact-btn">
                    <asp:button id="Button1" cssclass="button-btn" runat="server" text="HỦY BỎ" />
                </div>
                <div class="contact-btn">
                    <asp:button id="Button2" cssclass="button-btn" runat="server" text="GỬI TIN" />
                </div>
            </div>
        </div>
    </div>
    <style>
        .icon-list {
            display:none;
        }
</style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="asidelist" runat="Server">
</asp:Content>

