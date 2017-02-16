<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true" CodeFile="bai-viet-y-khoa.aspx.cs" Inherits="bai_viet_y_khoa" %>

<%@ Register Src="~/uc/list-khoa.ascx" TagPrefix="uc1" TagName="listkhoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <asp:HiddenField ID="hdnBaiVietDetails" runat="server" />
    <a class="a-link-bvyk" href="<%= hdnBaiVietDetails.Value %>"></a>
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
            <h1>BÀI VIẾT Y KHOA</h1>
        </div>
        <uc1:listkhoa runat="server" ID="listkhoa" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="list-posts">
                    <asp:ListView ID="lstArticleMedical" runat="server" DataSourceID="odsArticleMedical"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="post-box">
                                <div class="post-img">
                                    <a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-bv-" + Eval("ProjectID") + ".aspx" %>'>
                                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                            runat="server" /></a>
                                </div>
                                <div class="post-content">
                                    <div class="post-name"><a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-bv-" + Eval("ProjectID") + ".aspx" %>'><%# Eval("ProjectTitleEn") %></a></div>
                                    <div class="description"><%# Eval("DescriptionEn") %></div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsArticleMedical" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProjectTitle" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:QueryStringParameter QueryStringField="ami" DefaultValue="18" Name="ProjectCategoryID" Type="String" />
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
                <div class="clearfix"></div>
                <div class="pager">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstArticleMedical">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false"
                                ShowNextPageButton="false" ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-angle-left"
                                RenderDisabledButtonsAsLabels="true" PreviousPageText="" />
                            <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging"
                                CurrentPageLabelCssClass="current" />
                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false"
                                ButtonCssClass="next fa fa-angle-right" ShowNextPageButton="true" ShowPreviousPageButton="false"
                                RenderDisabledButtonsAsLabels="true" NextPageText="" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <script>
        $(document).ready(function () {
            var value = window.location.href.substring(window.location.href.lastIndexOf('/') + 1);
            if (value === 'bai-viet-y-khoa.aspx') {
                $(".nav-tabs li:first-child").addClass("active");
            }
        })

    </script>
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

