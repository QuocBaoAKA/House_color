<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="khampha.aspx.cs" Inherits="GUI.customer.trang_chu.khampha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .row_kp{
            display: flex;
            width: 70%;
            background: #ffffff;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            margin: auto;
            margin-top: 2rem;
            margin-bottom: 3rem;           
        }
        
        .col-1kp-1, .col-kp-2{
            flex-basis: 50%;
            overflow: hidden;
        }
        .col-kp-2 img{
            width: 650px;
            height: 500px;
            
        }
        .col-kp-1{
            padding: 8% 5%;
            position: relative;
        }
        .col-kp-1 h1{
            font-size: 30px;
            line-height: 80px;
            letter-spacing: 2px;
            color: #333;
            font-family:  'Squada One';
        }
        .col-kp-1 p{
            color: #1B9CFC;
            line-height: 22px;
            margin: 15px 0 30px;
        }
        .btn-primary{
            width: 180px;
            border-radius: 15px !important;
             border: none !important;
            background-color: #1e272e !important;
            height: 45px;
        }
        .btn-primary:hover{
            background-color: #0be881 !important;
        }
        .ul_kp{
            position: absolute;
            bottom: 30px;
        }
        .ul_kp .btnkp{
            list-style: none;
            width: 15px;
            height: 15px;
            display: inline-block;
            background: rgba(149, 157, 165, 0.2);
            border-radius: 50%;
            cursor: pointer;
        }
        .ul_kp .active{
            background: #333;
        }
        @media(max-width: 700px){
            .row_kp{
                display: block;
                height: 600px;
                width: 80%;
            }
            .row_kp img{
                height: 300px;
                
            }
            .row_kp h1{
                font-size: 25px;
                line-height: 28px;
            }
            .row_kp p{
                font-size: 18px;
                line-height: 18px;
            }
            .btn-primary{
                float: right;
                height: 30px !important;
                
            }
            
        }
        /*banner2*/
        .row_kp_1{
            display: flex;
            width: 70%;
            background: #ffffff;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            margin: auto;
            margin-top: 3rem;
            margin-bottom: 3rem;       
        }
        .col-kp-x, .col-kp-y{
            flex-basis: 50%;
            overflow: hidden;
        }
        .col-kp-y img{
            width: 650px;
            height: 550px;
            
        }
        .col-kp-x{
            padding: 8% 5%;
            position: relative;
        }
        .col-kp-x h1{
            font-size: 30px;
            line-height: 80px;
            letter-spacing: 2px;
            color: #333;
            font-family:  'Squada One';
            margin-top: -2.5rem;
        }
        .col-kp-x p{
            color: #1B9CFC;
            line-height: 22px;
            margin: 15px 0 30px;
        }
        .btn-primary{
            width: 180px;
            border-radius: 15px !important;
             border: none !important;
            background-color: #1e272e !important;
            height: 45px;
        }
        .btn-primary:hover{
            background-color: #0be881 !important;
        }
        .ul_kp_x{
            position: absolute;
            bottom: 30px;
        }
        .ul_kp_x .btnkp1{
            list-style: none;
            width: 15px;
            height: 15px;
            display: inline-block;
            background: rgba(149, 157, 165, 0.2);
            border-radius: 50%;
            cursor: pointer;
        }
        .ul_kp_x .active{
            background: #333;
        }
        .modal_img{
            width: 80%;
            
        }
        .row_bg{
            background: #fafafa; 
            height: 550px;   
        }
        @media(max-width: 700px){
            .row_kp_1{
                display: block;
                width: 80%;
            }
        }
        .h1_bg{
            text-align: center;
            color: #555555;
            font-family: 'PT Serif', serif;
            line-height: 24px;
            margin-top: 25px;
        }
        .home_kp{
            width: 100%;
            height: 250px;
        }
        .home_kp h1{
            font-size: 42px;
            font-weight: 600;
            font-family: 'PT Serif', serif;
            line-height: 84px;
            text-align: center;
            color: #4800ff;
        }
        .home_kp p{
            text-align: center;
            font-size: 20px;
            font-weight: 400;
        }
        /*css tab*/
        .wrapper{
	        width: 100%;
            height: 100%;
	        margin: 150px auto;
        }

        .tabs ul{
	        display: flex;
	        background: #fbfbfb;
	        border: 1px solid #dddddd;
	        border-radius: 5px;
	        margin-bottom: 25px;
        }

        .tabs ul li{
	        width: 550px;
	        padding: 15px;
	        border-right: 1px solid #dddddd;
	        text-align: center;
	        color: #4800ff;
	        text-transform: uppercase;
	        font-size: 18px;
	        font-weight: 600;
	        letter-spacing: 3px;
	        cursor: pointer;
	        transition: all 0.2s ease;
	        position: relative;
            list-style: none;
        }
        .tabs ul li:last-child{
	        border-right: 0px;
        }

        .tabs ul li:before{
	        content: "";
	        position: absolute;
	        bottom: -1px;
	        left: 0;
	        width: 100%;
	        height: 2px;
	        background: #4800ff;
	        opacity: 0;
	        transition: all 0.2s ease;
        }

        .tabs ul li:hover,
        .tabs ul li.active{
	        background: #1B9CFC    ;
	        color: #fff;
        }

        .tabs ul li:hover:before,
        .tabs ul li.active:before{
	        opacity: 1;
        }

        .content{
	        background: #fbfbfb;
	        border: 1px solid #dddddd;
	        border-radius: 5px;
	        padding: 20px;
        }

        .tab_wrap .title{
	        font-size: 20px;
	        margin-bottom: 15px;
	        font-weight: 600;
        }

        .tab_wrap .tab_content p{
	        font-size: 14px;
	        line-height: 22px;
	        margin-bottom: 10px;
        } 
        /*home-city*/
        .tab_nhapho{
            display: flex;
            width: 350px;
            height: 400px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .city_home{
            
        }
        .city_home img{
            width: 330px;
            height: 300px;
        }  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home_kp">
        <h1>Mẫu phối màu nhà đẹp</h1>
        <p>Bạn gặp rắc rối trong việc hình dung ra căn nhà mơ ước? Giúp cho sức sáng tạo của bạn bay xa với gợi ý mẫu phối màu sơn nhà đẹp của chúng tôi</p>
    </div>
    <!---tab---->
    <div class="wrapper">
	<div class="tabs">
		<ul>
			<li class="active">
				<span class="text">Phòng khách</span>
			</li>
			<li>
				<span class="text">Nhà Phố</span>
			</li>
			<li>
				<span class="text">Phòng Bếp</span>
			</li>
			<li>
				<span class="text">Phòng Ngủ</span>
			</li>
		</ul>
	</div>

	<div class="content">
		<div class="tab_wrap" style="display: block;">
			<div class="tab_content">
			<h1 class="h1_bg">Mẫu phòng khách đẹp</h1>
          <div class="row_kp_1">
            <div class="col-kp-x">
            <h1>Mẫu Phòng khách<br /> với tông màu xanh đầy sức sống</h1>
            <p>Mã màu RGB: rgb(232, 206, 211</p>
            <p>Mã màu jotun: BERMUDA PINK(7418)</p>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Xem thêm
            </button>
            <ul class="ul_kp_x">
                <li class="btnkp1 active"></li>
                <li class="btnkp1"></li>
                <li class="btnkp1"></li>
                <li class="btnkp1"></li>
                <li class="btnkp1"></li>
            </ul>
        </div>
        <div class="col-kp-y">
            <img src="/hinh/x4.jpg"  alt="anh-demo" id="imgbanner1"/>
            
        </div>
     </div>
    </div>
		</div>
		<div class="tab_wrap" style="display: none;">
			<h1 class="h1_bg">Mẫu nhà phố đẹp</h1>
			<div class="tab_content">
                <div class="tab_nhapho">
                    <div class="city_home">
                        <img src="/hinh/nha_pho_6.jpg" />
                    </div>
                    <h3>Nhà phố 1</h3>
                    <div class="city">
                        
                    </div>
                </div>
			</div>
		</div>
		<div class="tab_wrap" style="display: none;">
			<div class="title">Phone</div>
			<div class="tab_content">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem inventore perspiciatis alias, magni provident nulla recusandae odio consequatur praesentium officia non voluptate voluptatum debitis consequuntur omnis incidunt fuga eaque sit aliquam nemo. Recusandae voluptatibus excepturi, voluptates inventore nulla aliquid porro a asperiores beatae quas quo incidunt at, cumque minima officiis error eius dignissimos animi ullam unde odit! Nobis aut animi quibusdam molestias libero, facere vel cum atque incidunt esse! Libero ipsam praesentium sit, enim corrupti quia nobis obcaecati nostrum voluptatem totam nulla delectus ipsa facilis optio quis iure unde repudiandae voluptas temporibus, ad veritatis dolorem, culpa maiores. Dicta, quod neque.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem inventore perspiciatis alias, magni provident nulla recusandae odio consequatur praesentium officia non voluptate voluptatum debitis consequuntur omnis incidunt fuga eaque sit aliquam nemo. Recusandae voluptatibus excepturi, voluptates inventore nulla aliquid porro a asperiores beatae quas quo incidunt at, cumque minima officiis error eius dignissimos animi ullam unde odit! Nobis aut animi quibusdam molestias libero, facere vel cum atque incidunt esse! Libero ipsam praesentium sit, enim corrupti quia nobis obcaecati nostrum voluptatem totam nulla delectus ipsa facilis optio quis iure unde repudiandae voluptas temporibus, ad veritatis dolorem, culpa maiores. Dicta, quod neque.</p>
			</div>
		</div>
		<div class="tab_wrap" style="display: none;">
			<div class="title">Phòng Ngủ</div>
			<div class="tab_content">
                <section  class="row_bg">     
            <div id="row_bg" class="row_kp">
                <div class="col-kp-1">
            <h1>Mẫu Phòng ngủ<br /> với tông màu hồng đầy cá tính</h1>
            <p>Mã màu RGB: rgb(232, 206, 211)</p>
            <p>Mã màu jotun: BERMUDA PINK(3243)</p>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Xem thêm
            </button>
            <ul class="ul_kp">
                <li class="btnkp active"></li>
                <li class="btnkp"></li>
                <li class="btnkp"></li>
                <li class="btnkp"></li>
                <li class="btnkp"></li>
            </ul>
        </div>
        <div class="col-kp-2">
            <img src="/hinh/k1.jpg"  alt="anh-demo" id="imgbanner"/>        
        </div>    
    </div>
    </section>
			</div>
		</div>
	</div>
</div>

    <!--end----->
    
    <!-- banner2 -->
    
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Chi tiết</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
            <h1>Thiết kế phòng khách màu xanh lá tạo sức sống thiên nhiên trong nhà</h1>
            <p class="p_modal">Thiết kế phòng khách có màu xanh lá cây là một trong những ý tưởng mang lại sự tươi mát của thiên nhiên vào phòng khách. Theo thực tế, màu xanh lá cây là màu của thiên nhiên. Thêm màu xanh vào trong phòng khách của bạn sẽ tạo nên một bầu không khí độc đáo và giữ cho căn phòng cảm giác thoải mái.</p>
            <img src="hinh/x1.jpg" class="modal_img" />
            <p class="p_modal">Có nhiều cách được đưa ra để có thể đưa màu xanh lá vào không gian trong nhà. Một vài người đặt một số loại cây xanh vào phòng khách mà không cần bất kỳ đồ nội thất màu xanh lá cây nào khác, và một số khác làm ngược lại. Với hai mẫu thiết kế sau đây bạn có thể tham khảo cách bày trí cho các món đồ nội thất mang màu xanh lá trẻ trung.</p>
            <img src="hinh/x2.jpg" class="modal_img" />
            <p class="p_modal">Thiết kế phòng khách mang gam màu xanh với thảm họa tiết mang nét thiên nhiên

Phòng khách được sắp đặt với những ghế sofa vuông xanh tạo nét tươi trẻ và ấm áp. Các ghế sofa có thể dễ dàng kết hợp đẹp mắt với những chiếc gối sọc xanh. Phía sau ghế sofa, một cửa sổ kính lớn cho phép bạn thấy được khung cảnh thực sự từ phía khu vườn nhà riêng bạn. Một bầu không khí trông thật là dễ chịu. Chiếc bàn cũng có màu xanh lá, nhưng màu xanh của bàn này là nổi bật và sáng sủa hơn. Điều quan trọng nhất là phải có một cái gì đó được đặt dưới bàn, đó có thể là một tấm thảm. Một tấm thảm mềm mại xanh mang vẻ yên tĩnh với những hình ảnh của lá hoa và cây cỏ. Như vậy sẽ đem lại cái nhìn đẹp của một khu vườn xanh tốt cho căn phòng khách. Sử dụng tấm thảm lớn sẽ bao phủ tất cả khu vực trong căn phòng.

</p>

      </div>
      <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
      </div>
    </div>
  </div>
</div>
    <script>
        var tabs = document.querySelectorAll(".tabs ul li");
        var tab_wraps = document.querySelectorAll(".tab_wrap");

        tabs.forEach(function (tab, tab_index) {
            tab.addEventListener("click", function () {
                tabs.forEach(function (tab) {
                    tab.classList.remove("active");
                })
                tab.classList.add("active");

                tab_wraps.forEach(function (content, content_index) {
                    if (content_index == tab_index) {
                        content.style.display = "block";
                    }
                    else {
                        content.style.display = "none";
                    }
                })

            })
        })
    </script>
</asp:Content>
