<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="color_phongthuy.aspx.cs" Inherits="GUI.customer.trang_chu.color_phongthuy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .content_pt{
            width: 100%;
            height: 200px;
        }
        .content_pt h1{
            text-align: center;
            color: #0026ff;
            margin-top: 1rem;
            font-weight: 700;
        }
        .content_pt p{
            text-align: center;
            margin-top: 20px;
            padding-left: 15%;
            padding-right: 15%;
            font-size: 18px;
        }
        .img_pt{
            width: 100%;
            height: 350px;
        }
        .bst_pt{
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
	        transition: 0.4s;
        }
        .bst{
            width: 400px;
            height: 350px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            justify-content: center;
            align-items: center;
            margin: 10px;
             margin-top: 30px;
	        transition: all 0.2s ease;
            
        }
        .bst img{
            width: 100%;
            height: 241px;
        }
        .bts_btn{
            display: flex;
            flex-wrap: wrap;
            flex-direction: row;
            margin-bottom: 1.5rem;
        }
        .bts_btn p{
            font-size: 18px;
            float: left;
            margin-top: 35px;
            margin-right: 2rem;
            font-weight: 600;
        } 
        .bts_btn i{
            font-size: 35px;
            margin-left: 3rem;
            margin-top: 35px;
        }
        .bts_btn i:hover{
            color: red;
        }
        .color_pt{
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin: 5px 8px;
            margin-top: 30px;
        }
        .bst:hover{
            color: red;
            margin-top: 20px;
	        transition: all 0.2s ease;
            box-shadow: rgba(255, 255, 255, 0.1) 0px 1px 1px 0px inset, rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px; 
        }
        .breadcrumb{
            background: #fff !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <nav aria-label="breadcrumb" style="margin-top: 3px; background: none;">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="../trang-chu/">Trang chủ</a></li>
    <li class="breadcrumb-item"><a href="#">Màu sắc</a></li>
    <li class="breadcrumb-item active" aria-current="page">Màu phong thủy</li>
  </ol>
</nav>
    <div class="content_pt">
        <h1>Màu sắc phong thủy</h1>
        <p>Hãy chọn màu sắc phù hợp với con giáp và bộ Bát hỷ của bạn để nâng cao các yếu tố phồn thịnh, xây dựng ngôi nhà mơ ước, và chào đón những niềm hạnh phúc lớn hơn nữa</p>
    </div>
    <img src="/hinh/cof.jpg" class="img_pt" />
    <div class="bst_pt">
        <a href="../phong-thuy/tuoity.aspx">
        <div class="bst">
            <img src="/hinh/chuot.jpg" />
            <div class="bts_btn">
                <p>Tuổi Tý</p>
                <div class="color_pt" style="background-color: #f4e8de;"></div>
                <div class="color_pt" style="background-color: #f1efde;"></div>
                <div class="color_pt" style="background-color: #f5e8d1;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/trau_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Sửu</p>
                <div class="color_pt" style="background-color: #c4bde2;"></div>
                <div class="color_pt" style="background-color: #af473f;"></div>
                <div class="color_pt" style="background-color: #e7cfd5;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/ho_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Dần</p>
                <div class="color_pt" style="background-color: #f6d2c0;"></div>
                <div class="color_pt" style="background-color: #c4bde2;"></div>
                <div class="color_pt" style="background-color: #818eb9;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/mao_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Mão</p>
                <div class="color_pt" style="background-color: #f1e5e0;"></div>
                <div class="color_pt" style="background-color: #c4bdd2;"></div>
                <div class="color_pt" style="background-color: #d1cddb;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div>
            </a>
        <a href="../phong-thuy/tuoithin.aspx">
        <div class="bst">
            <img src="/hinh/rong_2.jpg" />
            <div class="bts_btn">
                <p>Tuổi Thìn</p>
                <div class="color_pt" style="background-color: #e5e5e4;"></div>
                <div class="color_pt" style="background-color: #e1dcd6;"></div>
                <div class="color_pt" style="background-color: #f5e8d1;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/ran_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Tỵ</p>
                <div class="color_pt" style="background-color: #af473f;"></div>
                <div class="color_pt" style="background-color: #505050;"></div>
                <div class="color_pt" style="background-color: #ae9a94;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/ngua_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Ngọ</p>
                <div class="color_pt" style="background-color: #eee0d4;"></div>
                <div class="color_pt" style="background-color: #fed783;"></div>
                <div class="color_pt" style="background-color: #e2c2cf;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/de_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Mùi</p>
                <div class="color_pt" style="background-color: #a6c4d9;"></div>
                <div class="color_pt" style="background-color: #a6c9dc;"></div>
                <div class="color_pt" style="background-color: #6bc5cb;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/khi_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Thân</p>
                <div class="color_pt" style="background-color: #d8e4b7;"></div>
                <div class="color_pt" style="background-color: #e3dfc3;"></div>
                <div class="color_pt" style="background-color: #e8d6ce;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/ga_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Dậu</p>
                <div class="color_pt" style="background-color: #af473f;"></div>
                <div class="color_pt" style="background-color: #fdd141;"></div>
                <div class="color_pt" style="background-color: #faeccf;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/cho_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Tuất</p>
                <div class="color_pt" style="background-color: #f3e2cb;"></div>
                <div class="color_pt" style="background-color: #f8ab67;"></div>
                <div class="color_pt" style="background-color: #f6dcb8;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
        <a href="#">
        <div class="bst">
            <img src="/hinh/lon_1.jpg" />
            <div class="bts_btn">
                <p>Tuổi Hợi</p>
                <div class="color_pt" style="background-color: #cf6f91;"></div>
                <div class="color_pt" style="background-color: #0090c4;"></div>
                <div class="color_pt" style="background-color: #fbbe73;"></div>
                <i class="fas fa-chevron-circle-right"></i>
            </div>
        </div></a>
    </div>
</asp:Content>
