<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="thu-vien.aspx.cs" Inherits="thu_vien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <asp:ListView ID="lstBannerGioiThieu" runat="server"
            DataSourceID="odsBannerGioiThieu" EnableModelValidation="True">
            <ItemTemplate>
                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                    visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerGioiThieu" runat="server"
            SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
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
    <div class="library-main">
        <div class="title-main">
            <h1>THƯ VIỆN ẢNH - VIDEO</h1>
        </div>
        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
        <div class="library-content">
            <asp:ListView ID="lstThuVienAnh" runat="server" DataSourceID="odsPhotoAlbumCategory"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="library-box">
                        <a data-modal='<%# "#login-modal" + Eval("PhotoAlbumCategoryID")%>' href="javascript:void(0);">
                            <div class="library-img">
                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbumcategory/" + Eval("ImageName") %>' runat="server"
                                    visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                            </div>
                            <div class="library-name">
                                <%# Eval("PhotoAlbumCategoryName")%>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsPhotoAlbumCategory" runat="server" SelectMethod="PhotoAlbumCategorySelectAll"
                TypeName="TLLib.PhotoAlbumCategory">
                <SelectParameters>
                    <asp:Parameter Name="PhotoAlbumCategoryName" Type="String" />
                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="pager">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="8" PagedControlID="lstThuVienAnh">
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
        <%--</ContentTemplate>
        </asp:UpdatePanel>--%>
        <div class="video-main">
            <div class="video-left">
                <div class="wrapper-video">
                    <asp:ListView ID="lstVideoHot" runat="server" DataSourceID="odsVideoHot"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="video-details">
                                <div id="jwplayer3"></div>
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        jwplayer('jwplayer3').setup({
                                            image: '<%# "res/video/thumbs/" + Eval("ImagePath") %>',
                                            file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                            flashplayer: "assets/js/jwplayer.flash.swf",
                                            width: '100%',
                                            aspectratio: '16:9',
                                            primary: "html5",
                                            width: '100%',
                                            autostart: false,
                                        });
                                    });
                                </script>
                                <script>
                                    $(document).ready(function () {
                                        $(".slide-box a").click(function () {
                                            srcfilm = $(this).attr("data-src");
                                            //imga = $(this).attr("rel-img");
                                            playTrailer(srcfilm, "");
                                            $(".slide-box a").removeClass("active");
                                            $(this).addClass("active");
                                        });
                                    });

                                    function playTrailer(video, images) {
                                        jwplayer().load([{
                                            controlbar: 'none',
                                            file: video,
                                            autostart: false,
                                            //image: "http://www.quyenauto.com/res/product/" + images,
                                        }]);
                                        jwplayer().play();
                                    }
                                </script>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsVideoHot" runat="server" SelectMethod="VideoSelectAll" TypeName="TLLib.Video">
                        <SelectParameters>
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="VideoCategoryID" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
            <div class="video-right">
                <div class="title-box">
                    <h1>VIDEO NỔI BẬT</h1>
                </div>
                <div class="">
                    <div id="sliderProject" class="slider">
                        <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide-box">
                                    <a data-src='<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>'>
                                        <div class="slide-img">
                                            <img alt='<%# Eval("ImagePath") %>' src='<%# !string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "~/res/video/thumbs/" + Eval("ImagePath") : "~/assets/images/video-img.jpg" %>'
                                                runat="server" />
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll" TypeName="TLLib.Video">
                            <SelectParameters>
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="VideoCategoryID" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:ListView ID="lstPhotoAlbumCategory2" runat="server" DataSourceID="odsPhotoAlbumCategory"
        EnableModelValidation="True">
        <ItemTemplate>
            <div id='<%# "login-modal" + Eval("PhotoAlbumCategoryID")%>' class="modal library-modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <asp:HiddenField ID="hdnPhotoAlbumCategoryID" runat="server" Value='<%# Eval("PhotoAlbumCategoryID") %>' />
                    <div class="slider-for">
                        <asp:ListView ID="lstPhotoAlbumBig" runat="server" DataSourceID="odsPhotoAlbum"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slider-big">
                                    <div class="gallery-group">
                                        <div class="gallery-img">
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/" + Eval("ImageName") %>' runat="server" visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                                        </div>
                                        <div class="galley-name"><%# Eval("Title") %></div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsPhotoAlbum" runat="server" SelectMethod="PhotoAlbumSelectAll" TypeName="TLLib.PhotoAlbum">
                            <SelectParameters>
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Descripttion" Type="String" />
                                <asp:ControlParameter ControlID="hdnPhotoAlbumCategoryID" Name="PhotoAlbumCategoryID" PropertyName="Value" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <asp:ListView ID="lstPhotoAlbumSmall" runat="server" DataSourceID="odsPhotoAlbum"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="slider-small">
                                        <div class="gallery-small">
                                            <div class="small-box">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/thumbs/" + Eval("ImageName") %>' runat="server" visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="asidelist" runat="Server">
    <div class="list-ul">
        <asp:ListView ID="lstGioiThieu" runat="server" DataSourceID="odsGioiThieu"
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
                <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                <asp:Parameter Name="IsShowOnMenu" Type="String" />
                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>

