﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dich-vu-chi-tiet.aspx.cs" Inherits="dich_vu_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <asp:ListView ID="lstBannerDichVu" runat="server"
            DataSourceID="odsBannerDichVu" EnableModelValidation="True">
            <ItemTemplate>

                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerDichVu" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="7" Name="AdsCategoryID" Type="String" />
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
    <div class="service">
        <asp:ListView ID="lstDichVuChiTiet" runat="server" DataSourceID="odsDichVuChiTiet"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="title-main">
                    <h1><%# Eval("ProjectCategoryName") %></h1>
                </div>
                <div class="main-text">
                    <%# Eval("Content") %>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsDichVuChiTiet" runat="server" SelectMethod="ProjectCategorySelectOne" TypeName="TLLib.ProjectCategory">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProjectCategoryID" QueryStringField="dv" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="asidelist" runat="Server">
    <div class="list-ul">
        <asp:ListView ID="lstDichVu" runat="server" DataSourceID="odsDichVu"
            EnableModelValidation="True">
            <ItemTemplate>
                <li><a href='<%# Eval("ProjectCategoryLink") %>'><%# Eval("ProjectCategoryName") %></a></li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul>
                    <li runat="server" id="itemPlaceholder"></li>
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsGioiThieu" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

