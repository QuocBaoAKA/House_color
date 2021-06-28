<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.lich_su_mua_hang.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Lịch sử mua hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable">
   <h2 class="text-center"><strong>Lịch sử mua hàng</strong></h2>
            <asp:Repeater ID="rpt_donHang" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered table-hover table-responsive-sm datatable">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60;">
                                <th>#</th>
                                <th>Mã đơn</th>
                                <th>Ngày đặt</th>
                                <th>Trạng thái</th>
                                <th style="width: 20%">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("gd.ma_gd") %></td>
                        <td><%# Eval("ngayDatHang") %></td>
                        <%# colorFortd(Eval("tt.ten_trang_thai").ToString()) %>
                        <td>
                            <a href="./chi-tiet-don-hang.aspx?madon=<%# Eval("gd.ma_gd") %>" class="btn btn-success btn-sm"><i class="fas fa-eye"></i></a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
      
        </div>
</asp:Content>
