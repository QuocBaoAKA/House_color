<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.quan_ly_loai_sp.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Quản lý loại sản phẩm</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <div class="text-right mb-3">
                <a href="./add.aspx" class="btn btn-primary"><i class="fas fa-plus"></i> Thêm </a>
            </div>
            <asp:Repeater ID="rpt_bangSP" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered table-hover table-responsive-sm datatable">
                        <thead>
                            <tr class="text-white" style="background-color: #595A60;">
                                <th>#</th>
                                <th>Mã loại sản phẩm</th>
                                <th>Tên loại sản phẩm</th>
                                <th style="width: 20%">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("ma_loai") %></td>
                        <td><%# Eval("ten_loai") %></td>
                        <td>                           
                            <a href="./delete.aspx?maloaisp=<%# Eval("ma_loai") %>" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc xóa không!!!')"><i class="far fa-trash-alt"></i></a>
                            <a href="./edit.aspx?maloaisp=<%# Eval("ma_loai") %>" class="btn btn-success btn-sm"><i class="far fa-edit"></i></a>
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
