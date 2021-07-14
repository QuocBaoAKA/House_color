<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="tuoity.aspx.cs" Inherits="GUI.customer.phong_thuy.tuoity" %>
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
    <li class="breadcrumb-item active" aria-current="page">Màu sắc phong thủy 2021 - Tuổi Tý</li>
  </ol>
</nav>
    <div class="ty_content">
        <h1>Màu sắc phong thủy 2021- Tuổi Tý</h1>
        <img src="/hinh/chuot.jpg" />
        <p>Năm sinh ứng với tuổi Tý: 1960/ 1972/ 1984/ 1996/ 2008</p>
    </div>
    <!---color--->
    <div class="ty_color">
        <i class="fas fa-paint-roller"></i>
        <p>Bộ sưu tập sắc màu phong thủy 2021 - Tuổi Tý</p>    
    </div>
    <div class="groud_color">
    <div class="ty-gr">
         <div class="ty"style="background-color: #f4e8de;"></div>
            <h3>Crysta Delight</h3> 
            <p>#F4E8DE</p>         
    </div>
         <div class="ty-gr">
         <div class="ty"style="background-color: #f1efde;"></div>
            <h3>Sunbleached</h3> 
            <p>#F1EFDE</p>         
    </div>
         <div class="ty-gr">
         <div class="ty"style="background-color: #f3ebe1;"></div>
            <h3>Smooth Floating Plume</h3> 
            <p>#F3EBE1</p>        
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #fdd141;"></div>
            <h3>Lemon Drop</h3> 
            <p>#FDD141</p>        
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #f1e1bc;"></div>
            <h3>Yellow Quartz</h3> 
            <p>#F1E1BC</p>  
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #f2f6be;"></div>
            <h3>Bistre</h3> 
            <p>#F2F6BE</p>        
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #eaede1;"></div>
            <h3>Snow Elver</h3> 
            <p>#EAEDE1</p>  
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #acaca7;"></div>
            <h3>Dauphin Gray</h3> 
            <p>#ACACA7</p>   
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #95918C;"></div>
            <h3>Great Smokies</h3> 
            <p>#95918C</p>       
        </div>
        <div class="ty-gr">
         <div class="ty"style="background-color: #B5BCBB;"></div>
            <h3>Dixieland</h3> 
            <p>#B5BCBB</p>      
        </div>
    </div>
    <div class="ty_color">
        <i class="fas fa-home"></i>
        <p>Mẫu phối màu nhà ở theo sắc màu phong thủy 2021</p>    
    </div>
    <div class="image_color">
        <div class="img_color">
            <img src="/hinh/nha_pho_6.jpg" />
        </div>
        <div class="text_color">
            <div class="tc" style="background: rgba(231, 227, 215, 1); opacity: 1;"></div>
            <i class="fas fa-plus"></i>
            <div class="tc" style="background-color: #acaca7"></div>
        </div>
    </div>
    <div class="image_color">
        <div class="img_color">
            <img src="/hinh/dau_3.jpg" />
        </div>
        <div class="text_color">
            <div class="tc" style="background-color: #95918c; opacity: 1;"></div>
            <i class="fas fa-plus"></i>
            <div class="tc" style="background-color: #eff0ea"></div>
        </div>
    </div>
    <div class="image_color">
        <div class="img_color">
            <img src="/hinh/ho_1 (1).jpg" />
        </div>
        <div class="text_color">
            <div class="tc" style="background-color: #f6dcb8; opacity: 1;"></div>
        </div>
    </div>

    <!--end--->
</asp:Content>
