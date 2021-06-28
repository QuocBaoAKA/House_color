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
             text-transform: uppercase;
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
             text-transform: uppercase;
             font-weight: 500;
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
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="why" class="weare">
         <div class="container">
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
                              <h3>SƠN LẠI NHÀ CŨ CÓ CẦN SƠN LÓT KHÔNG?</h3>
                              <p>Sơn lại nhà cũ có cần sơn lót không? Đây có lẽ là câu hỏi nhận đươc rất nhiều ý</p>
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
                              <h3>SƠN CÁCH NHIỆT CHỐNG NÓNG NÀO TỐT? – TOP 5 HÃNG SƠN ƯA CHUỘNG.</h3>
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
