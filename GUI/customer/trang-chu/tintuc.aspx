<%@ Page Title="Tin tức" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="tintuc.aspx.cs" Inherits="GUI.customer.trang_chu.tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .weare {
         margin-top: 5px;
         background: #f2f2f2;
         font-family: Poppins;
         padding: 80px 0;
        }
        
        .weare .titlepage {
             text-align: center;
        }

        .weare .titlepage h2 {
             color: #000;
        }

        .weare .weare-box h3 {
             padding: 20px 0px 20px 0px;
             font-size: 29px;
             line-height: 30px;
             color: #090808;
             display: block;
             font-weight: 500;
           
        }

        .weare .weare-box {
             text-align: center;
             background-color: transparent;
             border-radius: 20px;
             transition: ease-in all 0.5s;
             text-align: left;
        }

        .weare .weare-box p {
             font-size: 17px;
             line-height: 34px;
             color: #090808;
             padding: 5px 0;
        }

        .weare .weare-img_box figure {
             margin: 0;
             margin-top: 2rem;
             
        }

        .weare .weare-img_box figure img {
             width: 100%;
             height: 250px;
        }

        .bg {
             font-size: 17px;
             background-color: transparent;
             color: #3fbc61;
             padding: 9px 0px;
             width: 100%;
             max-width: 190px;
             float: left;
             text-align: center;
             margin-top: 20px;
             border: #3fbc61 solid 2px;
             font-weight: 500;
             text-decoration: none;
        }

        .bg:hover {
             background: #3fbc61;
             color: #fff;
        }
        

        .main_weare{
             padding-bottom: 30px;
             height: 300px;
             box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
             margin-bottom: 2rem;
        }
        .main_weare2{
             padding-bottom: 30px;
             height: 300px;
             box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
             margin-bottom: 2rem;
        }
        .tintuc_content{
            width: 100%;
            height: 300px;
            background-image: url(https://cdn.pixabay.com/photo/2016/04/07/17/49/aircraft-1314333_960_720.png);
            
       }

        .breadcrumb{
            background:#fff;
        }
        .tintuc_content h1{
            text-align: center;
            color: #0026ff;
            padding: 30px;
            font-size: 48px;
            font-family: 'Playfair Display', serif;
            color: #fff;
        }
        .tintuc_content p{
            text-align: center;
            font-size: 16px;
            font-weight: 600;
        }
        .tc1{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .tc{
            display: flex;
            width: 600px;
            height: 250px;
            border: 1px solid rgba(149, 157, 165, 0.2);
            background: #fff;   
            margin-right: 30px;
            margin-bottom: 1rem;
        }
        .tc:hover{
            border: none;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .tc img{
            width: 250px;
            height: 100%;
        }
        .tc h4{
            font-size: 20px;
            color: #333333;
            margin-left: 6px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: 500;    
       }
        .tc_link{
            width: 100%;
            margin-top: 8rem;
        }
        .tc1 a:hover{
            text-decoration: none;
            color: #0026ff;  
        }
        /*news*/
        #popular-news{
	    display: flex;
	    flex-wrap: wrap;
	    margin: 30px 5%;
    }
    #popular-news h2{
	    margin: 0;
	    padding: 5px;
	    color: #fff;
    }
#featured h2{
	background-color: #46c8fb;
}
#latest h2{
	background-color: #4361ee;
}
#our-picks h2{
	background-color: darkblue;
}
#featured{
	flex: 2;
}
#latest,#our-picks{
	flex: 1;
}
#popular-news img{
	width: 100%;
	filter: brightness(0.7);
	transition-duration: 500ms;
}
.carousel, .news-container{
	position: relative;
}
.carousel-text{
	position: absolute;
	word-wrap: normal;
	bottom: 5px;
	z-index: 2;
	color: #fff;
	font-size: 24px;
	font-weight: bolder;
	padding: 0 10px;
	transition-duration: 500ms;
}
.news-container .carousel-text{
	font-size: 18px;
}
.carousel-date{
	display: block;
	text-align: center;
	font-size: 14px;
	color: rgba(255,255,255,0.7);
	font-weight: 300;
}
section{
	cursor: pointer;
}
.news-container:hover > .carousel-text{
	bottom: 10px;
}
.news-container:hover > img{
	filter: brightness(0.4);
}
.more-news{
	background-color: black;
	display: flex;
	flex-wrap: wrap;
	padding: 0 5%;
	justify-content: space-between;
	color: #fff;
}
.news-section{
	display: flex;
	flex-wrap: wrap;
	flex-basis: 70%;
	justify-content: space-between;
}
.world h2{	
	background-color: #ffd800;
}
.sport h2{
	background-color: #3fbc61;
}
.world h2, .sport h2{
    margin: 10px 0 0 0;
	padding: 0 10px;
}

.more-news img{
	width: 100%;
	height: 250px;
}
.world,.sport{
	flex-basis: 45%;
}
.carousel-item img{
    height: 450px;
}
.news-container img{
    height: 225px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav aria-label="breadcrumb" style="margin-top: 3px; background: none;">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="../trang-chu/">Trang chủ</a></li>
<%--        <li class="breadcrumb-item"><a href="#">Mẫu nhà đẹp</a></li>--%>
      <li class="breadcrumb-item active" aria-current="page">Tin tức</li>
      </ol>
    </nav>
    <div class="tintuc_content">
        <h1>Tin Tức</h1>
        <p>Cập nhật những thông tin mới và hữu ích.</p>
    </div>
    <!---home-news---->
    <main>
			<article id="popular-news">
				<div id="featured">
					<h2>Tin mới</h2>
					<section class="popular-news-carousel">
						<div id="carousel" class="carousel slide" data-ride="carousel">
						  <ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						  </ol>
						  <div class="carousel-inner">
							<div class="carousel-item active">
							  <img class="d-block w-100" src="/hinh/yellow.png" alt="First slide" />
								<div class="carousel-caption d-none d-md-block">
									<h5>[30+] Mẫu sơn nội thất màu vàng kem lôi cuốn nhất</h5>
								 </div>
							</div>
							<div class="carousel-item">
							  <img class="d-block w-100" src="/hinh/son.jpg" alt="Second slide" />
								<div class="carousel-caption d-none d-md-block">
									<h5>Dulux ra mắt giải pháp sơn kháng virus và vi khuẩn bảo vệ sức khỏe gia đình</h5>
									
								 </div>
							</div>
							<div class="carousel-item">
							  <img class="d-block w-100" src="/hinh/jotun_2021.png" alt="Third slide" />
								<div class="carousel-caption d-none d-md-block">
									<h5>Xu hướng sắc màu 2021 Jotun - Tái khám phá</h5>
								 </div>
							</div>
						  </div>
						  <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						  </a>
						</div>
					</section>
					
				</div>
				<div id="latest">
					<h2>Mẹo hay</h2>
					<section class="news">
						<div class="news-container">
							<img src="/hinh/news_1448853510.jpg" />
							<p class="carousel-text">Không khó để tự sơn nhà</p>				
						</div>						
					</section>
					<section class="news">
						<div class="news-container">
							<img src="/hinh/news_1410424030.jpg" />
							<p class="carousel-text">Những quy tắc cơ bản khi sơn tường nhà</p>				
						</div>						
					</section>
				</div>
				<div id="our-picks">
					<h2 style="background: #e63946;">Khuyến mãi</h2>
					<section class="news">
						<div class="news-container">
							<img src="/hinh/news_1624155819.png" />
							<p class="carousel-text">Đãi Giờ Vàng - Sơn Jotun Giảm Giá Khủng</p>				
						</div>						
					</section>
					<section class="news">
						<div class="news-container">
							<img src="/hinh/news_1620880964.png" />
							<p class="carousel-text">Săn lộc vàng cùng Jotun</p>				
						</div>						
					</section>
				</div>
			</article>
		</main>



    <!--end--->
    <div id="why" class="weare">
         <div class="container">
             <div class="tc1">
        <a href="#">
        <div class="tc">
            <img src="/hinh/photo-1-15555747147861558206622.jpg" />
                <h4>Căn nhà nổi bật hơn nếu sơn tường trắng theo cách này</h4>
        </div></a>
        <a href="#">
         <div class="tc">
            <img src="/hinh/yellow.png" />
                <h4>[30+] Mẫu sơn nội thất màu vàng kem lôi cuốn nhất</h4>
        </div></a>
        </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                    
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="main_weare">
                     <div class="row">
                        <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
                           <div id="box_ho" class="weare-img_box">
                              <figure><img src="/hinh/sonnha.jpg" alt="#" /></figure>
                           </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
                           <div class="weare-box">
                              <h3>Sơn lại nhà cũ có cần sơn lót không?</h3>
                              <p>Sơn lại nhà cũ có cần sơn lót không? Đây có lẽ là câu hỏi nhận đươc rất nhiều ý...</p>
                              <a class="read_more bg" href="#">Xem thêm</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="main_weare2">
                     <div class="row">
                        <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
                           <div id="box_ho" class="weare-img_box">
                              <figure><img src="/hinh/top.jpg" alt="#" /></figure>
                           </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
                           <div class="weare-box">
                              <h3>Sơn cách nhiệt chống nắng nào tốt? - Top 5 hãng sơn ưu chuộng.</h3>
                              <p>Sơn cách nhiệt chống nóng là giải pháp hiệu quả cho ngôi nhà của bạn khỏi những tác động từ...</p>
                              <a class="read_more bg" href="#">Xem thêm</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</asp:Content>
