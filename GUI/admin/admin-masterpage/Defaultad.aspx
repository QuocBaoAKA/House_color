<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Defaultad.aspx.cs" Inherits="GUI.admin.admin_masterpage.Defaultad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Trang Chủ AD</title>
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
            width: 280px;
            height: 150px;
            /*background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);*/
            background: #fff;
            margin-right: 2rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 15px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            padding: 30px;
            overflow: hidden;
            transition: color 0.5s ease 0s;
            z-index: 1;
            position: relative;
            flex-direction: column;

              margin-bottom: 2rem;

        }
        .flex_cont i{
            font-size: 40px;
            width: 60px;
            height: 60px;
            background: #4361ee;
            display: flex;
           justify-content:center;
           align-items: center;
           color: #fff;
           border-radius: 18px;

        }
        .flex_cont:before{
            content: "";
            width:  250px;
            padding-top: 100%;
            border-radius: 50%;
            background-image: linear-gradient(
                to top right,
                #4148f7,
                #2b7bff
                );
            position: absolute;
            left: -50%;
            top: 0;
            transform: scale(0);
            transition: transform .8s ease 0s;
           

        }
        .flex_cont:hover:before{
            transform: scale(3);
             color: #fff;
        }
        .flex_cont i:hover:before{
            z-index: 999;
        }
       .flex_cont a{
           font-size: 25px;
           color: #000;
           z-index: 1;
           font-family: sRoboto Condensed;
           font-weight: 600;
        
       }
       .img-admin{
           display: flex;
           justify-content:center;
           align-items: center;
       }
        .img-admin img{
            width: 80%;
            height: 450px;
            border-radius: 20px;
            margin-top: 1rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="img-admin">
        <img src="/hinh/2.png" />
    </div>
    <div class="flex_content">
        <div class="flex_cont">
            <i class='bx bxs-store-alt'></i>
            <a href="../quan-ly-sp/">Sản Phẩm</a>
        </div>
        <div class="flex_cont">
            <i class='bx bxs-color-fill' style="background: #0ead69 ;" ></i>
            <a href="../quan-ly-hang/">Màu Sắc</a>
        </div>
        <div class="flex_cont">
            <i class='bx bxs-coin-stack' style="background: #ffea00;"></i>
            <a href="../quan-ly-loai-sp/">Loại Sản Phẩm</a>
        </div>
        <div class="flex_cont">
            <i class='bx bxs-face' style="background: #eed7c5;" ></i>
            <a href="../quan-ly-khach-hang/">Khách Hàng</a>
        </div>
    </div>
</asp:Content>
