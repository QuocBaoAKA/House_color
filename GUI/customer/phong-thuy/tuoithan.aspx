<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="tuoithan.aspx.cs" Inherits="GUI.customer.phong_thuy.tuoity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ty_content{
            margin: auto;
        }
        .ty_content h1{
            font-size: 42px;
            font-weight: 600;
            font-family: averta-600;
            text-align: center;
            color: #0026ff;
            line-height: 84px;
        }
        .ty_content img{
            display: flex;
            justify-content: center;
            align-items: center;
            margin: auto;
            margin-top: 1rem;
        }
        .ty_content p{
            margin-left: 6.5rem;
            margin-top: 1rem;
            font-size: 18px;
            color: #000000;
            font-weight: bold;
        }
        .ty_color{
            display: flex;
        }
        .ty_color i{
            margin: 15px;
            font-size: 40px;
            background: #0026ff;
            color: #fff;
            width: 60px;
            height: 60px;
            display: flex;
            justify-content: center;
            align-items: center;    
            border-radius: 50px;
        }
        .ty_color p{
            font-size: 20px;
            font-weight: 600;
            color: #000000;
            margin-top: 20px; 
        }
        .groud_color{
            width: 100%;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
        }
        .ty-gr{
            width: 280px;
            height: 280px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: 15px;
            margin-top: 30px;
	        transition: all 0.2s ease;
        }
        .ty-gr:hover{
            margin-top: 25px;
	        transition: all 0.2s ease;
            box-shadow: rgba(255, 255, 255, 0.1) 0px 1px 1px 0px inset, rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
        }
        .ty{
            width: 250px;
            height: 200px;
            margin: auto;
        }
        .ty-gr h3{
            margin-left: 22px;
            font-size: 18px;
        }
        .ty-gr p{
            margin-left: 22px;
        }
        .image_color{
            width: 100%;
            height: 100%;
            text-align: center;
            margin-bottom: 10rem;
            position: relative;
            
        }
        .img_color img{
            width: 90%;
            height: 600px;
            margin: auto;
          
        }
        .text_color{
            position: absolute;
            display: flex;
            width: 300px;
            height: 200px;
            background: rgb(138, 207, 247);
            opacity: 0.5;
            margin-top: -5rem;
            margin-left: 60rem;
            cursor: pointer;
        }
        .text_color:hover{
            opacity: 1;
        }
        .text_color i{
            font-size: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;    
        }
        .tc{
            width: 100px;
            height: 100px;
            margin: auto;
           
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
    <li class="breadcrumb-item active" aria-current="page">Màu sắc phong thủy 2021 - Tuổi Thân</li>
  </ol>
</nav>
    <div class="ty_content">
        <h1>Màu sắc phong thủy 2021- Tuổi Thân</h1>
        <img src="https://nipponpaint.com.vn/sites/default/files/2020-03/khi.jpg" />
        <p>Năm sinh ứng với tuổi Thân: 1956/ 1968/ 1980/ 1992/ 2004/ 2016</p>
    </div>
    <!---color--->
    <div class="ty_color">
        <i class="fas fa-paint-roller"></i>
        <p>Bộ sưu tập sắc màu phong thủy 2021 - Tuổi Thân</p>    
    </div>
    <div class="groud_color">
    <div class="ty-gr">
         <div class="ty"style="background-color: #D8E4B7;"></div>
            <h3>Spring Thaw</h3> 
            <p>#D8E4B7</p>         
    </div>
         <div class="ty-gr">
         <div class="ty"style="background-color: #E3CFC3;"></div>
            <h3>Minced Onion</h3> 
            <p>#E3CFC3</p>         
    </div>
         <div class="ty-gr">
         <div class="ty"style="background-color: #E8D6CE;"></div>
            <h3>Shy Cream</h3> 
            <p>#E8D6CE</p>        
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #EEE0D4;"></div>
            <h3>Soft Pink</h3> 
            <p>#EEE0D4</p>        
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #DEDFDE;"></div>
            <h3>Lilac Swish</h3> 
            <p>#DEDFDE</p>  
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #E5DBD2;"></div>
            <h3>White Shadow</h3> 
            <p>#E5DBD2</p>  
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #C9B8B1;"></div>
            <h3>Gray Beige</h3> 
            <p>#C9B8B1</p>  
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #F5E8D1;"></div>
            <h3>Whisper Gold</h3> 
            <p>#F5E8D1</p>  
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #BEE4CF;"></div>
            <h3>Pastel Jable</h3> 
            <p>#BEE4CF</p>  
        </div>
    </div>
    <div class="ty_color">
        <i class="fas fa-home"></i>
        <p>Mẫu phối màu nhà ở theo sắc màu phong thủy 2021</p>    
    </div>
    <div class="image_color">
        <div class="img_color">
            <img src="/hinh/ti_2a.jpg" />
        </div>
        <div class="text_color">
            <div class="tc" style="background: #D8E4B7; opacity: 1;"></div>
            <i class="fas fa-plus"></i>
            <div class="tc" style="background: #EFF0EA"></div>
        </div>
    </div>
    <div class="image_color">
        <div class="img_color">
            <img src="/hinh/biet_thu_15.jpg" />
        </div>
        <div class="text_color">
            <div class="tc" style="background: #DEDFDE; opacity: 1;"></div>
            <i class="fas fa-plus"></i>
            <div class="tc" style="background: #C9c5cf;"></div>
        </div>
    </div>
    <div class="image_color">
        <div class="img_color">
            <img src="/hinh/ngo1b.jpg" />
        </div>
        <div class="text_color">
            <div class="tc" style="background: #EEE0D4; opacity: 1;"></div>
        </div>
    </div>

    <!--end--->
</asp:Content>
