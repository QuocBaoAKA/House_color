<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.trang_chu.trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Trang Chủ</title>
    <style>
      .btn-grad {background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%)}
         .btn-grad {
             width: 200px;
            margin: 10px;
            padding: 15px 30px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }  
           @media (max-width: 760px){
             .about-image img{
                 width: 450px;
             }
         }
           .text_da::after{
        position: relative;
        content: '';
        top: 100%;
        width: 110px;
        height: 8px;
        display: block;
        margin: 0 auto;
        background: #55efc4;
    }
           /*img*/
           .main_img{
	    width: 940px;
	    margin: auto;
	    margin-top: 30px;
	    overflow: hidden;
        margin-bottom: 2rem;    
	    /*cach thu hai*/
	    display: flex;
	    justify-content: space-between;
	    flex-wrap: wrap;
         }
        .main_img h1{
            margin: auto;
            margin-bottom: 1.5rem;
        }
        /*css cho khoi*/
    .khoi{
	    width: 300px;
	    height: 300px;
	    padding: 5px;
	    box-sizing: border-box;
	    overflow: hidden;
	    position: relative;
        margin-bottom: 1rem;
	
    }
    .khoi img{
	    width: 100%;
	    height: 100%;
	    transition: 1s;
        
    }

    .khoi:hover img{
	    transform: scale(1.5);
	    transition: 1s; 
    }
    @media screen and (max-width: 760px){  
        .khoi{
            width: 600px;
            box-sizing: border-box;
        }
        .khoi img{
            width: 80%;     
        }
        .video_container .frame_video{
            width: 460px;
            height: 350px;
        }
        .khoi:hover img{
            transform: scale(0.8);
        }
        
    }
    /*Liên hệ*/
        .best {
         background: #fff;
         margin-top: 50px;
        }
            .best .titlepage h2 {
                color: #030100;
                margin-bottom: 20px;
                text-align: center;
                font-size: 3em;
            }   
             

        .best .titlepage span {
             color: #23262d;
             font-size: 17px;
             line-height: 28px;
        }

        .best_box {
             text-align: center;
             background-color: #00a8ff;
             border-radius: 20px;
             padding: 30px 20px;
             margin: auto;  
             margin-bottom: 30px;
             width: 300px;
             height: 180px;
             
        }
        .best_box:hover{
            background: #2ed573;
        }
        .best_box h4 {
             color: #fff;
             text-transform: uppercase;
             font-size: 30px;
             line-height: 40px;
             font-weight: 500;
             padding: 0;
        }

        .best_box p {
             color: #fff;
             font-size: 18px;
             line-height: 28px;
             padding-top: 25px;
        }
        .carousel-inner{
            width: 90%;
            margin: auto;
            margin-top: 5px;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/styles/article_hero_image_scale/s3/article/top-banner-ec-cbb_2.jpg?itok=Kfu7BF_v" height="450" class="d-block w-100" alt="...">
    
    </div>
    <div class="carousel-item">
     <img src="https://sonduluxvietnam.com/wp-content/uploads/2017/02/banner3.jpg" class="d-block w-100" alt="..." height="450">
    </div>
    <div class="carousel-item">
     <img src="https://jotunimages.azureedge.net/images/images/majestic-home-herobanner-1000x515-587187_tcm65-95738.jpg" class="d-block w-100" alt="..." height="450">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  <!---noidung---->
     <section id="about" class="site-padding">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="about-image wow fadeInLeft">
							<img src="/hinh/nauquacam.jpg" alt="About Image" width="500" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="about-text wow fadeInRight">
							<h3>Màu của Năm 2021</h3>
                            <h2>NÂU QUẢ CÁM</h2>
							<p>Năm nay, chúng tôi chọn ra Màu Của Năm có tông trung tính. Nâu Quả Cảm là một màu ấm áp,cân bằng, kết nối chúng ta về với thiên nhiên và những điều giản dị. Sắc Nâu còn có tính nâng đỡ, thúc đẩy sự ổn định, phát triển, tiếp thêm cho ta cam đảm để đương đầu với đổi thay.</p>
							<a href="../color/" class="btn-grad">Tìm hiểu thêm</a>
						</div>
					</div>
				</div>
			</div>
		</section> 
    <section class="records">
        <h1 class="text_da" style="text-align: center; bottom: 5px; color: #fff;" data-title="Dự Án">Dự án - Công trình tiêu biểu</h1>
        <div class="overlay overlay-sm">
          <img src="/hinh/square.png" alt="" class="shape square1" />
          <img src="/hinh/square.png" alt="" class="shape square2" />
          <img src="/hinh/circle.png" alt="" class="shape circle" />
          <img
            src="/hinh/half-circle.png"
            alt=""
            class="shape half-circle"
          />
          <img src="/hinh/wave.png" alt="" class="shape wave wave1" />
          <img src="/hinh/shapes/wave.png" alt="" class="shape wave wave2" />
          <img src="/hinh/shapes/x.png" alt="" class="shape xshape" />
          <img src="/hinh/shapes/triangle.png" alt="" class="shape triangle" />
        </div>
      </section>    
    <div class="main_img">
         
		<div class="khoi">
			<img src="/hinh/CT1.jpg" />
			
		</div> <!-- end khoi -->
		<div class="khoi">
			<img src="/hinh/CT2.jpg" />
			
		</div> <!-- end khoi -->
		<div class="khoi">
			<img src="/hinh/CT3.jpg" />
			
		</div> <!-- end khoi -->
		<div class="khoi">
			<img src="/hinh/CT4.jpg" />
			
		</div> <!-- end khoi -->
		<div class="khoi">
			<img src="/hinh/CT5.jpg" />
			
		</div> <!-- end khoi -->
		<div class="khoi">
			<img src="/hinh/CT7.jpg" />
			
		</div> <!-- end khoi -->
	</div>
    <div id="lienhe" class="best">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Liên hệ</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-4">
                  <div class="best_box">
                     <h4><i class="fas fa-map-marker-alt"></i></h4>
                     <p>126 Nguyễn Thiện Thành, Phường 5, Trà Vinh</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="best_box">
                     <h4><i class="fas fa-phone-alt"></i></h4>
                     <p>0868248101</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="best_box">
                     <h4><i class="fas fa-envelope"></i></h4>
                     <p>House.colorvn@gmail.com</p>
                  </div>
               </div>
               
            </div>
         </div>
      </div>
</asp:Content>
