<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Phu</title>
    <meta name="description" content="An Phu" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item">
                    <img src="assets/images/banner-img-1.jpg" alt="" />
                </div>
                <div class="item">
                    <img src="assets/images/banner-img-2.jpg" alt="" />
                </div>
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
                        <a href="#">
                            <div class="item-img">
                                <img src="assets/images/img1.jpg" alt="" />
                            </div>
                            <div class="item-name">CÁC CHUYÊN KHOA</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a href="#">
                            <div class="item-img">
                                <img src="assets/images/img2.jpg" alt="" />
                            </div>
                            <div class="item-name">CÁC GÓI KHÁM SỨC KHỎE</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a href="#">
                            <div class="item-img">
                                <img src="assets/images/img3.jpg" alt="" />
                            </div>
                            <div class="item-name">THÔNG TIN BÁC SĨ</div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="wrapper-box">
                        <a href="#">
                            <div class="item-img">
                                <img src="assets/images/img4.jpg" alt="" />
                            </div>
                            <div class="item-name">ĐẶT LỊCH KHÁM</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper-slide">
            <div class="title-slide">
                <span>PHƯƠNG CHÂM CỦA CHÚNG TÔI</span>
                <h1>VÌ SỨC KHỎE BỆNH NHÂN</h1>
            </div>
            <div id="SliderWrap" class="owl-carousel">
                <div class="item">
                    <div class="item-img">
                        <a href="#">
                            <img src="assets/images/img5.jpg" alt="" /></a>
                    </div>
                    <div class="item-wrap">
                        <div class="title"><span>Bài viết Y khoa</span></div>
                        <div class="item-content">
                            <div class="item-name"><a href="#">Bệnh cúm và cách phòng tránh khi giao mùa.</a></div>
                            <div class="description">Cúm là một bệnh rất dễ lây truyền, có thể xảy ra ở trẻ em hoặc người lớn ở mọi lứa tuổi. Bệnh cúm lây lan dễ dàng qua ho, hắt hơi,...</div>
                            <div class="view-all"><a href="#">Xem chi tiết</a></div>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <div class="item-img">
                        <a href="#">
                            <img src="assets/images/img6.jpg" alt="" /></a>
                    </div>
                    <div class="item-wrap">
                        <div class="title"><span>Tư vấn Y khoa</span></div>
                        <div class="item-content">
                            <div class="item-name"><a href="#">Chuẩn bị mang thai, bạn cần làm gì?</a></div>
                            <div class="description">Để con bạn có được sự phát triển tốt nhất ngay từ khi trong bụng mẹ, bạn nên có kế hoạch chuẩn bị về mặt sức khỏe trước khi mang thai...</div>
                            <div class="view-all"><a href="#">Xem chi tiết</a></div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="item-img">
                        <a href="#">
                            <img src="assets/images/img5.jpg" alt="" /></a>
                    </div>
                    <div class="item-wrap">
                        <div class="title"><span>Bài viết Y khoa</span></div>
                        <div class="item-content">
                            <div class="item-name"><a href="#">Bệnh cúm và cách phòng tránh khi giao mùa.</a></div>
                            <div class="description">Cúm là một bệnh rất dễ lây truyền, có thể xảy ra ở trẻ em hoặc người lớn ở mọi lứa tuổi. Bệnh cúm lây lan dễ dàng qua ho, hắt hơi,...</div>
                            <div class="view-all"><a href="#">Xem chi tiết</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



