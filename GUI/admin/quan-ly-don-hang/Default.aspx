<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.quan_ly_don_hang.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Quản lý đơn hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <asp:Repeater ID="rpt_donHang" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered table-hover table-responsive-sm datatable">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60;">
                                <th>#</th>
                                <th>Mã đơn</th>
                                <th>Ngày đặt</th>
                                <th>Trạng thái</th>
                                <th>Mã KH</th>
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
                        <td><%# Eval("gd.ma_kh") %></td>
                        <td>
                            <a href="./edit.aspx?madon=<%# Eval("gd.ma_gd") %>" class="btn btn-success btn-sm"><i class="fas fa-eye"></i></a>
                            <a href="./hoa-don.aspx?madon=<%# Eval("gd.ma_gd") %>" class="btn btn-info btn-sm" target='_blank'><i class="fas fa-print"></i></a>
                        </td>
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
