<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="GUI.customer.dang_ky.dangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="../../MDB/css/mdb.min.css" />
     <style>
             
        .signup {
          width: 100%;
          max-width: 30rem;
          background-color: white;
          border-radius: 10px;
          padding: 5.5rem 3.5rem;
          margin: auto;
          height: 40rem;
          box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
          z-index: 1;
        }

        .signup__heading {
          font-size: 30px;
          text-align: center;
          font-weight: bold;
          margin-bottom: 2rem;
          color: #26de81;
          margin-top: -1rem;
        }
        .signup__already {
          text-align: center;
          font-size: 1.2rem;
          margin-bottom: 3.5rem;
          margin-top: -1rem;
        }
        .signup__link {
          color: #4285F4;
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
          padding: 15px;
          border-radius: 1rem;
          outline: none;
          font-size: 18px;
          font-weight: 500;
          border: 1px solid #eee;
          background-color: #eee;
          transition: 0.25s linear;
          width: 95%;
          height: 25px;
        }
        .form__input:focus {
          border-color: #26de81;
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
        .form__group{
            display: flex;  
        }
        .form__submit{
            margin: auto;
            width: 100%;
            padding: 1rem;
            cursor: pointer;
            font-size: 1.4em;
            color: #fff; 
            background-color: #4797ff;
            border: 0;
            border-radius: 10px;
            margin-top: 1rem;
            moz-transition: all .4s ease-in-out;
            -o-transition: all .4s ease-in-out;
             -webkit-transition: all .4s ease-in-out;
             transition: all .4s ease-in-out;
                
        }
        .form__submit:hover{
            background-position: 100% 0;
            moz-transition: all .4s ease-in-out;
            -o-transition: all .4s ease-in-out;
            -webkit-transition: all .4s ease-in-out;
            transition: all .4s ease-in-out;
        }
        #login-failed {
            display: none;
            color: red;
        }
        .btn_dk{
            width: 200px;
            height: 50px;
            margin-left: 3rem;
        }
        .signup a{
            font-size: 18px;
            color: #4285F4;
        }
        .custom-shape-divider-top-1625580355 {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            overflow: hidden;
            line-height: 0;
            transform: rotate(180deg);
            z-index: -1;
        }

        .custom-shape-divider-top-1625580355 svg {
            position: relative;
            display: block;
            width: calc(190% + 1.3px);
            height: 340px;
            fill: #26de81;
        }

        .custom-shape-divider-top-1625580355 .shape-fill {
            fill: #4285F4;
        }
        /*top-gradient*/
       

    </style>
</head>
<body>
    <form id="form1" runat="server">
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
         <div class="custom-shape-divider-top-1625580355">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
            </svg>
        </div>
        
     <div class="signup">
      <h2 class="signup__heading">Đăng Ký Tài Khoản</h2>
      <p class="signup__already">
        Bạn đã có tài khoản ?
        <a href="../dang-nhap/" class="signup__link signup__link--underline">Đăng Nhập</a>
      </p>
        <div class="form__group">
            <asp:TextBox ID="txt_tdn" runat="server" class="form__input" placeholder="Tên đăng nhập" required="required"></asp:TextBox>
        </div>
        <div class="form__group form__group--2">
          <asp:TextBox ID="txt_taoMK" type="password" runat="server" class="form__input" placeholder="Nhập mật khẩu" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có 1 chữ cái và 1 chữ số"></asp:TextBox>&nbsp;&nbsp;
          <asp:TextBox ID="txt_nhapLaiMk" type="password" runat="server" class="form__input" placeholder="Nhập mật khẩu" required="required" pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" title="Mật khẩu phải có ít nhất 8 ký tự trong đó phải có 1 chữ cái và 1 chữ số"></asp:TextBox>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_email" type="email" class="form__input" runat="server" placeholder="Nhập email" required="required"></asp:TextBox>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_hoTen" runat="server" class="form__input" placeholder="Nhập họ tên" required="required"></asp:TextBox>
        </div>
        <div class="form__group">
            <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733" placeholder="Nhập số điện thoại" runat="server" class="form__input" required="required"></asp:TextBox>
        </div>
        <div class="form__group">
           <asp:TextBox ID="txt_diaChi" runat="server" class="form__input" required="required" data-toggle="tooltip" data-placement="left" placeholder="Nhập địa chỉ" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
        </div>
        <span id="login-failed" class="animated shake text-center">*Nhập lại mật khẩu không khớp với mật khẩu</span>
        <div class="form__group">
            <asp:Button ID="Button1" CssClass="form__submit" runat="server" Text="Đăng Ký" OnClick="Button1_Click" />
        </div>
             <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
         <i class="fas fa-angle-double-left"> <a href="../trang-chu/">Quay Về</a></i>
         
        </div>
       
    </form>

    <script type="text/javascript" src="../../MDB/js/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="../../MDB/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="../../MDB/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="../../MDB/js/mdb.min.js"></script>
</body>
</html>
