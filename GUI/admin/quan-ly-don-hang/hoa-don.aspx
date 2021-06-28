<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hoa-don.aspx.cs" Inherits="GUI.admin.quan_ly_don_hang.hoa_don" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <link rel="stylesheet" href="../../MDB/css/bootstrap.min.css" />
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="../../MDB/css/mdb.min.css" />
    <!-- MDBootstrap Datatables  -->
    <link href="../../MDB/css/datatables.min.css" rel="stylesheet" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet" />
    <style>
        /*@media print{@page {size: landscape}}*/
        @media print {
            .no-print, .no-print * 
            {
                display: none !important;
            }
        }

        b {
            line-height: 2;
            font-size: 13pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5 mb-5">

            <div class="row">
                <div class="col logo-sn">
                    <div class="text-center">
                      
                        <img src="../../public/images/product/logo.png" class="img-fluid" />
                    </div>
                </div>
                
            </div>
            <hr />
            <div class="text-center mt-3 mb-4">
                <h1 class="font-weight-bold">HÓA ĐƠN</h1>
            </div>
            <table class="table table-bordered">
                <thead class="text-white" style="background-color: #595A60;">
                    <tr>
                        <th style="font-size: 13pt; width: 30%">Đơn hàng</th>
                        <th style="font-size: 13pt;">Thông tin người đặt hàng</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <b>Mã đơn hàng: </b>
                            <asp:Label ID="lb_maDH" runat="server" Text="Label"></asp:Label>
                            <br />
                            <b>Ngày đặt hàng: </b>
                            <asp:Label ID="lb_ngayDatHang" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <b>Họ tên: </b>
                            <asp:Label ID="lb_hoTenNguoiNhan" runat="server" Text="Label"></asp:Label>
                            <br />
                            <b>Địa chỉ: </b>
                            <asp:Label ID="lb_diaChiNhan" runat="server" Text="Label"></asp:Label>
                            <br />
                            <b>Số điện thoại: </b>
                            <asp:Label ID="lb_sdtNguoiNhan" runat="server" Text="Label"></asp:Label>
                            <br />
                            <b>Email: </b>
                            <asp:Label ID="lb_emailNguoiNhan" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>

            <asp:Repeater ID="rpt_sanPham" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60;">
                                <th></th>
                                <th>Tên sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Giá </th>
                                <th>Thành tiền </th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("sp.ten_sp") %></td>
                        <td><%# Eval("ctgd.so_luong_mua") %></td>
                        <td><%# Eval("gia") %></td>
                        <td><%# Eval("thanhTien") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td colspan="4" class="text-right">
                            <b style="font-size: 16pt;">Tổng cộng:</b>
                        </td>
                        <td>
                           <b style="font-size: 16pt;"><%= Session["tongCong"] %> vnđ</b> 
                        </td>
                    </tr>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </form>

    <!-- jQuery -->
    <script type="text/javascript" src="../../MDB/js/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../../MDB/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../../MDB/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../../MDB/js/mdb.min.js"></script>
    <!-- MDBootstrap Datatables  -->
    <script type="text/javascript" src="../../MDB/js/datatables.min.js"></script>
    <!-- SummerNote -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
    <!--SelectPicker-->
    <%--<script type="text/javascript" src="../../selectpicker/selectpicker.js"></script>--%>
    <!--Custom scripts-->
    <script type="text/javascript" src="../../public/js/admin.js"></script>
</body>
</html>
