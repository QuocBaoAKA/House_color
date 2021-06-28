<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.chi_tiet_san_pham.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Chi tiết sản phẩm</title>
    <style>
        .title-main {
            border-bottom: 2px solid#194b84;
            padding: 12px 0px 5px 0px;
        }

            .title-main span {
                font-weight: bold;
                font-size: 18px;
                background: #343A40;
                color: white;
                border-top-right-radius: 10px;
                padding: 14px 41px 6px 26px;
                text-decoration: none;
            }

        .collapse-content .fa.fa-heart:hover {
            color: #f44336 !important;
        }

        .collapse-content .fa.fa-share-alt:hover {
            color: #0d47a1 !important;
        }
        /*h4 {
          display: none;
          padding: 20px;
        }

        div:hover h4 
        {
          display: block;
        }*/
        /* mouse over link */
        a:hover 
        {
          color: red;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0&appId=1035397543626875&autoLogAppEvents=1" nonce="QpDWsGnI"></script>

    <asp:Repeater ID="rpt_chiTietSP" runat="server" OnItemCommand="rpt_chiTietSP_ItemCommand">
        <ItemTemplate>


            <!-- Main Container -->
            <div class="container ">

                <!-- Section: product details -->
                <section id="productDetails" class="pb-5">

                    <!-- News card -->
                    <div class="card mt-5 hoverable">

                        <div class="row mt-5">

                            <div class="col-lg-6">

                                <div class="row mx-2">
                                    <img src="../../public/images/product/<%# Eval("sp.hinh_anh") %>" class="img-fluid">
                                </div>
                                <%--<!--Carousel Wrapper-->
                                <center>
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
                                                                                    <img class="d-block w-200" height="200" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/macbook-pro-16-1.JPG"
                                                                                        alt="First slide">
                                                                                </div>
                                                                                <!--/First slide-->
                                                                                <!--Second slide-->
                                                                                <div class="carousel-item">
                                                                                    <img class="d-block w-200" height="200" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/macbook-pro-16-2.JPG"
                                                                                        alt="Second slide">
                                                                                </div>
                                                                                <!--/Second slide-->
                                                                                <!--Third slide-->
                                                                                <div class="carousel-item">
                                                                                    <img class="d-block w-200" height="200" src="https://cdn.pixabay.com/photo/2017/11/27/21/31/computer-2982270_960_720.jpg"
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
                                    <div>Hình
                                     <h4><img src="../../public/images/product/1.jpg" /><img src="../../public/images/product/2.jpg" /><img src="../../public/images/product/3.jpg" /></h4>
                                </div>
                            </center>
                                
                            <!--/.Carousel Wrapper-->--%>
                            </div>

                            <div class="col-lg-5 mr-3 text-center text-md-left">

                                <h2 class="h2-responsive text-center text-md-left font-weight-bold mb-1 ml-xl-0 ml-4">
                                    <strong><%# Eval("sp.ten_sp") %></strong>
                                </h2>

                                <p class="ml-xl-0 ml-4 mt-4"><strong>Hãng: </strong><%# Eval("sp.ma_hang") %> <%--- <%# Eval("hsp.ten_hang") %>--%></p>

                                <p class="ml-xl-0 ml-4"><strong>Loại sản phẩm: </strong><%--<%# Eval("sp.ma_loai") %> ---%> <%# Eval("lsp.ten_loai") %></p>

                                <p class="ml-xl-0 ml-4"><strong>Số lượng tồn: </strong><%# Eval("sp.so_luong_ton") %></p>

                                <p class="ml-xl-0 ml-4"><strong>Giá: </strong><%# Eval("gia") %> vnđ</p>

                                <p class="ml-xl-0 ml-4"><strong>Số lượt xem sản phẩm: </strong><%# Eval("sp.so_luot_xem") %> </p>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <div class="form-inline">
                                            <label for="txt_slMua">Số lượng mua:</label>
                                            <asp:TextBox ID="txt_slMua" runat="server" class="ml-2 form-control w-25" type="number" value="1" min="1" max='<%# Eval("sp.so_luong_ton") %>' required></asp:TextBox>
                                        </div>

                                        <%
                                            if (Session["taiKhoan"] == null)
                                            {
                                        %>
                                        <asp:LinkButton ID="LinkButton1" class="mt-3 btn purple-gradient" runat="server" OnClientClick="toastr.error('Vui lòng đăng nhập để mua hàng')">
                                            <i class="fas fa-cart-plus mr-2"></i>Thêm vào giỏ hàng
                                        </asp:LinkButton>


                                        <%
                                            }
                                            else
                                            {
                                        %>

                                        <asp:Button ID="lbtn_muaHang" CommandArgument='<%# Eval("sp.ma_sp") %>' CommandName="muaHang" class="mt-3 btn purple-gradient" runat="server" OnClick="lbtn_muaHang_Click" OnClientClick="hienThiThongBaoChiTietSP()" Text="Thêm vào giỏ hàng" />
                                        <%
                                            }
                                        %>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>

                        </div>

                        <div class="container-fluid mt-5 mb-5">

                            <div class="collapse-content">

                                <!-- Text -->
                                <div class="card-text collapse" id="collapseContent">
                                    <h3 class="title-main"><span style="background-color: black;">Mô tả sản phẩm</span></h3>
                                    <%# Eval("sp.mo_ta") %>
                                </div>
                                <!-- Button -->
                                <div class="text-center">
                                    <a class="btn btn-outline-primary collapsed" data-toggle="collapse" href="#collapseContent" aria-expanded="false" aria-controls="collapseContent"></a>
                                </div>
                            </div>

                        </div>


                    </div>

                </section>
                <h3>Bình luận</h3>
                <div class="fb-comments container" data-href='https://developers.facebook.com/docs/plugins/<%# Eval("sp.ma_sp") %>' data-numposts="5" data-width="100%"></div>
            </div>
            
        </ItemTemplate>
    </asp:Repeater>
    
</asp:Content>
