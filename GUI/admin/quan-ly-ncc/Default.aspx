<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.quan_ly_ncc.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Nhà cung cấp</title>
    <style>
        .card{
            width: 90%;
            margin: auto;
            margin-top: 1rem;
            background: rgba( 255, 255, 255, 0.50 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 14.0px );
            -webkit-backdrop-filter: blur( 14.0px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
        }
    </style>
    <script>
        var object = { status: false, ele: null };
        function xoalh(ev) {
            if (object.status) {
                return true;
            }

            swal({
                title: "Are you sure?",
                text: "Your will not be able to recover this imaginary file!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                closeOnConfirm: true
            },
        function () {
            object.status = true;
            object.ele = ev;

            object.ele.click();

            });
            return false;
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <div class="text-right mb-3">
                <a href="./themncc.aspx" class="btn btn-primary"><i class="fas fa-plus"></i>Thêm </a>
            </div>
            <asp:repeater ID="rpt_ncc" runat="server">
                 <HeaderTemplate>
                    <table class="table table-bordered table-hover table-responsive-sm datatable">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60;">
                                <th>#</th>
                                <th>Mã nhà cung cấp</th>
                                <th>Tên nhà cung cấp</th>
                                <th>Email</th>
                                <th>Địa chỉ</th>
                                
                                <th>Số điện thoại</th>
                                <th style="width: 20%">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("MaNCC") %></td>
                        <td><%# Eval("TenNCC") %></td>
                        <td><%# Eval("DiaChi") %></td>
                        <td><%# Eval("Email") %></td>               
                        <td><%# Eval("SDT") %></td>
                        <td>                           
                            <a href="./xoancc.aspx?mancc=<%# Eval("MaNCC") %>" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc xóa không!')"><i class="far fa-trash-alt"></i></a>
                            <a href="./suancc.aspx?mancc=<%# Eval("MaNCC") %>" class="btn btn-success btn-sm"><i class="far fa-edit"></i></a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:repeater>
        </div>
    </div>
</asp:Content>
