<%@ Page Title="" Language="C#" EnableEventValidation = "true" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.dang_nhap.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Đăng nhập</title>
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
        .btn-login{
            margin-left: 2rem;
            height: 50px;
            border: none;
            border-radius: 15px;
            width: 120px;
            background: #54a0ff;
            color: #f1f2f6;
            font-weight: 700;
        }
         .btn-login:hover{
             background-color: #4cd137;
         }
    /*login*/
           .fadeInDown {
          -webkit-animation-name: fadeInDown;
          animation-name: fadeInDown;
          -webkit-animation-duration: 1s;
          animation-duration: 1s;
          -webkit-animation-fill-mode: both;
          animation-fill-mode: both;
        }

        @-webkit-keyframes fadeInDown {
          0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
          }
          100% {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
          }
        }

        @keyframes fadeInDown {
          0% {
            opacity: 0;
            -webkit-transform: translate3d(0, -100%, 0);
            transform: translate3d(0, -100%, 0);
          }
          100% {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
          }
        }

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

        .fadeIn {
          opacity:0;
          -webkit-animation:fadeIn ease-in 1;
          -moz-animation:fadeIn ease-in 1;
          animation:fadeIn ease-in 1;
          -webkit-animation-fill-mode:forwards;
          -moz-animation-fill-mode:forwards;
          animation-fill-mode:forwards;
          -webkit-animation-duration:1s;
          -moz-animation-duration:1s;
          animation-duration:1s;
        }
        .fadeIn.first {
          -webkit-animation-delay: 0.4s;
          -moz-animation-delay: 0.4s;
          animation-delay: 0.4s;
        }

        .fadeIn.second {
          -webkit-animation-delay: 0.6s;
          -moz-animation-delay: 0.6s;
          animation-delay: 0.6s;
        }

        .fadeIn.third {
          -webkit-animation-delay: 0.8s;
          -moz-animation-delay: 0.8s;
          animation-delay: 0.8s;
        }

        .fadeIn.fourth {
          -webkit-animation-delay: 1s;
          -moz-animation-delay: 1s;
          animation-delay: 1s;
        }

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #56baed;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}

h1{
    color:#60a0ff;
}

/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:30%;
}
.dnfs{
    background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;

}
.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}
/* TABS */

h2.inactive {
  color: #cccccc;
}

h2.active {
  color: #0d0d0d;
  border-bottom: 2px solid #5fbae9;
}
input[type=button], input[type=submit], input[type=reset]  {
  background-color: #3742fa ;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 16px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #48dbfb;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
    font-family: sans-serif;
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}
.btn-dk{
    width: 120px;
    height: 50px;
    border-radius: 15px;
    background: #2ed573;
    border: none;
    margin-left: 10px;
    font-weight: 700;
    color: white;
}
.btn-dk:hover{
    background: #1e90ff;
    color: white;
}
    .fadeIn #error_user,
    .fadeIn #error_pass{
        margin-top: 5px;
        width: 300px;
        font-size: 18px;
        color: #c62828;
        background: rgba(255,0,0,0.1);
        margin: auto;
        padding: 5px 8px;
        border-radius: 3px;
        display: none;
    }
    .bxs-lock-open{
        font-size: 100px;
        color: #279dfd;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <%--<div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 500px">
        <h2 class="text-center"><strong>Đăng nhập</strong></h2>

        <!-- Username -->
        <div class="md-form">
            <i class="fas fa-user prefix"></i>
            <asp:TextBox ID="txt_tdn" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_tdn">Tên đăng nhập / Gmail</label>
        </div>

        <!-- Password -->
        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_mk" type="password" runat="server" class="form-control mr-3" required="required"></asp:TextBox>
            <label for="txt_mk">Mật khẩu</label>
        </div>

        <span id="login-failed" class="animated shake text-center">*Sai thông tin đăng nhập</span>

        <!-- Sign in button -->
        <div class="text-center">
            <asp:Button ID="btn_login" runat="server" class="btn btn-outline-primary mt-3 mb-3" Text="Đăng nhập" Style="width: 300px;" OnClick="btn_login_Click" />
            <!-- Social login -->
            <p>hoặc</p>

            <asp:LinkButton ID="btn_gg" runat="server" class="btn btn-danger" Style="width: 300px;" OnClick="btn_gg_Click"><i class="fab fa-google-plus-g pr-1"></i> đăng nhập với Google</asp:LinkButton>

            <%--<asp:LinkButton ID="btn_fb" runat="server" class="btn btn-primary" Style="width: 200px;" OnClick="btn_fb_Click"><i class="fab fa-facebook-f"></i> Facebook</asp:LinkButton>--%>
        <%--</div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>--%>
    <div class="wrapper fadeInDown">
            <div id="formContent">
                <form class="login_form" method="post" name="form" onsubmit="return validated()"> 
                <div class="fadeIn first">
                  <i class='bx bxs-lock-open'></i>
                    <h1>Đăng Nhập</h1>
                    <label for="Username" class="form-label">Tên đăng nhập</label>
                      <asp:TextBox ID="txt_tdn" name="user" placeholder="" runat="server" required=""></asp:TextBox>
                        <div id="error_user">Vui lòng username!</div>
                    <label for="password" class="form-label">Mật khẩu</label>
                      <asp:TextBox ID="txt_mk" name="pass" runat="server" type="password" CssClass="dnfs" required="required"></asp:TextBox>
                       <span id="login-failed" class="animated shake text-center">*Sai thông tin đăng nhập</span>
                    <p>
                        <asp:Button ID="btn_login" type="submit" runat="server" CssClass="fadeIn  fourth" Text="Đăng Nhập" />
                    </p>
                   
                </div>

                </form> 
                <div id="formFooter">
                  <p>Bạn chưa có tài khoản</p><a class="underlineHover" href="dangki.aspx">Đăng kí</a>
              </div>
                <div id="formFooter1">
                    <asp:LinkButton ID="btn_gg" runat="server" class="btn btn-danger" Style="width: 300px;" OnClick="btn_gg_Click"><i class="fab fa-google-plus-g pr-1"></i> đăng nhập với Google</asp:LinkButton>
                  <p>Đăng nhập tài khoản</p><a class="underlineHover" href="loginad.aspx">ADMIN</a>
              </div>
            </div> 
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
          </div> 
</asp:Content>
