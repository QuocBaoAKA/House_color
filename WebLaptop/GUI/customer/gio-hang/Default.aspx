<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.gio_hang.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Giỏ hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Main Container -->
    <div class="container ">

        <!-- Section: product details -->
        <section id="productDetails" class="pb-5">

            <!-- News card -->
            <div class="card mt-5 p-3 hoverable">
                <h2 class="text-center m-3 text-uppercase text-primary font-weight-bold">Giỏ hàng của bạn</h2>

                <asp:Literal ID="ltr_khongCoGioHang" runat="server"></asp:Literal>

                <asp:Repeater ID="rpt_gioHang" runat="server" OnItemCommand="rpt_gioHang_ItemCommand">
                    <HeaderTemplate>
                        <table class="table table-bordered table-hover table-responsive-sm">
                            <thead class="text-white" style="background-color: #595A60;">
                                <tr>
                                    <th>#</th>
                                    <th style="width:30%">Tên sản phẩm</th>
                                    <th>Hình ảnh</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Container.ItemIndex + 1 %></td>
                            <td data-toggle="tooltip" data-placement="left" title="Nhấn vào tên sản phẩm để đến trang chi tiết sản phẩm"><a href="../chi-tiet-san-pham/?masp=<%# Eval("maSP") %>"><%# Eval("tenSP") %></a></td>
                            <td>
                                <img src="../../public/images/product/<%# Eval("hinhAnh") %>" width="50" /></td>
                            <td><%# Eval("gia", "{0:0,00}") %> vnđ</td>
                            <td>
                                <asp:TextBox ID="txt_slMua" runat="server" class="ml-2 form-control w-75" Style="min-width: 60px" type="number" value='<%# Eval("sl") %>' min="1" max='<%# Eval("slTon") %>' required></asp:TextBox>
                            </td>
                            <td><%# Eval("thanhTien", "{0:0,00}") %> vnđ</td>
                            <td>
                                <asp:Button ID="lbtn_capNhat" CommandArgument='<%# Eval("maSP") %>' CommandName="capNhat" class="btn btn-success btn-sm" runat="server" OnClick="lbtn_capNhat_Click" Text="Cập nhật"></asp:Button>
                                <asp:Button class="btn btn-danger btn-sm" ID="btn_delete" CommandArgument='<%# Eval("maSP") %>' CommandName="xoa" OnClick="btn_delete_Click" OnClientClick="return confirm('Bạn có chắc xóa sản phẩm này khỏi giỏ hàng!')" runat="server" Text="Xóa"/>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                        <% if (Session["gioHang"] != null)
                            {
                        %>
                        <div class="text-right">
                            <asp:Label ID="lb_tongTien" runat="server" Style="font-size: 16pt; color: red;"></asp:Label>
                            <a class="ml-3 btn btn-primary" href="./dat-hang.aspx">Xác nhận giỏ hàng</a>
                        </div>
                        <%
                            }
                        %>
            </div>
        </section>
    </div>


</asp:Content>
