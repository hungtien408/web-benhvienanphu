<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true" CodeFile="thong-tin-bac-si.aspx.cs" Inherits="thong_tin_bac_si" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <asp:ListView ID="lstBannerBacSi" runat="server"
            DataSourceID="odsBannerBacSi" EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerBacSi" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="8" Name="AdsCategoryID" Type="String" />
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
    <div class="information">
        <div class="title-main">
            <h1>ĐỘI NGŨ BÁC SĨ</h1>
        </div>
        <div class="description">
            <asp:ListView ID="lstMoTaDoiNguBacSi" runat="server" DataSourceID="odsMoTaDoiNguBacSi"
                EnableModelValidation="True">
                <ItemTemplate>
                    <p><%# Eval("Description") %> </p>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsMoTaDoiNguBacSi" runat="server"
                SelectMethod="ProjectCategorySelectOne" TypeName="TLLib.ProjectCategory">
                <SelectParameters>
                    <asp:Parameter DefaultValue="17" Name="ProjectCategoryID" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="select-infor">
            <div class="select-id">
                <select id="selectNav" name="cd-dropdown" class="cd-select">
                    <asp:ListView ID="lstPhongBan" runat="server" DataSourceID="odsPhongBan"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <option value='<%# Container.DataItemIndex + 1 %>'><%# Eval("ProjectCategoryNameEn") %></option>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsPhongBan" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="17" Name="parentID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </select>
            </div>
            <div class="select-content">
                <asp:ListView ID="lstPhongBan2" runat="server" DataSourceID="odsPhongBan"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class='<%# "content-panel d" + (Container.DataItemIndex + 1) %>'>
                            <div class="row">
                                <asp:HiddenField ID="hdnProjectCategoryID" runat="server" Value='<%# Eval("ProjectCategoryID") %>' />
                                <asp:ListView ID="lstBacSi" runat="server" DataSourceID="odsBacSi"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="col-md-3">
                                            <div class="tab-box">
                                                <a data-modal='<%# "#info" + Eval("ProjectID") %>' href="javascript:void(0);">
                                                    <div class="tab-img">
                                                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                            runat="server" />
                                                        <div class="tab-imghover"></div>
                                                    </div>
                                                </a>
                                                <div class="tabcontent">
                                                    <h1><%# Eval("ProjectTitleEn") %></h1>
                                                    <span><%# Eval("TagEn") %></span>
                                                </div>
                                                <div id='<%# "info" + Eval("ProjectID") %>' class="modal" style="display: none;">
                                                    <div class="modaltitle"><%# Eval("ProjectCategoryNameEn") %></div>
                                                    <div class="modal-main">
                                                        <div class="info-main">
                                                            <div class="info-img"><img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                            runat="server" /></div>
                                                            <div class="info-box">
                                                                <ul>
                                                                    <li>
                                                                        <div class="info-title">Họ Tên:</div> <%# Eval("ProjectTitleEn") %></li>
                                                                    <li><div class="info-title">Chức vụ:</div> <%# Eval("TagEn") %></li>
                                                                    <li><div class="info-title">Chuyên ngành:</div> <%# Eval("MetaTittleEn") %></li>
                                                                    <li><div class="info-title">Kinh nghiệm:</div> <%# Eval("MetaDescriptionEn") %></li>
                                                                    <li><div class="info-title">Ngoại ngữ:</div> <%# Eval("DescriptionEn") %></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="info-content">
                                                            <%# Eval("ContentEn") %>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsBacSi" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
                                    <SelectParameters>
                                        <asp:Parameter Name="StartRowIndex" Type="String" />
                                        <asp:Parameter Name="EndRowIndex" Type="String" />
                                        <asp:Parameter Name="Keyword" Type="String" />
                                        <asp:Parameter Name="ProjectTitle" Type="String" />
                                        <asp:Parameter Name="Description" Type="String" />
                                        <asp:ControlParameter ControlID="hdnProjectCategoryID" Name="ProjectCategoryID" PropertyName="Value" Type="String" />
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
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
            </div>
            <div id="info1" class="modal" style="display: none;">
                <div class="modaltitle">ĐẶT LỊCH KHÁM</div>
                <div class="modal-main">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="asidelist" runat="Server">
    <div class="list-ul">
        <asp:ListView ID="lstThongTinBacSi" runat="server" DataSourceID="odsThongTinBacSi"
            EnableModelValidation="True">
            <ItemTemplate>
                <li><a href='<%# Eval("ProjectCategoryLink") %>'><%# Eval("ProjectCategoryNameEn") %></a></li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul>
                    <li runat="server" id="itemPlaceholder"></li>
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsThongTinBacSi" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="9" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

