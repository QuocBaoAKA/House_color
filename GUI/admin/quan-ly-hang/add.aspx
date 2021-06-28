<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="GUI.admin.quan_ly_hang.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thêm hãng sản phẩm</title>
    <style>
        .card{
            width:  80%;
            margin: auto;
        }
        .txt_them{
            text-align: center;
            font-size: 40px;
            line-height: 36px;
            font-weight: 700;
            margin-top: 1rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="txt_them">Thêm mã màu</h5>
    <div class="card">
        <div class="card-body">
            <div class="md-form"> 
                <label for="txt_tenSP">Mã màu</label>
                <asp:TextBox ID="txt_maHang" runat="server" class="form-control" required></asp:TextBox>
            </div>

            <div class="md-form">
                <label for="txt_tenSP">Tên màu</label>
                <asp:TextBox ID="txt_tenHang" runat="server" class="form-control" required></asp:TextBox>
            </div>

             <div class="form-group text-right">
                <a href="../quan-ly-hang/" class="btn btn-light btn-md">Hủy</a>
                <button type="reset" class="btn btn-danger btn-md">Nhập lại</button>
                <asp:Button ID="btn_them" runat="server" Text="Thêm" CssClass="btn btn-success btn-md" OnClick="btn_them_Click" />
            </div>
        </div>
    </div>

    
</asp:Content>
