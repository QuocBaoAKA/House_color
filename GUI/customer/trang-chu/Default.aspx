<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.trang_chu.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Trang chủ</title>
    <style>
        .hero {
    height: calc(
        100vh -
            (
                var(--top-header-size) + var(--mid-header-size) +
                    var(--bottom-header-size)
            )
    );
    padding: 0 20px;
}

.slider,
.slider .container {
    height: 100%;
    position: relative;
}

.slide {
    height: 0;
    position: absolute;
    display: flex;
    inset: 0;
    overflow: hidden;
    visibility: hidden;
}

.slide.active {
    visibility: visible;
    height: 100%;
}

.slide .info {
    width: 50%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    height: 100%;
}

.info-content h2 {
    font-size: 70px;
    margin: 10px 0 35px;
}

.info-content button {
    margin-top: 30px;
}

.slide .img {
    width: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.btn-flat {
    display: inline-block;
    border: 2px solid #000;
    background-color: #000;
    color: #fff;
    padding: 15px 35px;
    font-size: 15px;
    outline: 0;
    font-weight: 600;
    text-transform: uppercase;
}

.btn-hover {
    transition: all 0.3s ease-in-out;
}

.btn-hover:hover {
    background-color: #fff;
    color: #000;
}

.slide-controll {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    outline: 0;
    border: 0;
    border-radius: 50%;
    font-size: 25px;
    display: flex;
    align-items: center;
    padding: 10px;
    transition: all 0.3s cubic-bezier(0.77, 0, 0.175, 1);
}

.slide-controll:hover {
    background-color: #000;
    color: #fff;
}

.slide-next {
    right: -80px;
}

.slide-prev {
    left: -80px;
}

.slider:hover .slide-next {
    right: 50px;
}

.slider:hover .slide-prev {
    left: 50px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!---footer---->
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://sonduluxvietnam.com/wp-content/uploads/2017/02/banner3.jpg" class="d-block w-100" alt="..." />
    </div>
    <div class="carousel-item">
      <img src="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/styles/article_hero_image_scale/s3/article/top-banner-ec-cbb_2.jpg?itok=Kfu7BF_v" class="d-block w-100" alt="..." />
    </div>
    <div class="carousel-item">
      <img src="https://phoson.com.vn/upload/images/news-1490862411.jpg" class="d-block w-100" alt="..." />
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    <!---end---->
        <!--/.Carousel Wrapper-->
       <%-- <div class="pt-4">
            <!-- Content -->
            <div class="">
                <div class="text-center"><h3 class="font-weight-bold dark-grey-text"><strong>SẢN PHẨM</strong></h3></div>
                <!-- Products Grid -->
                <section class="section pt-4">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <asp:Repeater ID="rpt_hienThiSanPham" runat="server" OnItemCommand="rpt_hienThiSanPham_ItemCommand">
                            <ItemTemplate>
                                <div class="col-lg-3 mb-4">
                                    <div class="load-more">
                                        <!-- Card -->
                                        <div class="card card-ecommerce" style="height: 390px;">
                                            <!-- Card image -->
                                            <div class="view overlay">
                                                <img src="../../public/images/product/<%# Eval("sp.hinh_anh") %>" class="img-fluid" style="height: 200px">
                                                <a href="../chi-tiet-san-pham/?masp=<%# Eval("sp.ma_sp") %>">
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!-- Card image -->
                                            <!-- Card content -->
                                            <div class="card-body" style="padding-bottom: 0;">
                                                <!-- Category & Title -->
                                                <p class="card-title mb-1"><strong><a href="../chi-tiet-san-pham/?masp=<%# Eval("sp.ma_sp") %>" class="dark-grey-text"><%# Eval("sp.ten_sp") %></a></strong></p>


                                                <p><strong>Giá: <%# Eval("gia") %> vnđ</strong></p>
                                                <!-- Card footer -->
                                                <div class="card-footer text-center">

                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <%
                                                                if (Session["taiKhoan"] == null)
                                                                {
                                                            %>
                                                            <asp:LinkButton ID="LinkButton1" class="btn btn-outline-primary btn-md waves-effect ml-0" runat="server" OnClientClick="toastr.error('Vui lòng đăng nhập để mua hàng')">
                                                                <i class="fas fa-cart-plus"></i> Mua hàng
                                                            </asp:LinkButton>
                                                            <%
                                                                }
                                                                else
                                                                {
                                                            %>
                                                            <asp:LinkButton ID="lbtn_muaHang" CommandArgument='<%# Eval("sp.ma_sp") %>' CommandName="muaHang" class="btn btn-outline-primary btn-md waves-effect ml-0" runat="server" OnClick="lbtn_muaHang_Click" OnClientClick="toastr.success('Thêm sản phẩm vào giỏ hàng thành công')">
                                                                <i class="fas fa-cart-plus"></i> Mua hàng
                                                            </asp:LinkButton>
                                                            <%
                                                                }
                                                            %>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>

                                                </div>
                                            </div>
                                            <!-- Card content -->
                                        </div>
                                        <!-- Card -->
                                    </div>
                                    <!-- Grid column -->
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </section>
                <div class="text-center">
                    <a class="btn btn-outline-dark waves-effect" href="#" id="loadMore">Hiển thị thêm</a>
                </div>
            </div>--%>
            <!-- Grid row -->


            <!-- Grid row -->
           <%-- <div class="row justify-content-center mb-4">
                <!-- Pagination -->
                <nav class="mb-4">
                </nav>
                <!-- Pagination -->
            </div>
            <!-- Grid row -->

            <!-- Products Grid -->
        </div>
        <!-- Content -->
    </div>--%>
    <!-- Main Container -->


</asp:Content>
