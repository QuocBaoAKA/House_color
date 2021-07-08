<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="defaultc.aspx.cs" Inherits="GUI.customer.danh_muc_san_pham.defaultc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="column">
        <h2 style="text-align: center;">Danh Mục</h2>
                     <div id="ha" class="ha" style="background: none;">
						<nav class="category" >
						
							<ul class="category-list">
								<li class="category-item catgory-item--active">
									<a href="#" class="category-item__link">Gang tay phượt</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Mũ bảo hiểm</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Giày leo núi</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Giáp bảo hộ</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Túi đeo chéo</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Khăn chống nắng</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Kính đi phượt </a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Áo đi phượt</a>
								</li>
								<li class="category-item">
									<a href="#" class="category-item__link">Balo đi phượt</a>
								</li>
							</ul>
						</nav>
					</div>
  </div>
  <div class="column_1">
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
              <div class="product-card">
		            <div class="badge">New</div>
		            <div class="product-tumb">
			            <img src="../../public/images/<%# Eval("HinhAnh") %>" alt="">
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
</div>
</asp:Content>
