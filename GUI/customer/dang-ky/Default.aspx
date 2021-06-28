<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.dang_ky.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Đăng ký</title>
    <style>
        #login-failed {
            display: none;
            color: red;
        }
        
        .btn-toggle-pass {
            border: none;
            position: absolute;
            top: 11px;
            background: transparent;
            right: 0;
        }

            .btn-toggle-pass.active {
                color: #4285F4;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 800px">
        <h2 class="text-center"><strong>Đăng ký tài khoản</strong></h2>

        <div class="md-form">
            <i class="fas fa-user prefix"></i>
            <asp:TextBox ID="txt_tdn" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_tdn">Tên đăng nhập</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_taoMK" type="password" runat="server" class="form-control" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có 1 chữ cái và 1 chữ số"></asp:TextBox>
            <label for="txt_taoMK">Mật khẩu</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_nhapLaiMk" type="password" runat="server" class="form-control" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có 1 chữ cái và 1 chữ số"></asp:TextBox>
            <label for="txt_nhapLaiMk">Nhập lại mật khẩu</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-child prefix"></i>
            <asp:TextBox ID="txt_hoTen" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_hoTen">Họ tên</label>
        </div>

        <div class="md-form mt-0">
            <i class="far fa-envelope prefix"></i>
            <asp:TextBox ID="txt_email" type="email" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_email">Địa chỉ email</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-mobile-alt prefix"></i>
            <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_sdt">Số điện thoại</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-globe-asia prefix"></i>
            <asp:TextBox ID="txt_diaChi" runat="server" class="form-control" required="required" data-toggle="tooltip" data-placement="left" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
            <label for="txt_diaChi">Địa chỉ liên lạc</label>
        </div>

        <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>

        <div class="text-center">
            <asp:Button ID="btn_luu" runat="server" class="btn btn-success btn-md" Text="Đăng ký" Style="width: 130px;" OnClick="btn_luu_Click" />
        </div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>
</asp:Content>
