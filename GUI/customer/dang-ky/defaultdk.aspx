<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="defaultdk.aspx.cs" Inherits="GUI.customer.dang_ky.defaultdk" %>
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
            top: 0;
            background: transparent;
            right: 0;
        }

            .btn-toggle-pass.active {
                color: #4285F4;
            }
        /*dang ky new*/
        .signup {
          width: 600px;
          max-width: 50rem;
          height: 720px;
          background-color: white;
          border-radius: 10px;
          padding: 3rem 3rem;
          box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
          margin: auto;
          margin-top: 1rem;
          margin-bottom: 1rem;
        }
        .signup__heading {
          font-size: 30px;
          text-align: center;
          font-weight: bold;
          margin-bottom: 2rem;
          color: #26de81;
        }
        .signup__already {
          text-align: center;
          font-size: 1.2rem;
          margin-bottom: 3.5rem;
          margin-top: -1rem;
        }
        .signup__link {
          color: red;
          font-size: inherit;
          text-decoration: none;
        }
        .signup__link--underline {
          text-decoration: underline;
        }
        .form__group {
          margin-bottom: 1.5rem;
        }
        .form__group--2 {
          display: flex;
          justify-content: space-between;
        }
        .form__input {
          font-family: "Poppins", sans-serif;
          color: #4285F4;
          padding: 1.5rem;
          border-radius: 1rem;
          outline: none;
          font-size: 18px;
          font-weight: 500;
          border: 1px solid #eee;
          background-color: #eee;
          transition: 0.25s linear;
          width: 100%;
          height: 50px;
        }
        .form__input:focus {
          border-color: #eee;
          background-color: white;
        }
        .form__group--2 > .form__input {
          width: calc(50% - 2.5px);
        }
        .form__group--2 > .form__input:last-child {
          border-top-left-radius: 0;
          border-bottom-left-radius: 0;
        }
        .form__group--2 > .form__input:first-child {
          border-top-right-radius: 0;
          border-bottom-right-radius: 0;
        }
        .form__input::-webkit-input-placeholder {
          color: #000000;
          font-style: italic;
          font-size: 16px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup_one">
      <h2 class="signup__heading">Đăng Ký Tài Khoản</h2>
      <p class="signup__already">
        Bạn đã có tài khoản ?
        <a href="../dang-nhap/" class="signup__link signup__link--underline">Đăng Nhập</a>
      </p>
        <div class="form_dk">
            <asp:TextBox ID="TextBox1" runat="server" placholder="Tên đăng nhập" required="required"></asp:TextBox>
        </div>
        <div class="form_dk">
            <asp:TextBox ID="TextBox2" type="password" runat="server" placholder="Mật khẩu" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có chữ và số"></asp:TextBox>
            <asp:TextBox ID="TextBox3" type="password" runat="server" placholder="Nhập lại mật khẩu" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có chữ và số"></asp:TextBox>
        </div>
        <div class="form_dk">
            <asp:TextBox ID="TextBox4" runat="server" placholder="Họ tên" required="required"></asp:TextBox>
        </div>
        <div class="form_dk">
            <asp:TextBox ID="TextBox5" type="email" runat="server" placholder="Email" required="required"></asp:TextBox>
        </div>
        <div class="form_dk">
            <asp:TextBox ID="TextBox6" runat="server" placholder="Số điện thoại" required="required" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733"></asp:TextBox>
        </div>
        <div class="form_dk">
            <asp:TextBox ID="TextBox7" runat="server" placholder="Địa chỉ" required="required"></asp:TextBox>
        </div>
        <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>
         <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />   

</asp:Content>
