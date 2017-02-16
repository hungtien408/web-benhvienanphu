﻿<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true" CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <asp:ListView ID="lstBannerTinTuc" runat="server"
            DataSourceID="odsBannerTinTuc" EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerTinTuc" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="9" Name="AdsCategoryID" Type="String" />
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
<asp:Content ID="Content2" ContentPlaceHolderID="colmain" runat="Server">
    <div class="title-main">
        <h1>
            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h1>
    </div>
    <div id="slideNews" class="owl-carousel">
        <asp:ListView ID="lstTinTucNew" runat="server" DataSourceID="odsTinTucNew"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="item">
                    <div class="item-img">
                        <a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>
                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                runat="server" /></a>
                    </div>
                    <div class="item-wrap">
                        <div class="item-content">
                            <div class="item-name"><a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'><%# Eval("ProjectTitleEn") %></a></div>
                            <div class="description mCustomScrollbar content"><%# Eval("DescriptionEn") %></div>
                            <div class="view-all"><a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>Xem chi tiết</a></div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsTinTucNew" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProjectTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:QueryStringParameter QueryStringField="nci" DefaultValue="2" Name="ProjectCategoryID" Type="String" />
                <asp:Parameter Name="Tag" Type="String" />
                <asp:Parameter Name="IsHot" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsNew" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                <asp:Parameter Name="FromDate" Type="String" />
                <asp:Parameter Name="ToDate" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div class="news-main">
        <asp:ListView ID="lstTinTuc" runat="server" DataSourceID="odsTinTuc"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="news-box">
                    <div class="news-img">
                        <a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>
                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                runat="server" /></a>
                    </div>
                    <div class="news-content">
                        <div class="news-name"><a href='<%# progressTitle(Eval("ProjectTitleEn")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'><%# Eval("ProjectTitleEn") %></a></div>
                        <div class="description"><%# Eval("DescriptionEn") %></div>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsTinTuc" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProjectTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:QueryStringParameter QueryStringField="nci" DefaultValue="2" Name="ProjectCategoryID" Type="String" />
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
    <div class="pager">
        <asp:DataPager ID="DataPager1" runat="server" PageSize="5" PagedControlID="lstTinTuc">
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="asidelist" runat="Server">
    <div class="list-ul">
        <asp:ListView ID="lstNewCategory" runat="server" DataSourceID="odsNewCategory"
            EnableModelValidation="True">
            <ItemTemplate>
                <li><a href='<%# !string.IsNullOrEmpty(Eval("ProjectCategoryLink").ToString()) ? Eval("ProjectCategoryLink") : progressTitle(Eval("ProjectCategoryNameEn")) + "-nci-" + Eval("ProjectCategoryID") + ".aspx" %>'><%# Eval("ProjectCategoryNameEn") %></a></li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul>
                    <li runat="server" id="itemPlaceholder"></li>
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsNewCategory" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
