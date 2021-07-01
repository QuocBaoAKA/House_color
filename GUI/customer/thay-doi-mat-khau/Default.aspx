<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.thay_doi_mat_khau.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Thay đổi mật khẩu</title>
    <style>
        #login-failed {
            display: none;
            color: red;
        }
         #login-failed1 {
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
            .card_mk{
                width: 700px;
                height: 400px;
                margin: auto;
                box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
                border-radius: 20px;
                margin-top: 2rem;
            }
            .form-control{
                width: 80%;
                margin: auto;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card_mk">

        <%
            if (Session["tonTaiMK"] == null)
            {
        %>
        <h2 class="text-center"><strong>Tạo mật khẩu</strong></h2>
        <p class="text-danger"><i>Lưu ý: Bạn có thể sử dụng Gmail và mật khẩu này để đăng nhập vào trang web</i></p>
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

        <%
            }
            else
            {
        %>
        <h2 class="text-center"><strong>Thay đổi mật khẩu</strong></h2>
        <div class="md-form mt-0">
            <label for="txt_mkCu">Mật khẩu cũ</label>
            <asp:TextBox ID="txt_mkCu" runat="server" type="password" class="form-control" required="required"></asp:TextBox>
            
        </div>

        <div class="md-form mt-0">
           <label for="txt_mkMoi">Mật khẩu mới</label>
            <asp:TextBox ID="txt_mkMoi" runat="server" type="password" class="form-control" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có 1 chữ cái và 1 chữ số"></asp:TextBox>
            
        </div>

        <div class="md-form mt-0">
            <label for="txt_nhapLaiMkMoi">Nhập lại mật khẩu mới</label>
            <asp:TextBox ID="txt_nhapLaiMkMoi" runat="server" type="password" class="form-control" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có 1 chữ cái và 1 chữ số"></asp:TextBox>
            
        </div>
        <%
            }
        %>

        <span id="login-failed1" class="animated shake text-center">*Sai mật khẩu cũ</span>
        <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>
        <div class="text-center">
            <a href="<%= Session["urlBack"] %>" class="btn btn-light btn-md mt-3 mb-3" style="width: 130px;">Hủy</a>
            <button type="reset" class="btn btn-danger btn-md" style="width: 130px;">Nhập lại</button>
            <asp:Button ID="btn_luu" runat="server" OnClick="btn_luu_Click" class="btn btn-success btn-md" Text="Lưu" Style="width: 130px;" />
        </div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>
</asp:Content>
