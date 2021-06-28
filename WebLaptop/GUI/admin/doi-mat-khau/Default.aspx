<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.doi_mat_khau.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đổi mật khẩu</title>
    <style>
        #login-failed 
        {
            display: none;
            color: red;
        }
         #login-failed1 
        {
            display: none;
            color: red;
        }

        .btn-toggle-pass 
        {
            border: none;
            position: absolute;
            top: 11px;
            background: transparent;
            right: 0;
        }
        
       .btn-toggle-pass.active 
       {
            color: #4285F4;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 800px">
        <h2 class="text-center"><strong>Thay đổi mật khẩu</strong></h2>
        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_mkCu" runat="server" type="password" class="form-control" required="required"></asp:TextBox>
            <label for="txt_mkCu">Mật khẩu cũ</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_mkMoi" runat="server" type="password" class="form-control" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu có từ 8 ký tự trở lên và phải có chữ cái và chữ số"></asp:TextBox>
            <label for="txt_mkMoi">Mật khẩu mới</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_nhapLaiMkMoi" runat="server" type="password" class="form-control" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu có từ 8 ký tự trở lên và phải có chữ cái và chữ số"></asp:TextBox>
            <label for="txt_nhapLaiMkMoi">Nhập lại mật khẩu mới</label>
        </div>

        <span id="login-failed1" class="animated shake text-center">*Mật khẩu cũ chưa chính xác</span>
        <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>
        <div class="text-right">
            <a href="<%= Session["urlBack"] %>" class="btn btn-light btn-md mt-3 mb-3" style="width: 130px;">Hủy</a>
            <button type="reset" class="btn btn-danger btn-md" style="width: 130px;">Nhập lại</button>
            <asp:Button ID="btn_luu" OnClick="btn_luu_Click" runat="server" class="btn btn-success btn-md" Text="Lưu" Style="width: 130px;" />
        </div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>
    <script>
        document.getElementById("breadcrumb").innerHTML = '<a href="../doi-mat-khau/">Đổi mật khẩu</a>';
    </script>
</asp:Content>
