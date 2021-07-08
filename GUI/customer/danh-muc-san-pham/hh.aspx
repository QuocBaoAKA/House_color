<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="hh.aspx.cs" Inherits="GUI.customer.danh_muc_san_pham.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Danh mục sản phẩm</title>
    <style>
        .load-more {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row pt-4">
            <!-- Sidebar -->
            <div class="col-lg-3">
                <div class="">
                    <!-- Grid row -->
                    <div class="row">
                        <div class="col-md-6 col-lg-12 mb-2">
                            <!-- Panel -->
                            <h5 class="font-weight-bold dark-grey-text"><strong>Lọc theo giá</strong></h5>
                            <asp:DropDownList ID="ddl_locTheo" runat="server" class="mdb-select md-form colorful-select dropdown-primary" required>
                                <asp:ListItem Value="" disabled Selected>Chọn</asp:ListItem>
                                <asp:ListItem Value="1">Giá tăng </asp:ListItem>
                                <asp:ListItem Value="2">Giá giảm </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <!-- Grid row -->
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Filter by price -->
                        <div class="col-md-6 col-lg-12 mb-2">
                            <h5 class="font-weight-bold dark-grey-text"><strong>Mức giá</strong></h5>

                           <%-- Ẩn --%>
                            <div class="range-field">
                               <div class="collapse mt-4" id="boxnoidung">
                                    <div class="card card-body bg-warning">
                                 <p class="card-text">
                                     <%--Hiển thị--%>
                                     <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                     <asp:TextBox ID="minPrice" class="border-0" type="range" runat="server" step="1000"></asp:TextBox>
                                     <%--Hiển thị--%>
                                 </p>
                                    </div>
                               </div>
                                <%--Hiển thị--%>
                            </div>
                            <%-- Ẩn --%>

                            <div class="range-field">
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                                <asp:TextBox ID="maxPrice" class="border-0" type="range" runat="server" step="1000"></asp:TextBox>
                                <label for="minPrice">Giá: </label>
                                <span class="font-weight-bold text-primary ml-2 mt-1 valueSpanMax"></span>
                            </div>
                        </div>
                        <!-- Filter by price -->
                    </div>
                    <!-- Grid row -->
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Filter by price -->
                        <div class="col-md-6 col-lg-12 mb-2 text-right">
                            <asp:Button ID="btn_loc" class="btn btn-primary btn-sm" runat="server" Text="Lọc" OnClick="btn_loc_Click" />
                        </div>
                        <!-- Filter by price -->
                    </div>
                    <!-- Grid row -->
                </div>
            </div>
            <!-- Sidebar -->
            <!-- Content -->
            <div class="col-lg-9">  
                <h3 class="font-weight-bold dark-grey-text"><strong>Danh mục: <asp:Label ID="lb_tenDanhMuc" runat="server"></asp:Label></strong></h3>
                <!-- Products Grid -->
                <section class="section pt-4">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <asp:Repeater ID="rpt_hienThiSanPham" runat="server" OnItemCommand="rpt_hienThiSanPham_ItemCommand">
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-12">
                                    <div class="load-more">
                                        <!-- Card -->
                                        <div class="card card-ecommerce mb-4" style="height: 390px;">
                                            <!-- Card image -->
                                            <div class="view overlay">
                                                <img src="../../public/images/<%# Eval("sp.HinhAnh") %>" class="img-fluid" style="height: 200px">
                                                <a href="../chi-tiet-san-pham/?masp=<%# Eval("sp.MaSP") %>">
                                                    <div class="mask rgba-white-slight"></div>
                                                </a>
                                            </div>
                                            <!-- Card image -->
                                            <!-- Card content -->
                                            <div class="card-body" style="padding-bottom: 0;">
                                                <!-- Category & Title -->
                                                <p class="card-title mb-1"><strong><a href="../chi-tiet-san-pham/?masp=<%# Eval("sp.MaSP") %>" class="dark-grey-text"><%# Eval("sp.TenSP") %></a></strong></p>

                                                <p><strong>Giá: <%# Eval("DonGia") %> vnđ</strong></p>
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
                                                            <asp:LinkButton ID="lbtn_muaHang" CommandArgument='<%# Eval("sp.MaSP") %>' CommandName="muaHang" class="btn btn-outline-primary btn-md waves-effect ml-0" runat="server" OnClick="lbtn_muaHang_Click" OnClientClick="toastr.success('Thêm sản phẩm vào giỏ hàng thành công')">
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
     <script>
        document.getElementById("ContentPlaceHolder1_minPrice").max = <%=Session["maxPrice"]%>;
        document.getElementById("ContentPlaceHolder1_minPrice").min = <%=Session["minPrice"]%>;
        document.getElementById("ContentPlaceHolder1_minPrice").value = <%=Session["minPrice"]%>;
        document.getElementById("ContentPlaceHolder1_maxPrice").max = <%=Session["maxPrice"]%>;
        document.getElementById("ContentPlaceHolder1_maxPrice").min = <%=Session["minPrice"]%>;
        document.getElementById("ContentPlaceHolder1_maxPrice").value = <%=Session["maxPrice"]%>;
    </script>
</asp:Content>
