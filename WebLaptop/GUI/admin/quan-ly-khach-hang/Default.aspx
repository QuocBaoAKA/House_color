<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.quan_ly_khach_hang.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Quản lý khách hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <asp:Repeater ID="rpt_kh" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered table-hover table-responsive-sm datatable">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60;">
                                <th>#</th>
                                <th>Mã khách hàng</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("ma_kh") %></td>
                        <td><%# Eval("ho_ten") %></td>
                        <td><%# Eval("email") %></td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal<%# Eval("ma_kh") %>">
                                <i class="fas fa-eye"></i>
                            </button>
                        </td>

                        <!-- Central Modal Small -->
                        <div class="modal fade" id="modal<%# Eval("ma_kh") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                            aria-hidden="true">

                            <!-- Change class .modal-sm to change the size of the modal -->
                            <div class="modal-dialog modal-md" role="document">


                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title w-100" id="myModalLabel">Thông tin khách hàng</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <b><i class="far fa-id-card"></i> Mã khách hàng: </b>
                                            <%# Eval("ma_kh") %>
                                        </p>
                                        <p>
                                            <b><i class="fas fa-child"></i> Họ tên: </b>
                                            <%# Eval("ho_ten") %>
                                        </p>
                                        <p>
                                            <b><i class="far fa-envelope"></i> Email: </b>
                                            <%# Eval("email") %>
                                        </p>
                                        <p>
                                            <b><i class="fas fa-mobile-alt"></i> Số điện thoại: </b>
                                            <%# Eval("sdt") %>
                                        </p>
                                        <p>
                                            <b><i class="fas fa-globe-asia"></i> Địa chỉ: </b>
                                            <%# Eval("dia_chi") %>
                                        </p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Đóng</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Central Modal Small -->
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
