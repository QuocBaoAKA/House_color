<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.tim_kiem.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tìm kiếm</title>
    <style>
        .load-more-tk {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="pt-4">
            <!-- Content -->
            <div class="">
                <h3 class="font-weight-bold dark-grey-text"><strong>Sản phẩm với từ khóa: <asp:Literal ID="ltr_tuKhoa" runat="server"></asp:Literal></strong></h3>
                <!-- Products Grid -->
                <section class="section pt-4">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <asp:Repeater ID="rpt_hienThiSanPham" runat="server" OnItemCommand="rpt_hienThiSanPham_ItemCommand">
                            <ItemTemplate>
                                <div class="col-lg-3">
                                    <div class="load-more-tk">
                                        <!-- Card -->
                                        <div class="card card-ecommerce mb-4" style="height: 390px;">
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
                    <a class="btn btn-outline-dark waves-effect" href="#" id="loadMoreTimKiem">Hiển thị thêm</a>
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
