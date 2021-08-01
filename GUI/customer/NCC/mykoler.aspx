<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="mykoler.aspx.cs" Inherits="GUI.customer.NCC.mykoler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        .products{
            width: 300px;
            height: 500px;
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
            border-radius: 10px;
            position: relative;
             margin: 1rem;
            transition: 0.3s;
           
        }
        .products:before {
          content: attr(data-card);
          position: absolute;
          top: -15px;
          right: -15px;
          font-size: 6rem;
          font-weight: 800;
          line-height: 1;
          color: #3742fa;
          opacity: 0.025;
        }
        .products:after {
          content: "";
          position: absolute;
          width: 100%;
          height: 0px;
          bottom: 0;
          left: 0;
          background-color: #3742fa;
          transition: 0.3s;
        }
        .products:hover{
            transition: 0.2s;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 50px;
        }
        .products figure{
            width: 250px;
        }
        .products figure img{
            -webkit-transform: scale(1);
	        transform: scale(1);
	        -webkit-transition: .3s ease-in-out;
	        transition: .3s ease-in-out;
            width:  100%;
            height: 300px;
            margin-left: 20px;
            
        }
        .products img:hover{
            -webkit-transform: scale(1.3);
	         transform: scale(1.3);
        }
        .products h2{
            text-align: center;
            font-size: 20px;
            color: #353535;
            
        }
        .products p{
            text-align: center;
            font-size: 18px;
            color: #2ed573;
        }
        .products .btn_pro{
            width: 100px;
            height: 40px;
            background-color: #ff4757;
            margin-left: 38%;
            border-radius: 15px; 
            border: none;
            
        }
        .btn_pro a{
            color: white;   
        }
        .btn_pro:hover{
            background: #22c8e5;
        }
        figure {
	        width: 350px;
	        height: 250px; 
	        margin: 0;
	        padding: 0;
	        background: #fff;
	        overflow: hidden;
        }
        .product_sp{
            width: 100%;
            height: 350px;
            border: 1px solid rgba(100, 100, 111, 0.2);
            margin-top: 5px;   
            background-image: url(/hinh/sơn-phủ-4.jpg); 
            background-size: cover; 
            background-repeat: no-repeat;
            
            background-attachment: fixed;
        }
        .product_sp h1{
            height: 200px;
            text-align: center;     
            line-height: 54px;
            color: #3742fa !important;
            margin-top: 2rem;
            font-style: normal;
            font-weight: 700;
            font-family: Playfair Display;
	        font-size: 45px;
        }
		

        /*gia*/
        .app__container{
	        background: #f5f5f5;
            padding-top: 2px;
        }
       
        .app__content{
	        padding-top: 36px;
        }
        .category{
	        border-radius: 2px;
        }

        .category__heading{
	        font-size: 1.7rem;
	        color:#3742fa;
	       
        }
        .category__heading-icon{
	        font-size: 1.4rem;
	        margin-right: 4px;
        }

        .category-list{
	        list-style: none;
	        margin-left: 5px;   
        }
        .category-item .category-item__link{
            text-decoration: none;
        }
        .catgory-item--active .category-item__link{
	        color: #000;
            text-decoration: none;
        }

      
      .category{
         width: 300px;
      }

      /*layout*/
      .row{
          width: 100%;
      }
      .column {
          float: left;
          width: 280px;
          padding: 15px;
        
          height: 600px;
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
            background: #fbfbfb;
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
      .ha{
          width: 250px;
          background: #f2f2f2;
      }
      /*color*/
      .color-price .color-option{
          display: flex;
          align-items: center;
        }
      .color-price{
          display: flex;
          justify-content: space-between;
          align-items: center;
          margin-top: 10px;
        }
      .color-price .price .price_num{
          font-size: 25px;
          font-weight: 600;
          color: #707070;
        }
     .button-layer a{
          position: absolute;
          height: 50px;
          width: 250px;
          color: #fff;
          background-image: linear-gradient(135deg,#9708CC, #43CBFF );
          transition: all 0.4s ease;
          border-radius: 25px;
          display: flex;
          justify-content: center;
          align-items: center;
          margin-top: 1.5rem;
          margin-left: 25px;
        }

     /*new product*/
       .product-card {
            width: 300px;
            height: 510px;
            position: relative;
            box-shadow: 0 2px 7px #dfdfdf;
            margin: 10px;
            background: #f7f5f3;
            transition: 0.25s ease;
            border-radius: 15px;
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
            max-height: 80%;
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
            font-size: 16px;
            margin-bottom: 18px;
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
        .select_gia{
            width: 200px;
            padding: 8px;
            border: 1px solid rgba(100, 100, 111, 0.2);
        }
        .txt_loc{
            margin-left: -2rem;
        }
        .link_son{
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: -30px;
        }
        .link_son .a1{
            width: 150px;
            height: 50px;
            background: red;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 20px;
            text-decoration: none;
            border-radius: 10px;
            margin-right: 1rem;
        }
        .link_son .a2{
            width: 150px;
            height: 50px;
            background: red;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 20px;
            text-decoration: none;
            border-radius: 10px;
        }
        /*search*/
        .form_ser{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 80px;
            background: #dcd4cd;
        }
        .src{
            width: 400px;
            padding: 14px;
            border: 1px solid rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            outline: none;
        }
        .src:focus{
            border: 1px solid #3742fa;
        }
        .srcbtn{
            width: 100px;
            padding: 13px;
            margin: 6px;
            border: none;
            border-radius: 5px;
            background: #3742fa;
            color: #fff;
        }
        .form_ser{
            height: 100px;
            margin-top: 1rem;
            background: #ade8f4;
        }
        .ncc_ground{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .a3 img{
            width: 150px;
            height: 80px;
            margin-top: 1rem;
            border-radius: 15px;
            margin-right: 30px;
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
    <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
    <%--<li class="breadcrumb-item active" aria-current="page">Data</li>--%>
  </ol>
</nav>
    <div class="product_sp">
        <h1>Các sản phẩm sơn</h1>
        <div class="link_son">
            <a href="../trang-chu/sonnoithat.aspx" class="a1">Sơn Nội Thất</a>
            <a href="../trang-chu/sonngoaithat.aspx" class="a2">Sơn Ngoại Thất</a>
        </div>
    </div>
    
    <div class="ncc_ground">
            <a href="../NCC/dulux.aspx" class="a3">
                <img src="/hinh/ab1.jpg" />
            </a>
            <a href="../NCC/jotun.aspx" class="a3">
                <img src="/hinh/jotun.png" />
            </a>
            <a href="../NCC/nippon.aspx" class="a3">
                <img src="/hinh/nippon-paint-viet-nam.png" />
            </a>
            <a href="../NCC/mykoler.aspx" class="a3">
                <img src="/hinh/about__item__mykolor.jpg" />
            </a>
    </div>
    <div class="form_ser">
        <asp:TextBox ID="TextBox1" CssClass="src" placeholder="Nhập từ khóa tìm kiếm..." runat="server"></asp:TextBox>
        <asp:Button ID="Button1" CssClass="srcbtn" runat="server" Text="Tìm Kiếm" />
    </div>
    <div class="column_1">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="product-card">
		            <div class="badge">New</div>
		            <div class="product-tumb">
			            <img src="/hinhanh/<%# Eval("HinhAnh") %>" alt="">
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
