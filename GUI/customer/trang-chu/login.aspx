<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GUI.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css" rel="stylesheet"/>
    <link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
  rel="stylesheet"
/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link  rel="stylesheet" href ="../css/main.css" />
    <link  rel="stylesheet" href ="../css/util.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap');
       body{
            background-image: url(https://cdn.vox-cdn.com/uploads/chorus_asset/file/22661965/img19.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            overflow: hidden; 
        }
        .card{
            background: rgba(247, 241, 241, 0.6);
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 60px );
            -webkit-backdrop-filter: blur();
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 550px;
            height: 650px;
            margin: auto;
            margin-top: 5rem;
        }
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
          margin-left: 3rem;
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
        .button{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 3rem;
        }
        .btn-login{
            width: 120px;
            height: 50px;
            border-radius: 15px;
            background: #2ed573;
            border: none;
            font-weight: 700;
            color: white;
        }
        .btn-login:hover{
            background: #1e90ff;
            color: white;
        }
.dnfs{
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  outline: none;
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
.dnfs:focus{
     background: #fff;
     border-bottom: 2px solid #5fbae9;
}
.first{
    width: 100%;
    margin-left: 2.5rem;
}
h1{
    text-align: center;
    margin-bottom: 2rem;
    margin-top: 1rem;
    font-size: 46px;
    text-transform: uppercase;
    font-weight: 700;
    font-family: Playfair Display;
    background-color: #51f794;
    background-image: linear-gradient( 135deg, #72EDF2 10%, #5151E5 100%);

   -webkit-background-clip: text;
   -webkit-text-fill-color: transparent;
}
.btn-danger{
    width: 50px;
    height: 50px;
    margin: auto;
    font-size: 20px;
    border-radius: 50%;

}
.dnfs:focus{
    border-bottom: 2px solid blue !important;
    border-radius: 2px;
}
    </style>
</head>
<body>
<form id="form1" runat="server"> 
    <div class="card">
        <h1>Đăng Nhập</h1>
		<div class="fadeIn first">
                  <i class='bx bxs-lock-open'></i>  
                    <label for="Username" class="form-label">Tên đăng nhập</label>
                      <asp:TextBox ID="txt_tdn" name="user" placeholder="" CssClass="dnfs" runat="server" required=""></asp:TextBox><br />
                    <label for="password" class="form-label">Mật khẩu</label><br />
                      <asp:TextBox ID="txt_mk" name="pass" runat="server" type="password" CssClass="dnfs" required="required"></asp:TextBox>                
             </div>
        <span id="login-failed" class="animated shake text-center" style="color: white; font-size: 18px; background: red; width: 70%; margin: auto;">*Sai thông tin đăng nhập</span>  	
             <div class="button">
                  <asp:Button ID="btn_login" type="submit" runat="server" CssClass="btn_login" Text="Đăng Nhập" CausesValidation="false" OnClick="btn_login_Click1"/>
             </div>
        <div class="text-center">
    <p style="font-size: 18px; color: blue;">Đăng nhập với:</p>
        <asp:LinkButton ID="btn_gg" runat="server" class="btn btn-danger" OnClick="btn_gg_Click1"><i class="fab fa-google-plus-g pr-1"></i></asp:LinkButton>
        <%--<asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" Width="35px" OnClick="LinkButton1_Click1"><i class="fab fa-facebook"></i></asp:LinkButton>--%>
        <p style="font-size: 18px; color: red;">Đăng nhập tài khoản</p><a class="underlineHover" style="color: blue;" href="admin/Default.aspx">ADMIN</a>
    </div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
        </div>		
    </form>
    <script>

    </script> 
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"
></script>
    <script src="cutomer.js"></script>
</body>
</html>
