<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Defaultad.aspx.cs" Inherits="GUI.admin.admin_masterpage.Defaultad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .h1_a{
            font-size: 120px;
            font-weight: 700;
            text-align: center;
             background: -webkit-linear-gradient(160deg, #4148f7 0%, #86def5 100%);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
        }
        .h1_b{
            font-size: 120px;
            font-weight: 700;
            text-align: center;
             background: -webkit-linear-gradient(160deg, #4148f7 0%, #86def5 100%);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
        }
        .flex_content{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 5rem;
        }
        .flex_cont{
            width: 250px;
            height: 150px;
            background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
            margin-right: 2rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 20px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
       .flex_cont a{
           font-size: 25px;
           color: #fff;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="h1_a">House Color</h1>
    <h1 class="h1_b">ADMIN</h1>
    <div class="flex_content">
        <div class="flex_cont">
            <a href="../quan-ly-sp/">Sản Phẩm</a>
        </div>
        <div class="flex_cont">
            <a href="#">Màu Sắc</a>
        </div>
        <div class="flex_cont">
            <a href="#">Loại Sản Phẩm</a>
        </div>
        <div class="flex_cont">
            <a href="#">Khách Hàng</a>
        </div>
    </div>
</asp:Content>
