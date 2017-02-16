<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="khoa-nhi.aspx.cs" Inherits="khoa_nhi" %>

<%@ Register Src="~/uc/list-khoa.ascx" TagPrefix="uc1" TagName="listkhoa" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>An Phu</title>
    <meta name="description" content="An Phu" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerinfo" runat="Server">
    <div class="banner-img">
        <img src="assets/images/banner4.jpg" alt="" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="colmain" runat="Server">
    <div class="information">
        <div class="title-main">
            <h1>BÀI VIẾT KHOA NHI</h1>
        </div>
        <uc1:listkhoa runat="server" ID="listkhoa" />
         <div class="list-posts">
            <div class="post-box">
                <div class="post-img">
                    <a href="#">
                        <img src="assets/images/img7.jpg" alt="" /></a>
                </div>
                <div class="post-content">
                    <div class="post-name"><a href="#">Hăm tã ở trẻ</a></div>
                    <div class="description">Hăm tã là một trong những vấn đề về da phổ biến nhất ở trẻ. Chúng ta không thể khẳng định trẻ vào độ tuổi nào sẽ bị hăm tã hay trẻ dùng tã vải sẽ ít bị hơn dùng tã giấy.</div>
                </div>
            </div>
            <div class="post-box">
                <div class="post-img">
                    <a href="#">
                        <img src="assets/images/img8.jpg" alt="" /></a>
                </div>
                <div class="post-content">
                    <div class="post-name"><a href="#">Viêm phổi</a></div>
                    <div class="description">Viêm phổi xảy ra ở trẻ dưới 3-5 tuổi được xem là bệnh lý nghiêm trọng, gây tác động nguy hiểm đến sức khỏe của trẻ. Việc nhận biết sớm các triệu chứng viêm phổi,...</div>
                </div>
            </div>
            <div class="post-box">
                <div class="post-img">
                    <a href="#">
                        <img src="assets/images/img9.jpg" alt="" /></a>
                </div>
                <div class="post-content">
                    <div class="post-name"><a href="#">Có nên chích hoocmon tăng trưởng chiều cao...</a></div>
                    <div class="description">Cháu 16 tuổi, cao 1,58m và không thấy cao thêm. Cháu có thể chích hoocmon tăng trưởng để cao hơn không? </div>
                </div>
            </div>
            <div class="post-box">
                <div class="post-img">
                    <a href="#">
                        <img src="assets/images/img10.jpg" alt="" /></a>
                </div>
                <div class="post-content">
                    <div class="post-name"><a href="#">Đang bị cảm cúm có nên tiêm vacccine </a></div>
                    <div class="description">Vaccine cúm được khuyến cáo tiêm ngừa mỗi năm một lần do các virus cúm cũng thay đổi mỗi năm và thành phần vaccine ngừa cúm được điều chỉnh hằng năm nhằm...</div>
                </div>
            </div>
            <div class="post-box">
                <div class="post-img">
                    <a href="#">
                        <img src="assets/images/img11.jpg" alt="" /></a>
                </div>
                <div class="post-content">
                    <div class="post-name"><a href="#">Trẻ ít đi tiêu có ảnh hưởng đến sự tăng...</a></div>
                    <div class="description">Chào bác sĩ con tôi được 4 tháng, cháu cân nặng 6, 6 kg và cao 62 cm. Một tuần cháu đi ngoài 1 lần, phân màu vàng và mềm.</div>
                </div>
            </div>
            <div class="post-box">
                <div class="post-img">
                    <a href="#">
                        <img src="assets/images/img12.jpg" alt="" /></a>
                </div>
                <div class="post-content">
                    <div class="post-name"><a href="#">Trẻ em có thể bị tiểu đường?</a></div>
                    <div class="description">Bệnh tiểu đường có thể xảy ra ở mọi lứa tuổi, từ trẻ sơ sinh đến người lớn. Hiện có hai dạng là tiểu đường type 1 do cơ thể không sản xuất được insulin và tiểu đường type 2.</div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="pager">
            <a href="#" class="current">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#" class="next fa fa-angle-right"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="asidelist" runat="Server">
    <div class="list-ul">
        <ul>
            <li><a href="#">Đội ngủ bác sĩ</a></li>
            <li><a href="#">Bài viết y khoa</a></li>
        </ul>
    </div>
</asp:Content>

