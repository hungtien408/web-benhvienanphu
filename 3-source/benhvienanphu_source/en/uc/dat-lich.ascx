<%@ Control Language="C#" AutoEventWireup="true" CodeFile="dat-lich.ascx.cs" Inherits="uc_dat_lich" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<div class="popup scroll-popup">
    <div class="popup-content">
        <div class="form-popup">
            <div class="modal-title">ĐẶT LỊCH KHÁM</div>
    <div class="modal-main">
        <div class="box-modal">
            <div class="modal-box">
                <h1>BẠN MUỐN ĐẶT HẸN KHÁM CHO</h1>
                <div class="radio-box">
                    <asp:RadioButtonList ID="rdbDatHen" CssClass="sex" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="0" Selected="True">Bản thân</asp:ListItem>
                        <asp:ListItem Value="1">Người thân</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <h1>THÔNG TIN BỆNH NHÂN</h1>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server"
                            Enabled="True" WatermarkText="Họ tên(*)" TargetControlID="txtFullName">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                            Display="Dynamic" ValidationGroup="DatLichKham" ControlToValidate="txtFullName"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="contact-input input-date">
                        <asp:RadDatePicker ShowPopupOnFocus="True" ID="dpNgaySinh" runat="server" Culture="vi-VN"
                            Calendar-CultureInfo="vi-VN" Width="100%" Height="32px">
                            <Calendar ID="Calendar1" runat="server">
                                <SpecialDays>
                                    <asp:RadCalendarDay Repeatable="Today">
                                        <ItemStyle CssClass="rcToday" />
                                    </asp:RadCalendarDay>
                                </SpecialDays>
                            </Calendar>
                            <DateInput ID="DateInput1" DateFormat="dd/MM/yyyy" DisplayDateFormat="dd/MM/yyyy"
                                runat="server" Height="32px">
                            </DateInput>
                            <DatePopupButton HoverImageUrl="" ImageUrl="" />
                        </asp:RadDatePicker>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                            Display="Dynamic" ValidationGroup="DatLichKham" ControlToValidate="dpNgaySinh"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="contact-input input-gt">
                        <asp:DropDownList ID="dropListGender" runat="server">
                            <asp:ListItem Value="0">Nam</asp:ListItem>
                            <asp:ListItem Value="1">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="contact-input">
                        <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server"
                            Enabled="True" WatermarkText="Điện thoại(*)" TargetControlID="txtPhone">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                            Display="Dynamic" ValidationGroup="DatLichKham" ControlToValidate="txtPhone"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="contact-input">
                        <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server"
                            Enabled="True" WatermarkText="Email(*)" TargetControlID="txtEmail">
                        </asp:TextBoxWatermarkExtender>
                        <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator2"
                            runat="server" ValidationGroup="DatLichKham" ControlToValidate="txtEmail"
                            ErrorMessage="Sai định dạng email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                            Display="Dynamic" ValidationGroup="DatLichKham" ControlToValidate="txtEmail"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <span>(*) là thông tin bắt buộc</span>
            </div>
            <div class="modal-box">
                <h1>THÔNG TIN ĐẶT HẸN</h1>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="contact-input">
                            <asp:DropDownList ID="dropListChuyenKhoa" runat="server" DataSourceID="odsPhongBanDrop" DataTextField="ProjectCategoryName" DataValueField="ProjectCategoryID" AutoPostBack="true"></asp:DropDownList>
                            <asp:ObjectDataSource ID="odsPhongBanDrop" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="17" Name="parentID" Type="Int32" />
                                    <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="contact-input">
                            <asp:DropDownList ID="dropListBacSi" runat="server" DataSourceID="odsBacSiDrop" DataTextField="ProjectTitle" DataValueField="ProjectID" AutoPostBack="true"></asp:DropDownList>
                            <asp:ObjectDataSource ID="odsBacSiDrop" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProjectTitle" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:ControlParameter ControlID="dropListChuyenKhoa" Name="ProjectCategoryID" PropertyName="SelectedValue" Type="String" />
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
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="contacttext">
                    <span>Danh sách bác sĩ</span>
                    <div class="check-box">
                        <asp:CheckBox ID="chkGoiYBacSi" runat="server" Text="Gợi ý bác sĩ giúp tôi" />
                    </div>
                </div>
                <div class="contact-w">
                    <div class="contact-input">
                        <asp:TextBox ID="txtMoTa" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtMoTa_WatermarkExtender" runat="server"
                            Enabled="True" WatermarkText="Mô tả triệu chứng" TargetControlID="txtMoTa">
                        </asp:TextBoxWatermarkExtender>
                    </div>
                </div>
                <div class="contact-w">
                    <label class="contact-lb">Thời gian khám bệnh(*)</label>
                </div>
                <div class="contact-input input-date">
                 
                    <asp:RadDatePicker ShowPopupOnFocus="True" ID="dpNgayKham" runat="server" Culture="vi-VN"
                        Calendar-CultureInfo="vi-VN" Width="100%" Height="32px">
                        <Calendar ID="Calendar2" runat="server">
                            <SpecialDays>
                                <asp:RadCalendarDay Repeatable="Today">
                                    <ItemStyle CssClass="rcToday" />
                                </asp:RadCalendarDay>
                            </SpecialDays>
                        </Calendar>
                        <DateInput ID="DateInput2" DateFormat="dd/MM/yyyy" DisplayDateFormat="dd/MM/yyyy"
                            runat="server" Height="32px">
                        </DateInput>
                        <DatePopupButton HoverImageUrl="" ImageUrl="" />
                    </asp:RadDatePicker>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                        Display="Dynamic" ValidationGroup="DatLichKham" ControlToValidate="dpNgayKham"
                        ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="contact-w input-hours">
                    <div class="contact-input">
                       
                        <asp:RadTimePicker ID="dpGioKham" runat="server" Width="100%" Height="32px" ShowPopupOnFocus="true"
                            TimeView-StartTime="07:00:00" TimeView-Interval="00:30:00" TimeView-EndTime="18:00:01" Culture="en-US">
                        </asp:RadTimePicker>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator6" runat="server"
                            Display="Dynamic" ValidationGroup="DatLichKham" ControlToValidate="dpGioKham"
                            ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact-w">
                    <label class="contact-lb">Mã xác nhận(*)</label>
                    <div class="img-code">
                        <asp:RadCaptcha ID="RadCaptcha1" ValidatedTextBoxID="txtVerifyCode" ValidationGroup="DatLichKham"
                            runat="server" Display="Dynamic"
                            ErrorMessage="Mã xác nhận: không chính xác." CaptchaLinkButtonText="Refesh"
                            CssClass="capcha" EnableRefreshImage="True">
                            <CaptchaImage RenderImageOnly="True" Width="115" Height="31" BackgroundNoise="High" BackgroundColor="White" TextColor="Black" FontFamily="Tohoma" TextLength="5" ImageCssClass="code-img" />
                        </asp:RadCaptcha>
                    </div>
                    <div class="contact-input">
                        <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                        <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                            Enabled="True" WatermarkText="Nhập mã xác nhận" TargetControlID="txtVerifyCode">
                        </asp:TextBoxWatermarkExtender>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-gui">
            <asp:Button ID="btnDatLich" CssClass="button-gui" runat="server" Text="ĐẶT LỊCH KHÁM" OnClick="btnDatLich_Click" ValidationGroup="DatLichKham" />
        </div>
    </div>
        </div>
         <div class="popup-btn-close">
            <img src="../assets/images/btn-close.png" alt="" />
        </div>
    </div>
</div>
