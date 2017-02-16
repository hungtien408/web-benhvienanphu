<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dat-lich-kham.aspx.cs" Inherits="dat_lich_kham" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Src="uc/dat-lich.ascx" TagName="datlich" TagPrefix="uc1" %>
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
        <asp:ListView ID="lstDatLichKham" runat="server" DataSourceID="odsDatLichKham"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="title-main">
                    <h1><%# Eval("ProjectTitle") %></h1>
                </div>
                <div class="main-text">
                    <%# Eval("Content") %>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsDatLichKham" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProjectTitle" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter DefaultValue="16" Name="ProjectCategoryID" Type="String" />
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
        <div class="buttongui"><a id="datlich" href="javascript:void(0);">ĐẶT LỊCH KHÁM</a></div>
        <uc1:datlich ID="datlich1" runat="server" />
        <%--<asp:Button ID="Button2" runat="server" Text="Button" />
        <div id="datlich" class="modal" style="display: none;">
            <div class="modal-title">ĐẶT LỊCH KHÁM</div>
            <div class="modal-main">

                <div class="btn-gui">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </div>
            </div>
        </div>--%>
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

