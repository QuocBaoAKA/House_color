<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="GUI.admin.quan_ly_loai_sp.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sửa loại sản phẩm</title>
    <style>
        .card{
            width: 80%;
            margin: auto;
            margin-top: 1rem;
        }
        .txt_sua{
            text-align: center;
            font-size: 40px;
            font-weight: 700;
            margin-top: 1rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="txt_sua">Sửa Loại Hàng</h5>
    <div class="card">
        <div class="card-body">
            <div class="md-form">
                <label for="txt_tenSP">Mã loại sản phẩm</label>
                <asp:TextBox ID="txt_maLoai" runat="server" class="form-control" disabled="disabled"></asp:TextBox>
            </div>
            
            <div class="md-form">
                <label for="txt_tenSP">Tên loại sản phẩm</label>
                <asp:TextBox ID="txt_tenLoai" runat="server" class="form-control" required></asp:TextBox>
            </div>

             <div class="form-group text-right">
                <a href="../quan-ly-loai-sp/" class="btn btn-light btn-md">Hủy</a>
                <button type="reset" class="btn btn-danger btn-md">Nhập lại</button>
                <asp:Button ID="btn_sua" runat="server" Text="Sửa" CssClass="btn btn-success btn-md" OnClick="btn_sua_Click" />
            </div>
        </div>
    </div>

   
</asp:Content>
