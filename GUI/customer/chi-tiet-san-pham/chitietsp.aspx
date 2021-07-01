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
            color: #ffffffaf;
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
    </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0&appId=1035397543626875&autoLogAppEvents=1" nonce="QpDWsGnI"></script>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
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
<section class="detailt_group">
  <div class="container">
    <div id="demo" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card">
                    <div class="row">
                        <div class="col-md-6 text-center align-self-center"> 
                            <img class="img-fluid" src="../../../public/images/<%# Eval("sp.HinhAnh") %>" />

                        </div>
                        <div class="col-md-6 info">
                            <div class="row title">
                                <div class="text">
                                    <h2 style="color: rgb(54, 54, 54);"><%# Eval("sp.TenSP") %></h2>
                                </div>
                                <div class="col text-right"><a href="#"><i class="fa fa-heart-o"></i></a></div>
                            </div>
                            <p style="color: red;">Mã màu: <%# Eval("sp.MaMau") %></p> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star checked"></span> <span class="fa fa-star-half-full"></span> <span id="reviews"></span>
                            <div class="row price"> <label class="radio"><input type="radio" style="color: #f2f2f2;" name="size1" value="small" checked><span>         
                                        <div class="row"><%# Eval("sp.DonGia", "{0:000,000} VNĐ ") %></div>
                                    </span> </label> </div>
                        </div>
                    </div>
                    <div class="row lower">
                        <div class="col text-right align-self-center"> <button class="btn" style="color: blue; border: 1px solid red;">Mua Hàng</button> </div>
                    </div>
                </div>
            </div>
         </div>
    </div>
</div>

            <!----end---->     
              <div class="fb-comments container" data-href='https://developers.facebook.com/docs/plugins/<%# Eval("sp.MaSP") %>' data-numposts="5" data-width="100%"></div>       
           </section> 
    </ItemTemplate>
        
        </asp:Repeater>
</asp:Content>
