<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="mausac.aspx.cs" Inherits="GUI.customer.trang_chu.mausac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .card_color_group{
            width: 80%;
            height: 100%;
            background: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: auto;
            margin-top: 5rem;
            margin-bottom: 5rem;
        }
        .card_color > h1{
            text-align: center;
            font-size: 22px;
            
        }
        .btn1{
            width: 150px;
            height: 80px;
            background: red;
            border: none;
            color: white;
            margin-left: 5rem;
            margin-top: 0.5rem;
            transition: transform .2s;
            margin-right: 4px;
            margin-bottom: 1rem;
            outline: none;
        }
        .btn1:hover{
            
            transform: scale(1.3);
        }
        .btn2{
            width: 150px;
            height: 80px;
            background: #10EB11;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn2:hover{
            
            transform: scale(1.3);
        }
        .btn3{
            width: 150px;
            height: 80px;
            background:#10A2E6;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn3:hover{
            
            transform: scale(1.3);
        }
        .btn4{
            width: 150px;
            height: 80px;
            background: #9811F0;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn4:hover{
            
            transform: scale(1.3);
        }
        .btn5{
            width: 150px;
            height: 80px;
            background: #F0F911;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn5:hover{
            
            transform: scale(1.3);
        }
        .btn6{
            width: 150px;
            height: 80px;
            background:#FFFFF3;
            border: none;
            color: black;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn6:hover{
            transform: scale(1.3);
        }
        .btn7{
            width: 150px;
            height: 80px;
            background: #C7C7BD;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn7:hover{
            
            transform: scale(1.3);
        }
        /*image_header*/
        .content-block{
          background:transparent no-repeat center center fixed;
          -webkit-background-size:100%;
          -moz-background-size:100%;
          -o-background-size:100%;
          background-size:100%;
          background-size:cover;
          -webkit-background-size:cover;
          -moz-background-size:cover;
          -o-background-size:cover;
          overflow:hidden;
          padding: 60px 0;
        }
        .parallax{
          padding: 80px 0;
        }

        .block-body {
          margin-top: 60px;
        }

        #header {
          background-image: url(/hinh/clll.jpg);
          box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.2);
          height: 450px;
        }
        #services {
            background:white;
        }
        .slogan h1{
            text-align: center;
            color: white;
            font-size: 60px;
            font-family: Playfair Display , serif;
        }
        .secondary-slogan{
            text-align: center;
            color: white;
            font-size: 20px;
            font-family: ource Sans Pro;
            line-height: 24px;
        }
        .icon-slogan i{
            margin-left: 780px;
            margin-top: 5rem;
            color: white;
            font-size: 3em;
            animation: 2.5s ease 0s infinite normal none running bounce;
            position: absolute;
            z-index: 2;
        }
         .icon-slogan i:hover{
             color: #2ecc71;
         }
         .card_color_group{
            width: 80%;
            height: 100%;
            background: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: auto;
            margin-top: 5rem;
        }
         .color_gruop{
             display: flex;
             flex-direction: row;
         }
         .color_a1{
             width: 170px;
             height: 100px;
             background: rgb(249, 223, 226);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a2{
             width: 170px;
             height: 100px;
             margin-right: 10px;
             background: rgb(248, 204, 207);
             border-radius: 10px;
         }
         .color_a3{
             width: 170px;
             height: 100px;
             background: rgb(249, 209, 209);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a4{
             width: 170px;
             height: 100px;
             background: rgb(250, 216, 205);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a5{
             width: 170px;
             height: 100px;
             background: rgb(248, 200, 209);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a6{
             width: 170px;
             height: 100px;
             background: rgb(243, 186, 191);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a7{
             width: 170px;
             height: 100px;
             border-radius: 10px;
             margin-right: 10px;
         }
         /*css cửa sổ nổi*/
        /*color_product*/
        .color_pro{
            display: inline-flex;
           
        }
        .color_pr{
            width: 350px;
            height: 350px;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            background-color: #fff;
            margin: 1rem;
            margin-top: 2rem;
            margin-bottom: 2rem;
            transition: all .2s ease-in-out;
        }
        .color_pr:hover {
            
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
            transform: scale(1.025);
            z-index: 2;
        }
        .color_pr img{
            width: 350px;
            height: 250px;
        }
        .color_pr a p{
            text-align: center;
            margin-top: 1rem;
            font-size: 18px;
            line-height: 24px;
            color: #363740;
        }
        .color_pr  a p:hover{
            color: #1e90ff;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="header" class="content-block">
				
				<section class="center">
					<div class="slogan">
						<h1>Bộ sưu tập Màu sắc</h1>
					</div>
					<div class="secondary-slogan">
						Khám phá và lấy cảm hứng từ bộ sưu tập màu sắc mới nhất của chúng tôi
					</div>
                    <div class="icon-slogan">
						<i class="fas fa-angle-down"></i>
					</div>
				</section>
	</div>
    <!----search---->
    <center>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/nt1.jpg" />
            <a href="color_2021.aspx"><p>Bảng Màu Ngoại Thất Jotashield  <i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/nt2.jpg" />
            <a href="ngoaithat.aspx"><p>Bộ sưu tập màu sắc 2021  <i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/nt3.jpg" />
            <a href="ngoaithat.aspx"><p>Mùa nội thất cao cấp Majestic  <i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    </center>
</asp:Content>
