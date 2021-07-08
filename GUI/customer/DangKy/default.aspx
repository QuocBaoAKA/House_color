<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="GUI.customer.DangKy._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card_dk{
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
          z-index: 999;

        }
        .input_dk{
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
          height: 40px;
          margin-bottom: 2rem;
        }
        .input_dk1{
          font-family: "Poppins", sans-serif;
          color: #4285F4;
          padding: 1.5rem;
          border-top-left-radius: 1rem;
          border-bottom-left-radius: 1rem;
          outline: none;
          font-size: 18px;
          font-weight: 500;
          border: 1px solid #eee;
          background-color: #eee;
          transition: 0.25s linear;
          width: 100%;
          height: 40px;
          margin-bottom: 2rem;
        }
        .input_dk2{
          font-family: "Poppins", sans-serif;
          color: #4285F4;
          padding: 1.5rem;
          border-top-right-radius: 1rem;
          border-bottom-right-radius: 1rem;
          outline: none;
          font-size: 18px;
          font-weight: 500;
          border: 1px solid #eee;
          background-color: #eee;
          transition: 0.25s linear;
          width: 100%;
          height: 40px;
          margin-bottom: 2rem;
        }
        .custom-shape-divider-top-1625579613 {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            overflow: hidden;
            line-height: 0;
            transform: rotate(180deg);
            z-index: 0;
        }

.custom-shape-divider-top-1625579613 svg {
    position: relative;
    display: block;
    width: calc(135% + 1.3px);
    height: 500px;
}

.custom-shape-divider-top-1625579613 .shape-fill {
    fill: #4285F4;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="card_dk">
        <div class="heading_dk">
            <h2>Đăng Ký Tài Khoản</h2>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_tdn" CssClass="input_dk" placeholder="Tên đăng nhập" runat="server" required="required"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col">
                <asp:TextBox ID="txt_taoMK1" CssClass="input_dk1" runat="server" placeholder="Nhập mật khẩu" required="required"></asp:TextBox>
            </div>
            <div class="col">
                <asp:TextBox ID="txt_nhapLaiMk1" type="password" CssClass="input_dk2" placeholder="Nhập mật khẩu" required="required" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_hoTen" CssClass="input_dk" runat="server" placeholder="Họ tên" required="required"></asp:TextBox>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_email" type="email" CssClass="input_dk" runat="server" placeholder="Email" required="required"></asp:TextBox>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733" placeholder="Nhập số điện thoại" CssClass="input_dk" runat="server"></asp:TextBox>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_diaChi" CssClass="input_dk" runat="server" required="required" data-toggle="tooltip" data-placement="left" placeholder="Nhập địa chỉ" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
        </div>
        <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>
</asp:Content>
