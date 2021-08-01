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
          padding: 10px;
          border-radius: 5px;
          outline: none;
          font-size: 18px;
          font-weight: 500;
          border: 1px solid #aaaaaa;
          background-color: #fff;
          transition: 0.25s linear;
          width: 100%;
          height: 40px;
          margin: auto;
          margin-bottom: 2rem;

        }
        .input_dk:focus{
            border: 1px solid #0026ff;
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
        .tab{
            width: 80%;
            margin: auto;
        }
        .custom-shape-divider-top-1625579613 .shape-fill {
            fill: #4285F4;
        }
    /*vs2*/
    .card_dangki{
        width: 80%;
        height: 650px;
        display: flex;
        margin: auto;
        margin-top: 3rem;
        margin-bottom: 9rem;
        border-radius: 15px;
        position: relative;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        background-image: radial-gradient( circle farthest-corner at 10% 20%,  rgba(37,145,251,0.98) 0.1%, rgba(0,7,128,1) 99.8% );
    }
    .card_form_dk{
        width: 450px;
        height: 820px;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        margin-left: 2rem;
        margin-top: -2rem;
        margin-bottom: 3rem;
        z-index: 1;
        border-radius: 25px;
      background: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(30px);
      border: 2px solid rgba(255, 255, 255, 0.1);
      box-shadow: 0 0 80px rgba(0, 0, 0, 0.2);
      overflow: hidden;
        position: relative;
    }
    .btn_dangki{
        width: 180px;
        height: 50px;
        border-radius: 25px;
        margin-top: 1rem;
        font-weight: 700;
        font-size: 14px;
        letter-spacing: 1.15px;
	    background-color: #4B70E2;
	    color: #f9f9f9;
	    box-shadow:
		8px 8px 16px #ecf0f3,
		-8px -8px 16px #f9f9f9;
	    border: none;
        outline: none;
        margin-left: 8rem;
        margin-right: 8rem;
        }
    #login-failed {
            display: none;
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% 
            if (Session["success"] != null)
            {
        %>
        <script>window.onload = function () { toastr.success('<% Response.Write(Session["success"]); %>') };</script>
        <%
                Session["success"] = null;
            }
        %>

        <% 
            if (Session["error"] != null)
            {
        %>
        <script>window.onload = function () { toastr.error('<% Response.Write(Session["error"]); %>') };</script>
        <%
                Session["error"] = null;
            }
        %>
    <div class="card_dangki">
        <div class="img_dk">
            <img src="/hinh/undraw_Mobile_login_re_9ntv.svg" />
        </div>
        <div class="card_form_dk">
            <h2 style="text-align: center; color: #0026ff; font-size: 35px; font-weight: 700;">Đăng Ký</h2>
            <div class="tab">
            <h6>Tên đăng nhập</h6>
            <asp:TextBox ID="txt_tdn" CssClass="input_dk" runat="server" required="required"></asp:TextBox>
           </div>
            <div class="tab">
                <h6>Mật khẩu</h6>
            <asp:TextBox ID="txt_taoMK1" CssClass="input_dk" runat="server" required="required" TextMode="Password"></asp:TextBox>
            </div>
            <div class="tab">
                <h6>Nhập lại mật khẩu</h6>
                <asp:TextBox ID="txt_nhapLaiMk1" type="password" CssClass="input_dk"  required="required" runat="server"></asp:TextBox>
            </div>
            <div class="tab"> 
                <h6>Họ tên</h6>
                <asp:TextBox ID="txt_hoTen" CssClass="input_dk" runat="server" required="required"></asp:TextBox>
            </div>
            <div class="tab">
                <h6>Email</h6>
                <asp:TextBox ID="txt_email" type="email" CssClass="input_dk" runat="server" required="required"></asp:TextBox>
           </div>
            <div class="tab">
                 <h6>Số điện thoại</h6>
                 <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733" CssClass="input_dk" runat="server"></asp:TextBox>
            </div>
            <div class="tab">
                <h6>Địa chỉ</h6>
                <asp:TextBox ID="txt_diaChi" CssClass="input_dk" runat="server" required="required" data-toggle="tooltip" data-placement="left" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
            </div>
                <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>
            <asp:Button ID="Button2" runat="server" Text="Đăng Ký" CssClass="btn_dangki" OnClick="Button2_Click1"/>
            <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>
