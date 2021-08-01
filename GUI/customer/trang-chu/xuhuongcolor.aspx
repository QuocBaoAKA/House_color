<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="xuhuongcolor.aspx.cs" Inherits="GUI.customer.trang_chu.xuhuongcolor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .color_xh{
            width: 100%;
            height: 300px;
            /*background: rgb(52,44,192);*/
            /*background: linear-gradient(90deg, rgba(52,44,192,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);*/
            position: relative;
            background-image: url(/hinh/flowing-dots-background-free-vector.jpg);
            background-size: cover;
            background-attachment: fixed;
        }
        .color_xh h1{
            color: #fff;
            display: flex;
            justify-content: center;
            padding: 100px;
            font-family: 'Playfair Display', serif;
        }
        .cl_xh{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }
        .cl_img{
            text-align: center;
            margin-top: 1rem;
            margin-bottom: 1rem;    
        }
        .cl_img img{
            width: 90%;
            margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="color_xh">
        <h1>Bộ Sưu Tập Xu Hướng Sắc Màu</h1>
    </section>
    <div class="cl_xh">
        <div class="cl_img">
            <img src="/hinh/BON-MAU(2).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-DO-CHERY(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-VANG-TRAI-CAM(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-XANH-(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-XANH-BAP-CAI.jpg" />
        </div>
        
        <div class="cl_img">
            <img src="/hinh/Bolivian-29B-3T(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/Bristol-Blue-75C-4D(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/Fire-Engine-Red(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-1B-1P(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-1B-2T(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-1C-2T(1).jpg" />
        </div>
        
        <div class="cl_img">
            <img src="/hinh/MAU-4B-4D(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-15B-2T(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-16B-1P(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-72B-4D(1).jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/MAU-XANH-LA-60C-3D.jpg" />
        </div>   
        <div class="cl_img">
            <img src="/hinh/NP-TIM-LILAC-1B-2T.jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/NP-Trang-Ngoc-Trai-PEARL-WHITE-WO33.jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/NP-VANG-SPEC-31B-4D-.jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/NP-XANH-BLUE-VASE-63A-1A.jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/NP-XANH-DA-TROI-NHAT-67B-1P.jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/NP-XANH-LA-CAY-46C-2T.jpg" />
        </div>
        <div class="cl_img">
            <img src="/hinh/NP-XANH-NAVY-69A-1A-.jpg" />
        </div>
    </div>
</asp:Content>
