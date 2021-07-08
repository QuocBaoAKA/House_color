<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="sonngoaithat.aspx.cs" Inherits="GUI.customer.trang_chu.sonngoaithat" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center; margin-top: 1rem; margin-bottom: 1rem; color: #3742fa; font-family: Playfair Display;">Sơn Ngoại Thất</h2>
    <div class="column_1">
    <asp:repeater ID="rpt_ngoaithat" runat="server">
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
    </asp:repeater>
        </div>
</asp:Content>
