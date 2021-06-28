<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="chi-tiet-don-hang.aspx.cs" Inherits="GUI.customer.lich_su_mua_hang.chi_tiet_don_hang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Chi tiết đơn hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable">
        <h2 class="text-center"><strong>Chi tiết đơn hàng</strong></h2>
        <div class="row mt-3">
            <div class="col">
                <p>
                    <b>Mã đơn hàng: </b>
                    <asp:Label ID="lb_maDH" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <b>Ngày đặt hàng: </b>
                    <asp:Label ID="lb_ngayDatHang" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <b>Trạng thái hiện tại: </b>
                    <asp:Label ID="lb_trangThai" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <b>Mã khách hàng: </b>
                    <asp:Label ID="lb_maKH" runat="server" Text="Label"></asp:Label>
                </p>
            </div>
            <div class="col">
                <p>
                    <b>Họ tên: </b>
                    <asp:Label ID="lb_hoTenNguoiNhan" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <b>Địa chỉ: </b>
                    <asp:Label ID="lb_diaChiNhan" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <b>Số điện thoại: </b>
                    <asp:Label ID="lb_sdtNguoiNhan" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <b>Email: </b>
                    <asp:Label ID="lb_emailNguoiNhan" runat="server" Text="Label"></asp:Label>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Label ID="lb_tongCong" CssClass="text-danger" Style="font-size: 16pt" runat="server" Text="Label"></asp:Label>
            </div>
        </div>

        <h3 class="my-4 dark-grey-text text-center">Sản phẩm trong đơn hàng</h3>

        <asp:Repeater ID="rpt_sanPham" runat="server">
            <HeaderTemplate>
                <table class="table table-bordered table-hover table-responsive-sm datatable">
                    <thead>
                        <tr class="text-white" style="background-color: #595A60;">
                            <th>#</th>
                            <th>Mã SP</th>
                            <th>Tên SP</th>
                            <th>Hình ảnh</th>
                            <th>Số lượng</th>
                            <th>Giá tiền (vnđ)</th>
                            <th>Thành tiền (vnđ)</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Container.ItemIndex + 1 %></td>
                    <td><%# Eval("ctgd.ma_sp") %></td>
                    <td><%# Eval("sp.ten_sp") %></td>
                    <td>
                        <img src="../../public/images/product/<%# Eval("sp.hinh_anh") %>" width="50" />
                    </td>
                    <td><%# Eval("ctgd.so_luong_mua") %></td>
                    <td><%# Eval("gia") %></td>
                    <td><%# Eval("thanhTien") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                    </table>
            </FooterTemplate>
        </asp:Repeater>

         <div class="text-right">
            <a href="./Default.aspx" class="btn btn-danger btn-md">Quay lại</a>
        </div>
    </div>
</asp:Content>
