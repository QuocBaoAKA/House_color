<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="GUI.chitietsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        .card {
        max-width: 1000px;
        width: 100%;
        height: 100%;
        margin: auto;
        margin-top: 1rem;
        padding: 4rem;
        background: #fff;
        z-index: 1;
        color: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
        }

        @media(max-width:768px) {
        .card {
                width: 100%;
                padding: 1.5rem
            }
        }

        .row {
            margin: 0
        }

        .path {
            color: grey;
            margin-bottom: 1rem
        }

        .path a {
            color: #ffffff
        }

        .info {
            padding: 6vh 0vh
        }

        @media(max-width:768px) {
            .info {
                padding: 0
            }
        }

        .checked {
            color: rgb(255, 217, 0);
            margin-right: 1vh
        }

        .fa-star-half-full {
            color: rgb(255, 217, 0)
        }

        img {
            height: fit-content;
            width: 75%;
            padding: 1rem
        }

        @media(max-width:768px) {
            img {
                padding: 2.5rem 0
            }
        }

        .title .col {
            padding: 0
        }

        .fa-heart-o {
            font-size: 2rem;
            color: #ffffff;
            font-weight: lighter
        }

        #reviews {
            margin-left: 3vh;
            color: grey
        }

        .price {
            margin-top: 2rem
        }

        label.radio span {
            padding: 1vh 4vh;
            background-color: rgb(54, 54, 54);
            color: grey;
            display: inline-block;
            margin-right: 2vh
        }

          label.radio input:checked + span {
              border: 1px solid white;
              padding: 1vh 4vh;
              background-color: rgb(54, 54, 54);
              margin-right: 2vh;
              color: #ffffff;
              display: inline-block;
          }

        .lower {
            margin-top: 3rem
        }

        .lower i {
            padding: 2.5vh;
            margin-right: 1vh;
            color: grey;
            border: 1px solid rgb(85, 85, 85)
        }

        .lower .col {
            padding: 0
        }

        @media(max-width:768px) {
            .lower i {
                padding: 2vh;
                margin-right: 1vh;
                color: grey;
                border: 1px solid rgb(85, 85, 85)
            }
        }

.btn {
    background-color: transparent;
    border-color: rgba(186, 216, 125, 0.863);
    color: rgba(186, 216, 125, 0.863);
    padding: 1.8vh 4.5vh;
    height: fit-content;
    border-radius: 3px
}

.btn:focus {
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none
}

.btn:hover {
    color: white
}

@media(max-width:768px) {
    .btn {
        background-color: transparent;
        border-color: rgba(186, 216, 125, 0.863);
        color: rgba(186, 216, 125, 0.863);
        padding: 1vh;
        font-size: 0.9rem;
        height: fit-content;
        border-radius: 3px
    }
}

a {
    color: unset
}

a:hover {
    color: unset;
    text-decoration: none
}

label.radio input {
    position: absolute;
    top: 0;
    left: 0;
    visibility: hidden;
    pointer-events: none
}

label.radio {
    cursor: pointer
}
.detailt_group{
    background: #f9f9f9;
}
    .tab_mota{
        width: 800px;
        margin: auto;
    }
    .tab_mota p{
        font-size: 20px;
    }
    .facebook{
        width: 90%;
        margin: auto;
    }
    .nav-tabs{
        width: 800px;
        margin: auto;
    }
    .tab_group{
        width: 80%;
        margin: auto;
        margin-top: 1rem;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
    }
    .purple-gradient{
        color:  #fff;
        height: 50px;
        background-color: #0026ff;
    }
    .purple-gradient:hover{
        color: #fff;
    }
    
   
    </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0&appId=1035397543626875&autoLogAppEvents=1" nonce="QpDWsGnI"></script>
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>
 <nav aria-label="breadcrumb" style="margin-top: 35px;">
  <ol class="breadcrumb" style="background: none;">
    <li class="breadcrumb-item"><a href="./trang-chu/">Trang chủ</a></li>
    <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
    <li class="breadcrumb-item active" aria-current="page"><%# Eval("sp.TenSP") %></li>
  </ol>
</nav>
    <%--<div class="de_pro">
            <div class="card1">
                 <img src="../../public/images/<%# Eval("sp.HinhAnh") %>" />
                </div>
                    <div class="col-md-6">
                        <div class="product p-4">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center"></div>
                            </div>
                            <div class="mt-4 mb-3"><span class="text-uppercase text-muted brand">Sơn nhà</span>
                                <hr class="sp_hr" />
                                <h5 class="text-uppercase"><p>Tên sản phẩm:</p><%# Eval("sp.TenSP") %></h5>
                                
                                <div class="price d-flex flex-row align-items-center"> <span class="act-price"><%# Eval("sp.DonGia") %> VNĐ</span>
                                    
                                </div>             
                            </div> 
                            <div class="sizes mt-5">
                                <h6 class="sl" >Số lượng</h6>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                               
                            </div>
                         </div>
                    </div>          
                 </div>           
            <div class="card_product">
                            <p class="pf1">Mô tả sản phẩm</p>
                                <%# Eval("sp.MoTa") %>
            </div>--%>
<div class="box">
<section class="detailt_group">
  <div class="container">
    <div id="demo" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card">
                    <div class="row">
                        <div class="col-md-6 text-center align-self-center"> 
                            <img class="img-fluid" src="/hinhanh/<%# Eval("sp.HinhAnh") %>" />

                        </div>
                        <div class="col-md-6 info">
                            <div class="row title">
                                <div class="text">
                                    <h2 style="color: rgb(54, 54, 54);"><%# Eval("sp.TenSP") %></h2>
                                </div>
                                <div class="col text-right"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                            </div>

                            <p style="color: red;">Mã màu: <%# Eval("sp.MaMau") %></p> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star-half-full"></span> <span id="reviews"></span>

                            <div class="row"><%# Eval("sp.DonGia", "{0:000,000} VNĐ ") %></div>      
                    
                   <%-- <div class="row lower">     
                             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <div class="form-inline">
                                            <label for="txt_slMua" style="color: #000000">Số lượng mua:</label>
                                            <asp:TextBox ID="txt_slMua" runat="server" class="ml-2 form-control w-25" type="number" value="1" min="1" max='<%# Eval("sp.SoLuongTon") %>' required></asp:TextBox>
                                        </div>

                                        <%
                                            if (Session["taiKhoan"] == null)
                                            {
                                        %>
                                        <asp:LinkButton ID="LinkButton1" class="mt-3 btn purple-gradient" runat="server" OnClientClick="toastr.error('Vui lòng đăng nhập để mua hàng')">
                                            <i class="fas fa-cart-plus mr-2" style="font-size: 20px; border: none; margin-top: -25px;"></i>Thêm vào giỏ hàng
                                        </asp:LinkButton>
                                        <%
                                            }
                                            else
                                            {
                                        %>                                       
                                     <asp:Button ID="lbtn_muaHang"  runat="server" CommandArgument='<%# Eval("sp.MaSP") %>' CommandName="muaHang" class="mt-3 btn purple-gradient"  OnClick="lbtn_muaHang_Click" OnClientClick="hienThiThongBaoChiTietSP()" Text="Thêm vào giỏ hàng"/>
             
                                        <%
                                            }
                                        %>
                                    </ContentTemplate>
                                </asp:UpdatePanel>       
                        </div>
                        </div>--%>
                    </div>
                </div>
                </div>
            </div>
         </div>
    </div>
</div>
</section>
          <div class="tab_mota">
            <p> <%# Eval("sp.MoTa") %></p>
          </div>
          
          <div class="facebook">
              <h3>Bình luận</h3>
          <div class="fb-comments container" data-href='https://developers.facebook.com/docs/plugins/<%# Eval("sp.MaSP") %>' data-numposts="5" data-width="100%"></div>       
         </div>
    <!----end---->     
         
    </ItemTemplate>
        
        </asp:Repeater>
    <script>
        const cover = document.querySelector(".img-fluid");
        cover.addEventListener("mousemove", function (e) {
            const screenImage = document.querySelector(".screen-image");
            const image = document.querySelector(".img-fluid");
            image.style = "width: auto;height:auto;max-height:unset";

            let imageWidth = image.offsetWidth;
            let imageHeight = image.offsetHeight;
            const screenWidth = screenImage.offsetWidth;
            const screenHeight = screenImage.offsetHeight;
            const spaceX = (imageWidth / 2 - screenWidth) * 2;
            const spaceY = (imageHeight / 2 - screenHeight) * 2;
            imageWidth = imageWidth + spaceX;
            imageHeight = imageHeight + spaceY;

            let x =
              e.pageX - screenImage.offsetParent?.offsetLeft - screenImage.offsetLeft;
            let y = e.pageY - screenImage.offsetParent?.offsetTop - screenImage.offsetTop;

            const positionX = (imageWidth / screenWidth / 2) * x;
            const positionY = (imageHeight / screenHeight / 2) * y;

            image.style = `left: ${-positionX}px;top: ${-positionY}px;width: auto;height:auto;max-height:unset;transform:none;`;
        });

        cover.addEventListener("mouseleave", function (e) {
            const image = document.querySelector(".screen-image__img");
            image.style = '';
        });
    </script>
</asp:Content>
