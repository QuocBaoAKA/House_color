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
        border-radius: 16px;
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
         margin-top: 2px;
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
        /*product*/
        .section_product{
            background: #f2f2f2;
            height: 420px;
        }
        
        .product_group{   
           display: flex;
        }
        .product_group{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .product_home{
            width: 650px;
            height: 300px;
            margin: auto;
            margin-top: 2rem;
            margin: 10px;
            background: #fff;
            border-radius: 10px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            transition: 0.2s ease;
            display: flex;
        }
        .product_home:hover{
            transform: translateY(-15px);
            border-bottom-color: #0869ea;
        }
        .product_home img{
            width: 350px;
            height: 280px;
            border-radius: 20px;
            margin-left: 10px;
            margin-top: 10px;
        }
        .product_home h1{
            font-size: 25px;
            margin-left: 10px;
            margin-top: 1.5rem;
            color: #333333;
            width: 100%;

        }
        .btn_a{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 150px;
            margin-left: -8rem;
            margin-top: 10rem;
            padding: 15px;
            height: 50px;
            border-radius: 10px;
            background: #0869ea;
            color: #fff;
            text-decoration: none;
        }
        .btn_a1{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 150px;
       
            margin-top: 10rem;
            padding: 15px;
            height: 50px;
            border-radius: 10px;
            background: #0869ea;
            color: #fff;
            text-decoration: none;
        }
        .btn_a:focus{
            background: #fff;
            border: 2px solid #0869ea;
            color: #23262d !important;
        }
       .product_text
       {
           display: flex;
           flex-direction: column;
           justify-content: center;
           align-items: center;
           width: 100%;
       }
       .product_text h1{
           text-align: center;
           font-family: 'Hahmlet', serif;
           font-size: 28px;
           font-weight: 600;
       }
       .product_text .btn_a{
           margin-left: 1rem;
       }
       .product_text .btn_a:hover{
           text-decoration: none;
           color: #fff;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item">
         <img src="/hinh/housecolor.png" class="d-block w-100" alt="..." height="450" />
    </div>
    <div class="carousel-item active">
         <img src="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/styles/article_hero_image_scale/s3/article/top-banner-ec-cbb_2.jpg?itok=Kfu7BF_v" height="450" class="d-block w-100" alt="..." />
    </div>
    <div class="carousel-item">
         <img src="https://sonduluxvietnam.com/wp-content/uploads/2017/02/banner3.jpg" class="d-block w-100" alt="..." height="450">
    </div>
    <div class="carousel-item">
         <img src="/hinh/re.png" class="d-block w-100" alt="..." height="450" />
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
    <div class="container_group">
    <section class="section_product">
        <h1 style="text-align: center; font-family: 'Playfair Display', serif; padding: 15px; color: #313131; margin-bottom: 1rem; font-size: 2.5rem" class="h1_dr" > Lựa chọn sản phẩm cho dự án của bạn</h1>
        <div class="product_group">           
        <div class="product_home">  
                <img src="https://viethangroup.vn/wp-content/uploads/2020/03/thiet-ke-ngoai-that-doc-dao.jpg" />  
             <div class="product_text">
             <h1>Sơn Ngoại Thất</h1>
                <a href="../trang-chu/sonngoaithat.aspx" class="btn_a">Xem Sản Phẩm</a> 
             </div>   
        </div>
            
        <div class="product_home">
            <img src="https://mocshop.com.vn/library/module_new/bao-gia-thiet-ke---thi-cong-noi-that_s2030.jpg" />           
             <div class="product_text">    
                <h1>Sơn Nội Thất</h1>
                <a href="../trang-chu/sonnoithat.aspx" class="btn_a">Xem Sản Phẩm</a>
            </div>
           </div>
        </div>
    </section>
     <section id="about" class="site-padding" >
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
     <!-- About Start -->
        <div class="about wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <div class="about-img">
                            <img src="https://mykolor.com/wp-content/uploads/2019/03/1.jpg" alt="Image" />
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="section-header text-left">
                            <p>Mykolor</p>
                            <h3>Bảng màu</h3>
                            <h2>OFFWHITE</h2>
                        </div>
                        <div class="about-text">
                            <p>
                              Những gam màu thuộc bảng màu Offwhite, hay gam màu pastel nhạt là những sắc thái của màu trắng bao gồm màu trắng, màu kem, màu vanilla, màu xanh da trời, màu kem bạc hà, màu hồng phấn, vv…                
                            </p>
                            <a class="btn-grad" href="#">Tìm hiểu thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->
    <section class="records" style="background: #0768ea;">
        <h1 class="text_da" style="text-align: center; font-family: 'Playfair Display', serif; bottom: 5px; color: #fff;" data-title="Dự Án">Dự án - Công trình tiêu biểu</h1>
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
			<img src="/hinh/Screen-Shot-2016-02-03-at-7.22.29-AM.png" />
			
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
			<img src="/hinh/sector-hero_0.jpg" />
			
		</div> <!-- end khoi -->
		<div class="khoi">
			<img src="/hinh/trackrecord-vn-terrarosa_0.jpg" />
			
		</div> <!-- end khoi -->
	</div>
        <section id="partner" class="section partner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="section-title" style="font-size: 2.5rem; font-family: 'Playfair Display', serif;">Các thương hiệu sơn</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdSr84FH6o5iOrvQWPDj-Y8Lyg_a5A5Y49JzMOs2dKDWivJ80b3ctVWEkpf7F7v0DMcmg&usqp=CAU" style=" border-radius: 50%; width: 200px; height: 200px;" />
                </div>
                <div class="col-sm-3">
                    <img src="https://jotunimages.azureedge.net/images/images/jotun-logo-on-jotun-blue-background_tcm47-28006.png" style="width: 200px; height: 200px; border-radius: 50%;" />
                </div>
                <div class="col-sm-3">
                    <img src="https://mykolor.com/wp-content/themes/steen/app/public/img/about__item__mykolor.jpg?v=1.1" style="width: 200px; height: 200px; border-radius: 50%;" />
                </div>
                <div class="col-sm-3">
                    <img src="/hinh/1531636777375-700X400.png" style="width: 200px; height: 200px; border-radius: 50%;" />
                </div>
            </div>
        </div>
    </section>
    <!---tin tuc--->
    <div class="tintuc_group">
        <div class="tintuc_g">
            <img src="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/digital_colour_card_-_image.jpg" />
            <div class="tin">
                <h1 class="h1">Bảng màu DULUX BETTER LIVING AIR CLEAN</h1>
                <p class="p_d">Cuộc sống trọn vẹn hơn khi các giác quan được giao thoa với nhau. Không khí trong lành giờ đây không chỉ để cảm nhận mà còn để ngắm nhìn.</p>
            </div>
            <button class="btn_share">
                <a href="https://aats3-81bb7ee5abeccf0e228724ceabea4a3-public.s3-eu-west-1.amazonaws.com/colour_card_airclean.pdf">Tải Về</a>
            </button>
        </div>
        <div class="tintuc_g">
            <img src="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/ec_stain_repellent.jpg" />
            <div class="tin">
                <h1 class="h1">Bảng màu DULUX EASYCLEAN CHỐNG BÁM BẨN</h1>
                <p class="p_d">Trẻ em thích khám phá, tìm tòi và sáng tạo. Hãy tạo điều kiện tốt nhất để các bé được thỏa sức vui chơi và tự do phát triển tư duy.</p>
            </div>
            <button class="btn_share">
                <a href="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/cc_-_easyclean_chong_bam_ban.pdf?brand=Dulux">Tải Về</a>
            </button>
        </div>
        <div class="tintuc_g">
            <img src="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/ambiance.jpg" />
            <div class="tin">
                <h1 class="h1">Bảng màu DULUX AMBIANCE 5IN1</h1>
                <p class="p_d">Ngôi nhà không chỉ để ở mà còn là nơi thể hiện cá tính và phong cách sống. Vậy tại sao không thay đổi để sáng tạo một không gian sống hoàn hảo?</p>
            </div>
            <button class="btn_share">
                <a href="https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/ambiance_cc.pdf?brand=Dulux">Tải Về </a></button>
        </div>
    </div>
    
    <section class="vitri_gr">
	<div class="container">
        <h2 style="font-size: 2.5rem; text-transform: none; font-family: 'Playfair Display', serif; line-height: 46px;">Liên hệ</h2>
    </div>      
    </section>
    <section id="location" class="section location">
        <div id="lienhe" class="best">
         <div class="container">
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
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                   
                    <address>
                        <h1>House Color</h1>
                        <p>Tô điểm cho ngôi nhà của bạn</p>
                        
                    </address>
                </div>
                <div class="col-sm-9">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3930.1261368207374!2d106.34433061461489!3d9.923451592903687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0175ea296facb%3A0x55ded92e29068221!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBUcsOgIFZpbmg!5e0!3m2!1svi!2s!4v1625137798623!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>
    </div>
</asp:Content>
