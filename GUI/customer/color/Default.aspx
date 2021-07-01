<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.color.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Color</title>
    <style>
        .media-color{
           width: 120px;
           height: 80px;
           border-top-left-radius: 10px;
           border-bottom-right-radius: 10px;
           margin-left: 5px;
        }
        .carousel-control-prev i{
           color: red !important;
           font-size: 18px;

        }
        .carousel-control-next i{
           color: red !important;
           font-size: 18px;

        }
        .section_media{
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin: 40px auto;
            overflow-x: hidden;
        }
        .section_media ul{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            margin-bottom: 20px;

        }
        .section_media ul li{
            list-style: none;
            background: #eee;
            padding: 12px 20px;
            margin: 5px;
            letter-spacing: 1px;
            cursor: pointer;
            border-radius: 20px;
        }
        .section_media ul li.active{
            background: #03a9f4;
            color: white;
        }
        .product_color{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            height: 100%;
        }
        .product_color .itembox{
            position: relative;
            width: 300px;
            height: 200px;
            margin: 5px;
            
        }
        .product_color .itembox.hide{
            display: none;
        }
        .product_color .itembox img{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        /*modal*/
        .modal-body {
        background-color: #fff;
        border-color: #fff
    }

        .close {
            color: #000;
            cursor: pointer
        }

.close:hover {
    color: #000
}

.theme-color {
    color: #004cb9
}

hr.new1 {
    border-top: 2px dashed #fff;
    margin: 0.4rem 0
}

.btn-primary {
    color: #fff;
    background-color: #004cb9;
    border-color: #004cb9;
    padding: 12px;
    padding-right: 30px;
    padding-left: 30px;
    border-radius: 1px;
    font-size: 17px
}

.btn-primary:hover {
    color: #fff;
    background-color: #004cb9;
    border-color: #004cb9;
    padding: 12px;
    padding-right: 30px;
    padding-left: 30px;
    border-radius: 1px;
    font-size: 17px
}
.backg{
    background: #594b3f;
    width: 100%;
    height: 300px;
    border-radius: 5px;
}
#image-gallery .modal-footer{
  display: block;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background: url(https://aats3-f20c7c9531544cda9e01e2d01c48e39-public.s3-eu-west-1.amazonaws.com/fc-squircle/dulux-colour-futures-colour-of-the-year-2021-livingroom-inspiration-global-0kv.jpg)" class="jumbotron bg-cover text-white">
    <div class="container py-5 text-center">
        <p>Màu của Năm 2021</p>
        <h1 class="display-4 font-weight-bold">Nâu Quả Cám</h1>
        <p class="font-italic mb-0">Năm nay, chúng tôi chọn ra Màu Của Năm có tông trung tính. Nâu Quả Cảm là một màu ấm áp,cân bằng, kết nối chúng ta về với thiên nhiên và những điều giản dị. Sắc Nâu còn có tính nâng đỡ, thúc đẩy sự ổn định, phát triển, tiếp thêm cho ta can đảm để đương đầu với đổi thay.</p>
        <br />
        <a href="#" role="button" class="btn btn-primary px-5">Tìm Hiểu Thêm</a>
    </div>
</div>
    <h2 style="text-align: center; color: #333333; font-size: 30px;">Hãy khám phá 4 bảng màu mới để tạo sự biến <br /> đổi linh hoạt cho căn phòng của bạn</h2>
    <!---carousel--->
    <section class="pb-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-xl-8 mx-auto">
                <div class="p-5 bg-white shadow rounded">
                    <!-- Bootstrap carousel-->
                    <div class="carousel slide" id="carouselExampleIndicators" data-ride="carousel">
                        <!-- Bootstrap carousel indicators [nav] -->
                        <ol class="carousel-indicators mb-0">
                            <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                        </ol>
                        <!-- Bootstrap inner [slides]-->
                        <div class="carousel-inner px-5 pb-4">
                            <!-- Carousel slide-->
                            <div class="carousel-item active">
                                <h3 style="font-size: 24px; color: #9d8e7e; font-weight: 600; font-family: 'Lobster', cursive; line-height: 33px; text-align: center; margin-bottom: 1rem;">#1 Màu tin cậy</h3>
                                <div class="media" style="margin-bottom: 6px;">           
                                    <div class="media-color" data-toggle="modal" data-target="#staticBackdrop" style="background: #594b3f;">      
                                    </div>
                                    <div class="media-color" data-toggle="modal" data-target="#staticBackdrop1" style="background: #6a4a3e;">      
                                    </div>
                                    <div class="media-color" data-toggle="modal" data-target="#staticBackdrop2" style="background: #9d8e7e;">      
                                    </div>
                                    <div class="media-color" data-toggle="modal" data-target="#staticBackdrop3" style="background: #c0b4ab;">      
                                    </div>
                                    <div class="media-color" data-toggle="modal" data-target="#staticBackdrop4" style="background: #c9cbc9;">      
                                    </div>
                                </div>
                                <div class="media">           
                                    <div class="media-color" style="background: #8d6e5a;">      
                                    </div>
                                    <div class="media-color" style="background: #9e9890;">      
                                    </div>
                                    <div class="media-color" style="background: #796c61;">      
                                    </div>
                                    <div class="media-color" style="background: #cbc4b8;">      
                                    </div>
                                    <div class="media-color" style="background: #dfdad5;">      
                                    </div>
                                </div>
                            </div>

                            <!-- Carousel slide-->
                            <div class="carousel-item">
                                   <h3 style="font-size: 24px; color: #9d8e7e; font-weight: 600; font-family: 'Lobster', cursive; line-height: 33px; text-align: center; margin-bottom: 1rem;">#2 Màu cảm xúc</h3>
                                   <div class="media" style="margin-bottom: 6px;">           
                                    <div class="media-color" style="background: #ae5367;">      
                                    </div>
                                    <div class="media-color" style="background: #AD6368;">      
                                    </div>
                                    <div class="media-color" style="background: #c9b9c9;">      
                                    </div>
                                    <div class="media-color" style="background: #c5aa9b;">      
                                    </div>
                                    <div class="media-color" style="background: #e3dad6;">      
                                    </div>
                                </div>
                                <div class="media">           
                                    <div class="media-color" style="background: #c15a57;">      
                                    </div>
                                    <div class="media-color" style="background: #9a4cac;">      
                                    </div>
                                    <div class="media-color" style="background: #c49f9a;">      
                                    </div>
                                    <div class="media-color" style="background: #9d8e7e;">      
                                    </div>
                                    <div class="media-color" style="background: #dbcfd0;">      
                                    </div>
                                </div>
                                
                            </div>

                            <!-- Carousel slide-->
                            <div class="carousel-item">
                                <h3 style="font-size: 24px; color: #9d8e7e; font-weight: 600; font-family: 'Lobster', cursive; line-height: 33px; text-align: center; margin-bottom: 1rem;">#3 Màu vĩnh cửu</h3>
                                   <div class="media" style="margin-bottom: 6px;">           
                                    <div class="media-color" style="background: #c19659;">      
                                    </div>
                                    <div class="media-color" style="background: #9e7043;">      
                                    </div>
                                    <div class="media-color" style="background: #9d8e7e;">      
                                    </div>
                                    <div class="media-color" style="background: #d4e8ce;">      
                                    </div>
                                    <div class="media-color" style="background: #dcd1c0;">      
                                    </div>
                                </div>
                                <div class="media">           
                                    <div class="media-color" style="background: #976856;">      
                                    </div>
                                    <div class="media-color" style="background: #a38061;">      
                                    </div>
                                    <div class="media-color" style="background: #d4b773;">      
                                    </div>
                                    <div class="media-color" style="background: #c4b591;">      
                                    </div>
                                    <div class="media-color" style="background: #dddcd3;">      
                                    </div>
                                </div>
                             </div>
                            <div class="carousel-item">
                                <h3 style="font-size: 24px; color: #9d8e7e; font-weight: 600; line-height: 33px; text-align: center; margin-bottom: 1rem; font-family: 'Lobster', cursive;">#3 Màu đất</h3>
                                   <div class="media" style="margin-bottom: 6px;">           
                                    <div class="media-color" style="background: #343639;">      
                                    </div>
                                    <div class="media-color" style="background: #6d837d;">      
                                    </div>
                                    <div class="media-color" style="background: #b0c4d3;">      
                                    </div>
                                    <div class="media-color" style="background: #9d8e7e;">      
                                    </div>
                                    <div class="media-color" style="background: #b8c7cc;">      
                                    </div>
                                </div>
                                <div class="media">           
                                    <div class="media-color" style="background: #3a5267;">      
                                    </div>
                                    <div class="media-color" style="background: #445a66;">      
                                    </div>
                                    <div class="media-color" style="background: #819bb4;">      
                                    </div>
                                    <div class="media-color" style="background: #aab2b8;">      
                                    </div>
                                    <div class="media-color" style="background: #bdc3b9;">      
                                    </div>
                                </div>
                        </div>

                        <!-- Bootstrap controls [dots]-->
                        <a class="carousel-control-prev width-auto" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <i class="fa fa-angle-left text-dark text-lg"></i>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next width-auto" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <i class="fa fa-angle-right text-dark text-lg"></i>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
    <section class="section_media">
        <ul>
            <li class="list active" data-filter="all">Tất cả</li>
            <li class="list" data-filter="bep">Phòng Bếp</li>
            <li class="list" data-filter="khach">Phòng Khách</li>
            <li class="list" data-filter="ngu">Phòng Ngủ</li>
            <li class="list" data-filter="lamviec">Phòng Làm Việc</li>
        </ul>
        <div class="product_color">
            
            <div class="itembox" data-item="bep">
                <a class="thumbnail" href="#" data-image="../../public/hinh/bep2.jpg" <%--data-lightbox="photos"--%> data-toggle="modal"  data-target="#image-gallery">
                <img class="thumbnail" src="../../public/hinh/bep2.jpg" /></a>
                </div>
            <div class="itembox" data-item="bep">
                <a href="../../public/hinh/bep3.jpg" data-lightbox="photos">
                <img src="../../public/hinh/bep3.jpg" /></a>
                </div>
            <div class="itembox" data-item="bep">
                <a href="../../public/hinh/bep4.jpg" data-lightbox="photos">
                <img src="../../public/hinh/bep4.jpg" /></a>
            </div>
            <div class="itembox" data-item="bep">
                <img src="../../public/hinh/bep5.jpg" />
            </div>
            <div class="itembox" data-item="bep">
                <img src="../../public/hinh/bep1.jpg" />
            </div>
        <!---khach--->
           <div class="itembox" data-item="khach">
                <img src="../../public/hinh/khach1.jpg" />
                </div>
            <div class="itembox" data-item="khach">
                <img src="../../public/hinh/khach7.jpg" />
                </div>
            <div class="itembox" data-item="khach">
                <img src="../../public/hinh/khach3.jpg" />
            </div>
            <div class="itembox" data-item="khach">
                <img src="../../public/hinh/khach8.jpg" />
            </div>
            <div class="itembox" data-item="khach">
                <img src="../../public/hinh/khach5.jpg" />
            </div>
            <!---ngu--->
            <div class="itembox" data-item="ngu">
                <img src="../../public/hinh/ngu7.jpg" />
                </div>
            <div class="itembox" data-item="ngu">
                <img src="../../public/hinh/phong7.jpg" />
                </div>
            <div class="itembox" data-item="ngu">
                <img src="../../public/hinh/ngu4.jpg" />
            </div>
            <div class="itembox" data-item="ngu">
                <img src="../../public/hinh/ngu5.jpg" />
            </div>
            <div class="itembox" data-item="ngu">
                <img src="../../public/hinh/ngu6.jpg" />
            </div>
            <!---phong lamviec---->
            <div class="itembox" data-item="lamviec">
                <img src="../../public/hinh/lamviec1.jpg" />
            </div>
            <div class="itembox" data-item="lamviec">
                <img src="../../public/hinh/lamviec2.jpg" />
            </div>
        </div>
    </section>

    <!---modal--->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fas fa-times close" data-dismiss="modal"></i> </div>
                <div class="px-4 py-5">
                    <h5 class="text-uppercase text-center">Màu tin cậy</h5>
                    <div class="backg">
                        <p style="font-size: 18px; color: #fff;">Slate Brown (Nâu đá phiến)</p>
                    </div>
                    <p style="text-align: center; font-size: 16px; color: #1161ed;">#594B3F</p>
                    <div class="text-center mt-5"> <button class="btn btn-primary">Sản phẩm cùng mã màu</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!---modal2---->
    <div class="modal fade" id="staticBackdrop1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fas fa-times close" data-dismiss="modal"></i> </div>
                <div class="px-4 py-5">
                    <h5 class="text-uppercase text-center">Màu tin cậy</h5>
                    <div class="backg" style="background: #6A4A3E; ">
                        <p style="font-size: 18px; color: #fff;">Tobacco Brown</p>
                    </div>
                    <p style="text-align: center; font-size: 16px; color: #1161ed;">#6A4A3E</p>
                    <div class="text-center mt-5"> <button class="btn btn-primary">Sản phẩm cùng mã màu</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!---modal3---->
    <div class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fas fa-times close" data-dismiss="modal"></i> </div>
                <div class="px-4 py-5">
                    <h5 class="text-uppercase text-center">Màu tin cậy</h5>
                    <div class="backg" style="background: #9D8E7E;">
                        <p style="font-size: 18px; color: #fff;">Brave Ground</p>
                    </div>
                    <p style="text-align: center; font-size: 16px; color: #1161ed;">#9D8E7E</p>
                    <div class="text-center mt-5"> <button class="btn btn-primary">Sản phẩm cùng mã màu</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!---modal4---->
    <div class="modal fade" id="staticBackdrop3" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fas fa-times close" data-dismiss="modal"></i> </div>
                <div class="px-4 py-5">
                    <h5 class="text-uppercase text-center">Màu tin cậy</h5>
                    <div class="backg" style="background: #C0B4AB;">
                        <p style="font-size: 18px; color: #fff;">Light Taupe</p>
                    </div>
                    <p style="text-align: center; font-size: 16px; color: #1161ed;">#C0B4AB</p>
                    <div class="text-center mt-5"> <button class="btn btn-primary">Sản phẩm cùng mã màu</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!---modal5---->
    <div class="modal fade" id="staticBackdrop4" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body ">
                <div class="text-right"> <i class="fas fa-times close" data-dismiss="modal"></i> </div>
                <div class="px-4 py-5">
                    <h5 class="text-uppercase text-center">Màu tin cậy</h5>
                    <div class="backg" style="background: #C9CBC9;">
                        <p style="font-size: 18px; color: #ccc;">Silver Quill</p>
                    </div>
                    <p style="text-align: center; font-size: 16px; color: #1161ed;">#C9CBC9</p>
                    <div class="text-center mt-5"> <button class="btn btn-primary">Sản phẩm cùng mã màu</button> </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <!---end---->
    <script>
        let list = document.querySelectorAll('.list');
        let itembox = document.querySelectorAll('.itembox');
        for(let i = 0; i <list.length; i++){
            list[i].addEventListener('click', function () {
                for (let j = 0; j < list.length; j++) {
                    list[j].classList.remove(
                        'active');
                }
                this.classList.add('active');

                let dataFilter = this.getAttribute('data-filter');
                for (let k = 0; k < itembox.length; k++) {
                    itembox[k].classList.remove('active');
                    itembox[k].classList.add('hide');

                    if (itembox[k].getAttribute('data-item') == dataFilter || dataFilter == "all") {
                        itembox[k].classList.remove('hide');
                        itembox[k].classList.add('active');
                    }
                }
            })
        }
    </script>
</asp:Content>
