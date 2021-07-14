﻿<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="sonnoithat.aspx.cs" Inherits="GUI.customer.trang_chu.sonnoithat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .product-card {
        width: 300px;
        height: 580px;
        position: relative;
        box-shadow: 0 2px 7px #dfdfdf;
        margin: 10px;
        background: #f7f5f3;
    }
        .product-card:hover {
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
        .badge {
            position: absolute;
            left: 0;
            top: 20px;
            text-transform: uppercase;
            font-size: 13px;
            font-weight: 700;
            background: red;
            color: #fff;
            padding: 3px 10px;
        }

    .product-tumb {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 300px;
        padding: 50px;
        background: #fff;
    }

    .product-tumb img {
        max-width: 100%;
        max-height: 100%;
    }

.product-details {
    padding: 30px;
}

.product-catagory {
    display: block;
    font-size: 12px;
    font-weight: 700;
    text-transform: uppercase;
    color: #ccc;
    margin-bottom: 18px;
}

.product-details h4 {
    font-weight: 500;
    display: block;
    font-size: 22px;
    margin-bottom: 18px;
    text-transform: uppercase;
    color: #363636;
    text-decoration: none;
    transition: 0.3s;
}

.product-details h4:hover {
    color: #3742fa;
}

.product-details p {
    font-size: 15px;
    line-height: 22px;
    margin-bottom: 18px;
    color: #999;
}

.product-bottom-details {
    overflow: hidden;
    border-top: 1px solid #eee;
    margin-top: 2rem;
}

.product-bottom-details div {
    float: left;
    width: 50%;
}

.product-price {
    font-size: 20px;
    color: #3742fa;
    font-weight: 600;
}

.product-links {
    text-align: right;
}

.product-links a {
    display: inline-block;
    margin-left: 5px;
    color: #3742fa;
    transition: 0.3s;
    font-size: 17px;
}

.product-links a:hover {
    color: #fbb72c;
}
.column_1{
            width: 100%;
            display: inline-flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            align-content: flex-end;
            flex-wrap: wrap;
        }
    /* Clear float khác sau các cột */
        .row:after {
          content: "";
          display: table;
          clear: both;
        }

/* Bố cục linh hoạt: ba cột xếp chồng lên nhau thay vì cạnh nhau khi màn hình 
có chiều rộng dưới 600px */
      @media screen and (max-width:600px) {
        .column {
            width: 100%;
          }
        }
      .color_nt{
         width: 100%;        
         height: 400px;
         position: relative;
         background-image: url(/hinh/cach.jpg);
         background-size: cover;
         background-attachment: fixed;
         border-radius: 10px;
         margin-top: 10px;
         display: block;
         margin-left: auto;
         margin-right: auto;
      }
      .color_nt .h2_nt{  
          position: absolute;  
          top: 0;
          bottom: 20%;
          left: 50%;
          transform: translate(-50%, 50%);  
          color: #3742fa;
          font-size: 46px;
          line-height: 54px;
          font-weight: 400;
          font-family: "Playfair Display", serif;  
      }
      .color_nt p{
          text-align: center;
          position: absolute;
          top: 0;
          bottom: -18%;
          left: 50%;
          transform: translate(-50%, 50%); 
          font-size: 20px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="color_nt">
        <nav aria-label="breadcrumb" style="margin-top: 1px; width: 380px; border-radius: 15px;">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="../trang-chu/">Trang chủ</a></li>
    <li class="breadcrumb-item"><a href="../trang-chu/sanpham.aspx">Sản phẩm</a></li>
    <li class="breadcrumb-item active" aria-current="page">Sơn nội thất</li>
  </ol>
</nav>
     <h2 class="h2_nt">Sơn Nội Thất</h2>
    <p>Tìm hiểu thông tin chi tiết về các sản phẩm của chúng tôi.</p>
    </section>

    <div class="column_1">
    <asp:Repeater ID="rpt_hienThiSanPham" runat="server">
            <ItemTemplate>                           
                <div class="product-card">
                   
		            <div class="badge">New</div>
		            <div class="product-tumb">
			            <img src="/hinhanh/<%# Eval("HinhAnh") %>" alt="" />
		            </div>
		            <div class="product-details">
			            <span class="product-catagory"><%# Eval("MaSP") %></span>
			            <h4><%# Eval("TenSP") %></h4>
			            <div class="product-bottom-details">
				            <div class="product-price"><%# Eval("DonGia", "{0:000,000}")%></div>
				            <div class="product-links">
					            <a href="../chi-tiet-san-pham/chitietsp.aspx/?masp=<%# Eval("MaSP") %>"><i class="fas fa-plus"></i></a>
					            <a href="#"><i class="fa fa-shopping-cart"></i></a>
				            </div>
			            </div>
		            </div>
	            </div>
            </ItemTemplate>
        </asp:Repeater>
  </div>
</asp:Content>
