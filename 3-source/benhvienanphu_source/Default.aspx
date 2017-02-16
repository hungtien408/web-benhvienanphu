<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="uc/dat-lich.ascx" TagName="datlich" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:ListView ID="lstBanner2" runat="server"
                    DataSourceID="odsBanner" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class='<%# (Container.DataItemIndex) == 0 ? "item active" : "item" %>'>
                            <a href='<%# Eval("Website") %>'>
                                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
                                <div class="carousel-caption">
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBanner" runat="server"
                    SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
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

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div class="container">
        <div class="wrapper-main">
            <div class="row">
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a href="dich-vu.aspx">
                            <div class="item-img">
                                <img src="assets/images/img1.jpg" alt="" />
                            </div>
                            <div class="item-name">CÁC CHUYÊN KHOA</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a href="goi-kham-suc-khoe.aspx">
                            <div class="item-img">
                                <img src="assets/images/img2.jpg" alt="" />
                            </div>
                            <div class="item-name">CÁC GÓI KHÁM SỨC KHỎE</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a href="thong-tin-bac-si.aspx">
                            <div class="item-img">
                                <img src="assets/images/img3.jpg" alt="" />
                            </div>
                            <div class="item-name">THÔNG TIN BÁC SĨ</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a id="datlich" href="javascript:void(0);">
                            <div class="item-img">
                                <img src="assets/images/img4.jpg" alt="" />
                            </div>
                            <div class="item-name">ĐẶT LỊCH KHÁM</div>
                        </a>
                    </div>
                    <uc1:datlich ID="datlich1" runat="server" />
                </div>
                <%--<asp:ListView ID="lstDanhMuc" runat="server" DataSourceID="odsDanhMuc"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-md-3">
                            <div class="wrapper-box">
                                <a href="#">
                                    <div class="item-img">
                                        <img src="assets/images/img1.jpg" alt="" />
                                    </div>
                                    <div class="item-name">CÁC CHUYÊN KHOA</div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsDanhMuc" runat="server" SelectMethod="ProjectCategorySelectAll" TypeName="TLLib.ProjectCategory">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3, 9" Name="parentID" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>--%>
            </div>
        </div>
        <div class="wrapper-slide">
            <div class="title-slide">
                <span>PHƯƠNG CHÂM CỦA CHÚNG TÔI</span>
                <h1>VÌ SỨC KHỎE BỆNH NHÂN</h1>
            </div>
            <div id="SliderWrap" class="owl-carousel">
                <asp:ListView ID="lstNewHot" runat="server" DataSourceID="odsNewHot"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="item-img">
                                <a href='<%# progressTitle(Eval("ProjectTitle")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" /></a>
                            </div>
                            <div class="item-wrap">
                                <div class="title"><span><%# Eval("ProjectCategoryName") %></span></div>
                                <div class="item-content">
                                    <div class="item-name"><a href='<%# progressTitle(Eval("ProjectTitle")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'><%# Eval("ProjectTitle") %></a></div>
                                    <div class="description"><%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 100) %></div>
                                    <div class="view-all"><a href='<%# progressTitle(Eval("ProjectTitle")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>Xem chi tiết</a></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsNewHot" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProjectTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="6" Name="ProjectCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ListView ID="lstNewHot2" runat="server" DataSourceID="odsNewHot2"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="item-img">
                                <a href='<%# progressTitle(Eval("ProjectTitle")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/project/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" /></a>
                            </div>
                            <div class="item-wrap">
                                <div class="title"><span><%# Eval("ProjectCategoryName") %></span></div>
                                <div class="item-content">
                                    <div class="item-name"><a href='<%# progressTitle(Eval("ProjectTitle")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'><%# Eval("ProjectTitle") %></a></div>
                                    <div class="description"><%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 100) %></div>
                                    <div class="view-all"><a href='<%# progressTitle(Eval("ProjectTitle")) + "-tt-" + Eval("ProjectID") + ".aspx" %>'>Xem chi tiết</a></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsNewHot2" runat="server" SelectMethod="ProjectSelectAll" TypeName="TLLib.Project">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProjectTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="18" Name="ProjectCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
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
    </div>
</asp:Content>



