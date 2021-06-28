<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.quan_ly_khach_hang.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Quản lý khách hàng</title>
    <style>
        .card{
            width: 80%;
            margin: auto;
            border-radius: 10px;
            margin-top: 1rem;
        }
    </style>
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
                        <td><%# Eval("ID_TK") %></td>
                        <td><%# Eval("HoTen") %></td>
                        <td><%# Eval("Email") %></td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal<%# Eval("ID_TK") %>">
                                <i class="fas fa-eye"></i>
                            </button>
                        </td>

                        <!-- Central Modal Small -->
                        <div class="modal fade" id="modal<%# Eval("ID_TK") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
                                            <%# Eval("ID_TK") %>
                                        </p>
                                        <p>
                                            <b><i class="fas fa-child"></i> Họ tên: </b>
                                            <%# Eval("HoTen") %>
                                        </p>
                                        <p>
                                            <b><i class="far fa-envelope"></i> Email: </b>
                                            <%# Eval("Email") %>
                                        </p>
                                        <p>
                                            <b><i class="fas fa-mobile-alt"></i> Số điện thoại: </b>
                                            <%# Eval("SDT") %>
                                        </p>
                                        <p>
                                            <b><i class="fas fa-globe-asia"></i> Địa chỉ: </b>
                                            <%# Eval("DiaChi") %>
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
