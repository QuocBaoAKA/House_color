<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="GUI.admin.quan_ly_hang.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sửa hãng sản phẩm</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="my-4 dark-grey-text font-weight-bold">Sửa</h5>
    <div class="card">
        <div class="card-body">
            <div class="md-form">
                <label for="txt_tenSP">Mã hãng sản phẩm</label>
                <asp:TextBox ID="txt_maHang" runat="server" class="form-control" disabled="disabled"></asp:TextBox>
            </div>
            
            <div class="md-form">
                <label for="txt_tenSP">Tên hãng sản phẩm</label>
                <asp:TextBox ID="txt_tenHang" runat="server" class="form-control" required></asp:TextBox>
            </div>

             <div class="form-group text-right">
                <a href="../quan-ly-hang/" class="btn btn-light btn-md">Hủy</a>
                <button type="reset" class="btn btn-danger btn-md">Nhập lại</button>
                <asp:Button ID="btn_sua" runat="server" Text="Sửa" CssClass="btn btn-success btn-md" OnClick="btn_sua_Click" />
            </div>
        </div>
    </div>

    
</asp:Content>
