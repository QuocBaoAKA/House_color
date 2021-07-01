<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="caidattk.aspx.cs" Inherits="GUI.customer.dang_nhap.caidattk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .account_setting{
            width: 80%;
            height: 100px;
            background-image: linear-gradient( 109.6deg,  rgba(62,161,219,1) 11.2%, rgba(93,52,236,1) 100.2% );
            margin: auto;
            margin-top: 1rem;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 15px;
            color: #fff;
        }
        .icon_account{
            width: 100px;
            height: 100px;
            background: #ccc;
            margin: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
            border-radius: 50%;
        }
        .icon_account > i{
            font-size: 40px;
            color: rgba(93,52,236,1);

        }
        .account_group{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .account{    
            width: 250px;
            height: 100px;
            background:#4096FF;
            margin: auto;
            margin-right: 10px;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
        .account a{
            font-size: 18px;
            color: #fff;
        }
        .account:hover{
            
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .account1{ 
            width: 250px;
            height: 100px;
            background:#FFEC71;
            margin: auto;
            border-radius: 20px;
             display: flex;
            justify-content: center;
            align-items: center;
            font-size: 18px;
            margin-right: 10px;
            color: blue;
        }
        .account1 a{
            font-size: 18px;
            color: black;
        }
        .account1:hover{
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .account2{    
            width: 250px;
            height: 100px;
            background: #E64635;
            margin: auto;
            border-radius: 20px;
             display: flex;
            justify-content: center;
            align-items: center;
            font-size: 18px;
            color: #fff;
        }
        .account2 a{
            font-size: 18px;
            color: #fff;
        }
        .account2:hover{
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="account_setting">
        <h2>Tài khoản của bạn!</h2>
    </div>
    <div class="icon_account">
        <i class="fas fa-user-alt"></i>
        
    </div>
    <p style="text-align: center; font-size: 18px;">Xin chào: <%= Session["taiKhoan"] %></p>
    <div class="account_group">
        <div class="account">
            <a href="../thong-tin-ca-nhan/">Thông tin của bạn</a>
        </div>
        <div class="account1">
            <a href="../thay-doi-mat-khau/">Đổi mật khẩu</a> 
        </div>
        <div class="account2">
            <a href="../dang-nhap/logout.aspx">Đăng xuất</a> 
        </div>
    </div>
</asp:Content>
