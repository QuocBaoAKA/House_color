<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="GUI.admin.quan_ly_don_hang.edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thông tin đơn hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="my-4 dark-grey-text font-weight-bold">Chi tiết đơn hàng</h5>
    <div class="card">
        <div class="card-body">
            <div class="row">
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
                        <b>Họ tên người nhận: </b>
                        <asp:Label ID="lb_hoTenNguoiNhan" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>
                        <b>Địa chỉ nhận hàng: </b>
                        <asp:Label ID="lb_diaChiNhan" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>
                        <b>Số điện thoại nhận hàng: </b>
                        <asp:Label ID="lb_sdtNguoiNhan" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p>
                        <b>Email người nhận: </b>
                        <asp:Label ID="lb_emailNguoiNhan" runat="server" Text="Label"></asp:Label>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Label ID="lb_tongCong" CssClass="text-danger" Style="font-size: 16pt" runat="server" Text="Label"></asp:Label>
                </div>
            </div>

            <asp:DropDownList ID="ddl_trangThai" runat="server" class="mdb-select md-form colorful-select dropdown-ins mt-5" required>
                <asp:ListItem Value="" disabled Selected>-- Chọn --</asp:ListItem>
            </asp:DropDownList>
            <label class="mdb-main-label">Trạng thái đơn hàng</label>


            <div class="text-right">
                <asp:Literal ID="ltr_inHoaDon" runat="server"></asp:Literal>
                <asp:Button ID="btn_sua" runat="server" Text="Cập nhật" CssClass="btn btn-success btn-sm" OnClick="btn_sua_Click"/>
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

        </div>
    </div>

    
</asp:Content>
