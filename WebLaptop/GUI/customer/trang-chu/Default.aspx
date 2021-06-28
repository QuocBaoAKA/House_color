<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.trang_chu.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <!--Carousel Wrapper-->
        <div id="carousel-example-1z" class="carousel slide carousel-fade mt-4" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                <li data-target="#carousel-example-1z" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
                <!--First slide-->
                <div class="carousel-item active">
                    <img class="d-block w-100" height="500" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/macbook-pro-16-2.JPG"
                        alt="First slide">
                </div>
                <!--/First slide-->
                <!--Second slide-->
                <div class="carousel-item">
                    <img class="d-block w-100" height="500" src="https://nordiccoder.com/app/uploads/2020/08/ASUS_M433IA.png"
                        alt="Second slide">
                </div>
                <!--/Second slide-->
                <!--Third slide-->
                <div class="carousel-item">
                    <img class="d-block w-100" height="500" src="https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_960_720.jpg"
                        alt="Third slide">
                </div>
                <!--/Third slide-->
            </div>
            <!--/.Slides-->
            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
        </div>
        <!--/.Carousel Wrapper-->
        <div class="pt-4">
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
            </div>
            <!-- Grid row -->


            <!-- Grid row -->
            <div class="row justify-content-center mb-4">
                <!-- Pagination -->
                <nav class="mb-4">
                </nav>
                <!-- Pagination -->
            </div>
            <!-- Grid row -->

            <!-- Products Grid -->
        </div>
        <!-- Content -->
    </div>
    <!-- Main Container -->
</asp:Content>
