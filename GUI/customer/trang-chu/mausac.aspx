<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="mausac.aspx.cs" Inherits="GUI.customer.trang_chu.mausac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .card_color_group{
            width: 80%;
            height: 100%;
            background: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: auto;
            margin-top: 5rem;
            margin-bottom: 5rem;
        }
        .card_color > h1{
            text-align: center;
            font-size: 22px;
            
        }
        .btn1{
            width: 150px;
            height: 80px;
            background: red;
            border: none;
            color: white;
            margin-left: 5rem;
            margin-top: 0.5rem;
            transition: transform .2s;
            margin-right: 4px;
            margin-bottom: 1rem;
            outline: none;
        }
        .btn1:hover{
            
            transform: scale(1.3);
        }
        .btn2{
            width: 150px;
            height: 80px;
            background: #10EB11;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn2:hover{
            
            transform: scale(1.3);
        }
        .btn3{
            width: 150px;
            height: 80px;
            background:#10A2E6;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn3:hover{
            
            transform: scale(1.3);
        }
        .btn4{
            width: 150px;
            height: 80px;
            background: #9811F0;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn4:hover{
            
            transform: scale(1.3);
        }
        .btn5{
            width: 150px;
            height: 80px;
            background: #F0F911;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn5:hover{
            
            transform: scale(1.3);
        }
        .btn6{
            width: 150px;
            height: 80px;
            background:#FFFFF3;
            border: none;
            color: black;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn6:hover{
            transform: scale(1.3);
        }
        .btn7{
            width: 150px;
            height: 80px;
            background: #C7C7BD;
            border: none;
            color: white;
            transition: transform .1s;
            margin-right: 4px;
        }
        .btn7:hover{
            
            transform: scale(1.3);
        }
        /*image_header*/
        .content-block{
          background:transparent no-repeat center center fixed;
          -webkit-background-size:100%;
          -moz-background-size:100%;
          -o-background-size:100%;
          background-size:100%;
          background-size:cover;
          -webkit-background-size:cover;
          -moz-background-size:cover;
          -o-background-size:cover;
          overflow:hidden;
          padding: 60px 0;
        }
        .parallax{
          padding: 80px 0;
        }

        .block-body {
          margin-top: 60px;
        }

        #header {
          background-image: url(/hinh/clll.jpg);
          box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.2);
          height: 450px;
        }
        #services {
            background:white;
        }
        .slogan h1{
            text-align: center;
            color: white;
            font-size: 60px;
            font-family: Playfair Display , serif;
        }
        .secondary-slogan{
            text-align: center;
            color: white;
            font-size: 20px;
            font-family: ource Sans Pro;
            line-height: 24px;
        }
        .icon-slogan i{
            margin-left: 780px;
            margin-top: 5rem;
            color: white;
            font-size: 3em;
            animation: 2.5s ease 0s infinite normal none running bounce;
            position: absolute;
            z-index: 2;
        }
         .icon-slogan i:hover{
             color: #2ecc71;
         }
         .card_color_group{
            width: 80%;
            height: 100%;
            background: white;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            margin: auto;
            margin-top: 5rem;
        }
         .color_gruop{
             display: flex;
             flex-direction: row;
         }
         .color_a1{
             width: 170px;
             height: 100px;
             background: rgb(249, 223, 226);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a2{
             width: 170px;
             height: 100px;
             margin-right: 10px;
             background: rgb(248, 204, 207);
             border-radius: 10px;
         }
         .color_a3{
             width: 170px;
             height: 100px;
             background: rgb(249, 209, 209);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a4{
             width: 170px;
             height: 100px;
             background: rgb(250, 216, 205);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a5{
             width: 170px;
             height: 100px;
             background: rgb(248, 200, 209);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a6{
             width: 170px;
             height: 100px;
             background: rgb(243, 186, 191);
             margin-right: 10px;
             border-radius: 10px;
         }
         .color_a7{
             width: 170px;
             height: 100px;
             border-radius: 10px;
             margin-right: 10px;
         }
         /*css cửa sổ nổi*/
        /*color_product*/
        .color_pro{
            display: inline-flex;
           
        }
        .color_pr{
            width: 350px;
            height: 350px;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            background-color: #fff;
            margin: 1rem;
            margin-top: 2rem;
            margin-bottom: 2rem;
            transition: all .2s ease-in-out;
        }
        .color_pr:hover {
            
            box-shadow: rgba(17, 12, 46, 0.15) 0px 48px 100px 0px;
            transform: scale(1.025);
            z-index: 2;
        }
        .color_pr img{
            width: 350px;
            height: 250px;
        }
        .color_pr a p{
            text-align: center;
            margin-top: 1rem;
            font-size: 18px;
            line-height: 24px;
            color: #363740;
        }
        .color_pr  a p:hover{
            color: #1e90ff;
        }
        /*bảng màu*/
        .container_color {
          min-height: 100%;
          display: flex;
          align-items: center;
          justify-content: center;
          flex-direction: column;
          background: #e8e8f3;
}

        .logo_h {
          margin: 20px;
          color: #969595;
          font-size: 40px;
        }

.palette {
  width: auto;
  height: auto;
  max-width: 770px;
  background: #e8e8f3;
  position: relative;
  padding: 10px;
  border-radius: 10px;
  margin: 40px;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
}

.palette-name {
  position: absolute;
  right: 40px;
  bottom: 50px;
  font-size: 25px;
  color: #969595;
}

.a_palette_color {
  width: 70px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.a_palette_color:nth-child(20n + 1) {
  background-color: #55efc4;
}

.a_palette_color:nth-child(20n + 2) {
  background-color: #81ecec;
}

.a_palette_color:nth-child(20n + 3) {
  background-color: #74b9ff;
}

.a_palette_color:nth-child(20n + 4) {
  background-color: #a29bfe;
}

.a_palette_color:nth-child(20n + 5) {
  background-color: #dfe6e9;
}

.a_palette_color:nth-child(20n + 6) {
  background-color: #b2bec3;
}

.a_palette_color:nth-child(20n + 7) {
  background-color: #6c5ce7;
}

.a_palette_color:nth-child(20n + 8) {
  background-color: #0984e3;
}

.a_palette_color:nth-child(20n + 9) {
  background-color: #00cec9;
}

.a_palette_color:nth-child(20n + 10) {
  background-color: #00b894;
}

.a_palette_color:nth-child(20n + 11) {
  background-color: #ffeaa7;
}

.a_palette_color:nth-child(20n + 12) {
  background-color: #fab1a0;
}

.a_palette_color:nth-child(20n + 13) {
  background-color: #ff7675;
}

.a_palette_color:nth-child(20n + 14) {
  background-color: #fd79a8;
}

.a_palette_color:nth-child(20n + 15) {
  background-color: #636e72;
}

.a_palette_color:nth-child(20n + 16) {
  background-color: #2d3436;
}

.a_palette_color:nth-child(20n + 17) {
  background-color: #e84393;
}

.a_palette_color:nth-child(20n + 18) {
  background-color: #d63031;
}

.a_palette_color:nth-child(20n + 19) {
  background-color: #e17055;
}

.a_palette_color:nth-child(20n + 20) {
  background-color: #fdcb6e;
}

/* Aussie Pallete */

.au_palette_color {
  width: 70px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.au_palette_color:nth-child(20n + 1) {
  background-color: #f6e58d;
}

.au_palette_color:nth-child(20n + 2) {
  background-color: #ffbe76;
}

.au_palette_color:nth-child(20n + 3) {
  background-color: #ff7979;
}

.au_palette_color:nth-child(20n + 4) {
  background-color: #badc58;
}

.au_palette_color:nth-child(20n + 5) {
  background-color: #dff9fb;
}

.au_palette_color:nth-child(20n + 6) {
  background-color: #c7ecee;
}

.au_palette_color:nth-child(20n + 7) {
  background-color: #6ab04c;
}

.au_palette_color:nth-child(20n + 8) {
  background-color: #eb4d4b;
}

.au_palette_color:nth-child(20n + 9) {
  background-color: #f0932b;
}

.au_palette_color:nth-child(20n + 10) {
  background-color: #f9ca24;
}

.au_palette_color:nth-child(20n + 11) {
  background-color: #7ed6df;
}

.au_palette_color:nth-child(20n + 12) {
  background-color: #e056fd;
}

.au_palette_color:nth-child(20n + 13) {
  background-color: #686de0;
}

.au_palette_color:nth-child(20n + 14) {
  background-color: #30336b;
}

.au_palette_color:nth-child(20n + 15) {
  background-color: #95afc0;
}

.au_palette_color:nth-child(20n + 16) {
  background-color: #535c68;
}

.au_palette_color:nth-child(20n + 17) {
  background-color: #130f40;
}

.au_palette_color:nth-child(20n + 18) {
  background-color: #4834d4;
}

.au_palette_color:nth-child(20n + 19) {
  background-color: #be2edd;
}

.au_palette_color:nth-child(20n + 20) {
  background-color: #22a6b3;
}

/* British Pallete */

.br_palette_color {
  width: 70px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.br_palette_color:nth-child(20n + 1) {
  background-color: #00a8ff;
}

.br_palette_color:nth-child(20n + 2) {
  background-color: #9c88ff;
}

.br_palette_color:nth-child(20n + 3) {
  background-color: #fbc531;
}

.br_palette_color:nth-child(20n + 4) {
  background-color: #4cd137;
}

.br_palette_color:nth-child(20n + 5) {
  background-color: #487eb0;
}

.br_palette_color:nth-child(20n + 6) {
  background-color: #40739e;
}

.br_palette_color:nth-child(20n + 7) {
  background-color: #44bd32;
}

.br_palette_color:nth-child(20n + 8) {
  background-color: #e1b12c;
}

.br_palette_color:nth-child(20n + 9) {
  background-color: #8c7ae6;
}

.br_palette_color:nth-child(20n + 10) {
  background-color: #0097e6;
}

.br_palette_color:nth-child(20n + 11) {
  background-color: #e84118;
}

.br_palette_color:nth-child(20n + 12) {
  background-color: #f5f6fa;
}

.br_palette_color:nth-child(20n + 13) {
  background-color: #7f8fa6;
}

.br_palette_color:nth-child(20n + 14) {
  background-color: #273c75;
}

.br_palette_color:nth-child(20n + 15) {
  background-color: #353b48;
}

.br_palette_color:nth-child(20n + 16) {
  background-color: #2f3640;
}

.br_palette_color:nth-child(20n + 17) {
  background-color: #192a56;
}

.br_palette_color:nth-child(20n + 18) {
  background-color: #718093;
}

.br_palette_color:nth-child(20n + 19) {
  background-color: #dcdde1;
}

.br_palette_color:nth-child(20n + 20) {
  background-color: #c23616;
}

/* Canadian Pallete */

.ca_palette_color {
  width: 70px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.ca_palette_color:nth-child(20n + 1) {
  background-color: #ff9ff3;
}

.ca_palette_color:nth-child(20n + 2) {
  background-color: #feca57;
}

.ca_palette_color:nth-child(20n + 3) {
  background-color: #ff6b6b;
}

.ca_palette_color:nth-child(20n + 4) {
  background-color: #48dbfb;
}

.ca_palette_color:nth-child(20n + 5) {
  background-color: #1dd1a1;
}

.ca_palette_color:nth-child(20n + 6) {
  background-color: #10ac84;
}

.ca_palette_color:nth-child(20n + 7) {
  background-color: #0abde3;
}

.ca_palette_color:nth-child(20n + 8) {
  background-color: #ee5253;
}

.ca_palette_color:nth-child(20n + 9) {
  background-color: #ff9f43;
}

.ca_palette_color:nth-child(20n + 10) {
  background-color: #f368e0;
}

.ca_palette_color:nth-child(20n + 11) {
  background-color: #00d2d3;
}

.ca_palette_color:nth-child(20n + 12) {
  background-color: #54a0ff;
}

.ca_palette_color:nth-child(20n + 13) {
  background-color: #5f27cd;
}

.ca_palette_color:nth-child(20n + 14) {
  background-color: #c8d6e5;
}

.ca_palette_color:nth-child(20n + 15) {
  background-color: #576574;
}

.ca_palette_color:nth-child(20n + 16) {
  background-color: #222f3e;
}

.ca_palette_color:nth-child(20n + 17) {
  background-color: #8395a7;
}

.ca_palette_color:nth-child(20n + 18) {
  background-color: #341f97;
}

.ca_palette_color:nth-child(20n + 19) {
  background-color: #2e86de;
}

.ca_palette_color:nth-child(20n + 20) {
  background-color: #01a3a4;
}

/* Chinese Pallete */

.chi_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.chi_palette_color:nth-child(20n + 1) {
  background-color: #eccc68;
}

.chi_palette_color:nth-child(20n + 2) {
  background-color: #ff7f50;
}

.chi_palette_color:nth-child(20n + 3) {
  background-color: #ff6b81;
}

.chi_palette_color:nth-child(20n + 4) {
  background-color: #a4b0be;
}

.chi_palette_color:nth-child(20n + 5) {
  background-color: #57606f;
}

.chi_palette_color:nth-child(20n + 6) {
  background-color: #2f3542;
}

.chi_palette_color:nth-child(20n + 7) {
  background-color: #747d8c;
}

.chi_palette_color:nth-child(20n + 8) {
  background-color: #ff4757;
}

.chi_palette_color:nth-child(20n + 9) {
  background-color: #ff6348;
}

.chi_palette_color:nth-child(20n + 10) {
  background-color: #ffa502;
}

.chi_palette_color:nth-child(20n + 11) {
  background-color: #7bed9f;
}

.chi_palette_color:nth-child(20n + 12) {
  background-color: #70a1ff;
}

.chi_palette_color:nth-child(20n + 13) {
  background-color: #5352ed;
}

.chi_palette_color:nth-child(20n + 14) {
  background-color: #ffffff;
}

.chi_palette_color:nth-child(20n + 15) {
  background-color: #dfe4ea;
}

.chi_palette_color:nth-child(20n + 16) {
  background-color: #ced6e0;
}

.chi_palette_color:nth-child(20n + 17) {
  background-color: #f1f2f6;
}

.chi_palette_color:nth-child(20n + 18) {
  background-color: #3742fa;
}

.chi_palette_color:nth-child(20n + 19) {
  background-color: #1e90ff;
}

.chi_palette_color:nth-child(20n + 20) {
  background-color: #2ed573;
}

/* Dutch Pallete */

.du_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.du_palette_color:nth-child(20n + 1) {
  background-color: #ffc312;
}

.du_palette_color:nth-child(20n + 2) {
  background-color: #c4e538;
}

.du_palette_color:nth-child(20n + 3) {
  background-color: #12cbc4;
}

.du_palette_color:nth-child(20n + 4) {
  background-color: #fda7df;
}

.du_palette_color:nth-child(20n + 5) {
  background-color: #ed4c67;
}

.du_palette_color:nth-child(20n + 6) {
  background-color: #b53471;
}

.du_palette_color:nth-child(20n + 7) {
  background-color: #d980fa;
}

.du_palette_color:nth-child(20n + 8) {
  background-color: #1289a7;
}

.du_palette_color:nth-child(20n + 9) {
  background-color: #a3cb38;
}

.du_palette_color:nth-child(20n + 10) {
  background-color: #f79f1f;
}

.du_palette_color:nth-child(20n + 11) {
  background-color: #ee5a24;
}

.du_palette_color:nth-child(20n + 12) {
  background-color: #009432;
}

.du_palette_color:nth-child(20n + 13) {
  background-color: #0652dd;
}

.du_palette_color:nth-child(20n + 14) {
  background-color: #9980fa;
}

.du_palette_color:nth-child(20n + 15) {
  background-color: #833471;
}

.du_palette_color:nth-child(20n + 16) {
  background-color: #6f1e51;
}

.du_palette_color:nth-child(20n + 17) {
  background-color: #5758bb;
}

.du_palette_color:nth-child(20n + 18) {
  background-color: #1b1464;
}

.du_palette_color:nth-child(20n + 19) {
  background-color: #006266;
}

.du_palette_color:nth-child(20n + 20) {
  background-color: #ea2027;
}

/* French Pallete */

.fr_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.fr_palette_color:nth-child(20n + 1) {
  background-color: #fad390;
}

.fr_palette_color:nth-child(20n + 2) {
  background-color: #f8c291;
}

.fr_palette_color:nth-child(20n + 3) {
  background-color: #6a89cc;
}

.fr_palette_color:nth-child(20n + 4) {
  background-color: #82ccdd;
}

.fr_palette_color:nth-child(20n + 5) {
  background-color: #b8e994;
}

.fr_palette_color:nth-child(20n + 6) {
  background-color: #78e08f;
}

.fr_palette_color:nth-child(20n + 7) {
  background-color: #60a3bc;
}

.fr_palette_color:nth-child(20n + 8) {
  background-color: #4a69bd;
}

.fr_palette_color:nth-child(20n + 9) {
  background-color: #e55039;
}

.fr_palette_color:nth-child(20n + 10) {
  background-color: #f6b93b;
}

.fr_palette_color:nth-child(20n + 11) {
  background-color: #fa983a;
}

.fr_palette_color:nth-child(20n + 12) {
  background-color: #eb2f06;
}

.fr_palette_color:nth-child(20n + 13) {
  background-color: #1e3799;
}

.fr_palette_color:nth-child(20n + 14) {
  background-color: #3c6382;
}

.fr_palette_color:nth-child(20n + 15) {
  background-color: #38ada9;
}

.fr_palette_color:nth-child(20n + 16) {
  background-color: #079992;
}

.fr_palette_color:nth-child(20n + 17) {
  background-color: #0a3d62;
}

.fr_palette_color:nth-child(20n + 18) {
  background-color: #0c2461;
}

.fr_palette_color:nth-child(20n + 19) {
  background-color: #b71540;
}

.fr_palette_color:nth-child(20n + 20) {
  background-color: #e58e26;
}

/* German Pallete */

.ger_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.ger_palette_color:nth-child(20n + 1) {
  background-color: #fc5c65;
}

.ger__palette_color:nth-child(20n + 2) {
  background-color: #fd9644;
}

.ger_palette_color:nth-child(20n + 3) {
  background-color: #fed330;
}

.ger_palette_color:nth-child(20n + 4) {
  background-color: #26de81;
}

.ger_palette_color:nth-child(20n + 5) {
  background-color: #2bcbba;
}

.ger_palette_color:nth-child(20n + 6) {
  background-color: #0fb9b1;
}

.ger_palette_color:nth-child(20n + 7) {
  background-color: #20bf6b;
}

.ger_palette_color:nth-child(20n + 8) {
  background-color: #f7b731;
}

.ger_palette_color:nth-child(20n + 9) {
  background-color: #fa8231;
}

.ger_palette_color:nth-child(20n + 10) {
  background-color: #eb3b5a;
}

.ger_palette_color:nth-child(20n + 11) {
  background-color: #45aaf2;
}

.ger_palette_color:nth-child(20n + 12) {
  background-color: #4b7bec;
}

.ger_palette_color:nth-child(20n + 13) {
  background-color: #a55eea;
}

.ger_palette_color:nth-child(20n + 14) {
  background-color: #d1d8e0;
}

.ger_palette_color:nth-child(20n + 15) {
  background-color: #778ca3;
}

.ger_palette_color:nth-child(20n + 16) {
  background-color: #4b6584;
}

.ger_palette_color:nth-child(20n + 17) {
  background-color: #a5b1c2;
}

.ger_palette_color:nth-child(20n + 18) {
  background-color: #8854d0;
}

.ger_palette_color:nth-child(20n + 19) {
  background-color: #3867d6;
}

.ger_palette_color:nth-child(20n + 20) {
  background-color: #2d98da;
}

/* Indian Pallete */

.in_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.in_palette_color:nth-child(20n + 1) {
  background-color: #fea47f;
}

.in_palette_color:nth-child(20n + 2) {
  background-color: #25ccf7;
}

.in_palette_color:nth-child(20n + 3) {
  background-color: #eab543;
}

.in_palette_color:nth-child(20n + 4) {
  background-color: #55e6c1;
}

.in_palette_color:nth-child(20n + 5) {
  background-color: #cad3c8;
}

.in_palette_color:nth-child(20n + 6) {
  background-color: #2c3a47;
}

.in_palette_color:nth-child(20n + 7) {
  background-color: #58b19f;
}

.in_palette_color:nth-child(20n + 8) {
  background-color: #f8efba;
}

.in_palette_color:nth-child(20n + 9) {
  background-color: #1b9cfc;
}

.in_palette_color:nth-child(20n + 10) {
  background-color: #f97f51;
}

.in_palette_color:nth-child(20n + 11) {
  background-color: #b33771;
}

.in_palette_color:nth-child(20n + 12) {
  background-color: #3b3b98;
}

.in_palette_color:nth-child(20n + 13) {
  background-color: #fd7272;
}

.in_palette_color:nth-child(20n + 14) {
  background-color: #9aecdb;
}

.in_palette_color:nth-child(20n + 15) {
  background-color: #d6a2e8;
}

.in_palette_color:nth-child(20n + 16) {
  background-color: #82589f;
}

.in_palette_color:nth-child(20n + 17) {
  background-color: #bdc581;
}

.in_palette_color:nth-child(20n + 18) {
  background-color: #fc427b;
}

.in_palette_color:nth-child(20n + 19) {
  background-color: #182c61;
}

.in_palette_color:nth-child(20n + 20) {
  background-color: #6d214f;
}

/* Russian Pallete */

.ru_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.ru_palette_color:nth-child(20n + 1) {
  background-color: #f3a683;
}

.ru_palette_color:nth-child(20n + 2) {
  background-color: #f7d794;
}

.ru_palette_color:nth-child(20n + 3) {
  background-color: #778beb;
}

.ru_palette_color:nth-child(20n + 4) {
  background-color: #e77f67;
}

.ru_palette_color:nth-child(20n + 5) {
  background-color: #cf6a87;
}

.ru_palette_color:nth-child(20n + 6) {
  background-color: #c44569;
}

.ru_palette_color:nth-child(20n + 7) {
  background-color: #e15f41;
}

.ru_palette_color:nth-child(20n + 8) {
  background-color: #546de5;
}

.ru_palette_color:nth-child(20n + 9) {
  background-color: #f5cd79;
}

.ru_palette_color:nth-child(20n + 10) {
  background-color: #f19066;
}

.ru_palette_color:nth-child(20n + 11) {
  background-color: #786fa6;
}

.ru_palette_color:nth-child(20n + 12) {
  background-color: #f8a5c2;
}

.ru_palette_color:nth-child(20n + 13) {
  background-color: #63cdda;
}

.ru_palette_color:nth-child(20n + 14) {
  background-color: #ea8685;
}

.ru_palette_color:nth-child(20n + 15) {
  background-color: #596275;
}

.ru_palette_color:nth-child(20n + 16) {
  background-color: #303952;
}

.ru_palette_color:nth-child(20n + 17) {
  background-color: #e66767;
}

.ru_palette_color:nth-child(20n + 18) {
  background-color: #3dc1d3;
}

.ru_palette_color:nth-child(20n + 19) {
  background-color: #f78fb3;
}

.ru_palette_color:nth-child(20n + 20) {
  background-color: #574b90;
}

/* Spanish Pallete */

.es_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.es_palette_color:nth-child(20n + 1) {
  background-color: #40407a;
}

.es_palette_color:nth-child(20n + 2) {
  background-color: #706fd3;
}

.es_palette_color:nth-child(20n + 3) {
  background-color: #f7f1e3;
}

.es_palette_color:nth-child(20n + 4) {
  background-color: #34ace0;
}

.es_palette_color:nth-child(20n + 5) {
  background-color: #33d9b2;
}

.es_palette_color:nth-child(20n + 6) {
  background-color: #218c74;
}

.es_palette_color:nth-child(20n + 7) {
  background-color: #227093;
}

.es_palette_color:nth-child(20n + 8) {
  background-color: #aaa69d;
}

.es_palette_color:nth-child(20n + 9) {
  background-color: #474787;
}

.es_palette_color:nth-child(20n + 10) {
  background-color: #2c2c54;
}

.es_palette_color:nth-child(20n + 11) {
  background-color: #ff5252;
}

.es_palette_color:nth-child(20n + 12) {
  background-color: #ff793f;
}

.es_palette_color:nth-child(20n + 13) {
  background-color: #d1ccc0;
}

.es_palette_color:nth-child(20n + 14) {
  background-color: #ffb142;
}

.es_palette_color:nth-child(20n + 15) {
  background-color: #ffda79;
}

.es_palette_color:nth-child(20n + 16) {
  background-color: #ccae62;
}

.es_palette_color:nth-child(20n + 17) {
  background-color: #cc8e35;
}

.es_palette_color:nth-child(20n + 18) {
  background-color: #84817a;
}

.es_palette_color:nth-child(20n + 19) {
  background-color: #cd6133;
}

.es_palette_color:nth-child(20n + 20) {
  background-color: #b33939;
}

/* Swedish Pallete */

.swe_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.swe_palette_color:nth-child(20n + 1) {
  background-color: #ef5777;
}

.swe_palette_color:nth-child(20n + 2) {
  background-color: #575fcf;
}

.swe_palette_color:nth-child(20n + 3) {
  background-color: #4bcffa;
}

.swe_palette_color:nth-child(20n + 4) {
  background-color: #34e7e4;
}

.swe_palette_color:nth-child(20n + 5) {
  background-color: #0be881;
}

.swe_palette_color:nth-child(20n + 6) {
  background-color: #05c46b;
}

.swe_palette_color:nth-child(20n + 7) {
  background-color: #00d8d6;
}

.swe_palette_color:nth-child(20n + 8) {
  background-color: #0fbcf9;
}

.swe_palette_color:nth-child(20n + 9) {
  background-color: #3c40c6;
}

.swe_palette_color:nth-child(20n + 10) {
  background-color: #f53b57;
}

.swe_palette_color:nth-child(20n + 11) {
  background-color: #ffc048;
}

.swe_palette_color:nth-child(20n + 12) {
  background-color: #ffdd59;
}

.swe_palette_color:nth-child(20n + 13) {
  background-color: #ff5e57;
}

.swe_palette_color:nth-child(20n + 14) {
  background-color: #d2dae2;
}

.swe_palette_color:nth-child(20n + 15) {
  background-color: #485460;
}

.swe_palette_color:nth-child(20n + 16) {
  background-color: #1e272e;
}

.swe_palette_color:nth-child(20n + 17) {
  background-color: #808e9b;
}

.swe_palette_color:nth-child(20n + 18) {
  background-color: #ff3f34;
}

.swe_palette_color:nth-child(20n + 19) {
  background-color: #ffd32a;
}

.swe_palette_color:nth-child(20n + 20) {
  background-color: #ffa801;
}

/* Turkish Pallete */

.tur_palette_color {
  width: 64px;
  height: 64px;
  background: red;
  display: inline-block;
  margin: 14px;
  border-radius: 5%;
  box-shadow: 7px 7px 15px rgba(55, 84, 170, 0.15),
    -7px -7px 20px rgba(255, 255, 255, 1),
    inset 0px 0px 4px rgba(255, 255, 255, 0.2),
    inset 7px 7px 15px rgba(55, 84, 170, 0),
    inset -7px -7px 20px rgba(255, 255, 255, 0),
    0px 0px 4px rgba(255, 255, 255, 0) !important;
  cursor: pointer;
}

.tur_palette_color:nth-child(20n + 1) {
  background-color: #cd84f1;
}

.tur_palette_color:nth-child(20n + 2) {
  background-color: #ffcccc;
}

.tur_palette_color:nth-child(20n + 3) {
  background-color: #ff4d4d;
}

.tur_palette_color:nth-child(20n + 4) {
  background-color: #ffaf40;
}

.tur_palette_color:nth-child(20n + 5) {
  background-color: #fffa65;
}

.tur_palette_color:nth-child(20n + 6) {
  background-color: #fff200;
}

.tur_palette_color:nth-child(20n + 7) {
  background-color: #ff9f1a;
}

.tur_palette_color:nth-child(20n + 8) {
  background-color: #ff3838;
}

.tur_palette_color:nth-child(20n + 9) {
  background-color: #ffb8b8;
}

.tur_palette_color:nth-child(20n + 10) {
  background-color: #c56cf0;
}

.tur_palette_color:nth-child(20n + 11) {
  background-color: #32ff7e;
}

.tur_palette_color:nth-child(20n + 12) {
  background-color: #7efff5;
}

.tur_palette_color:nth-child(20n + 13) {
  background-color: #18dcff;
}

.tur_palette_color:nth-child(20n + 14) {
  background-color: #7d5fff;
}

.tur_palette_color:nth-child(20n + 15) {
  background-color: #4b4b4b;
}

.tur_palette_color:nth-child(20n + 16) {
  background-color: #3d3d3d;
}

.tur_palette_color:nth-child(20n + 17) {
  background-color: #7158e2;
}

.tur_palette_color:nth-child(20n + 18) {
  background-color: #17c0eb;
}

.tur_palette_color:nth-child(20n + 19) {
  background-color: #17c0eb;
}

.tur_palette_color:nth-child(20n + 20) {
  background-color: #3ae374;
}

.toast-copied {
  display: none;
  position: fixed;
  transform: translate(-50%, -50%);
  color: #eee;
  width: 100%;
  height: 100%;
  line-height: 100vh;
  bottom: 0;
  background: #333;
  left: 50%;
  top: 50%;
  z-index: 99;
  text-align: center;
  font-size: 80px;
  text-transform: uppercase;
  text-shadow: 4px 5px 0px #000;
}

.show {
  display: block;
}

.credits {
  position: fixed;
  bottom: 8px;
  right: 2px;
  width: auto;
  height: auto;
  z-index: 99;
  background: red;
  padding: 10px;
  border-radius: 10px;
  background: #333;
  color: #fff;
  cursor: pointer;
  font-size: 10px;
  display: block;
}

.credits a {
  background: #333;
  color: #fff;
  cursor: pointer;
}
/*colorsession2*/
.contentBox {

    width: 100%;

    height: 70vh;

    display: flex;

    justify-content: space-evenly;

    align-items: center;

}

.contentBox .colorBox {

    width:15%;

    height: 80%;

    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;

    display: flex;

    flex-direction: column;

    justify-content: space-between;

    align-items: center;

}

.contentBox .colorBox .color{
    width:100%;
    height: 80%;
    background-color: aqua;
    border-radius: 10px 10px  0 0;
}

.contentBox .colorBox .code{
    width:100%;
    text-align: center;
    margin-bottom: 30px;
}

.actions {
    width: 100%;
    height: 20%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.actions button{
    padding: 12px 60px;
    background-color: #4361ee;
    border-radius: 10px;
    font-size: 1.2rem;
    color: #fff;
    margin: 0 25px;
    border:none;
    outline: none;
    transition: 0.3s;
}
.actions button:hover {
    background-color: #fff;
    color: #000;
    cursor: pointer;
    border: 3px solid #1e90ff;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<nav aria-label="breadcrumb" style="margin-top: 3px; width: 300px;">
  <ol class="breadcrumb" style="background: none;">
    <li class="breadcrumb-item"><a href="../trang-chu/">Trang chủ</a></li>
    <li class="breadcrumb-item"><a href="#">Màu sắc</a></li>
    <%--<li class="breadcrumb-item active" aria-current="page">Data</li>--%>
  </ol>
</nav>
     <div id="header" class="content-block">
				<section class="center">
					<div class="slogan">
						<h1>Chào mừng bạn đến với thế giới sắc màu</h1>
					</div>
					<div class="secondary-slogan">
						Khám phá và lấy cảm hứng từ bộ sưu tập màu sắc mới nhất của chúng tôi
					</div>
                    <div class="icon-slogan">
						<i class="fas fa-angle-down"></i>
					</div>
				</section>
	</div>
    <!---bangrmau--->
    <div class="logo_h">
         Bảng Màu
    </div>
    <div class="contentBox">
        <div class="colorBox">
        <div class="color"></div>

        <p class="code">#4cae3a</p>

        </div>
        <div class="colorBox">
        <div class="color"></div>
        <p class="code">#4cae3a</p>
        </div>
        <div class="colorBox">
        <div class="color"></div>
        <p class="code">#4cae3a</p>
        </div>
        <div class="colorBox">

        <div class="color"></div>

        <p class="code">#4cae3a</p>

        </div>
        <div class="colorBox">
        <div class="color"></div>
        <p class="code">#4cae3a</p>

        </div>

        <div class="colorBox">
        <div class="color"></div>
        <p class="code">#4cae3a</p>
        </div>
        </div>
        <div class="actions">
        <button>Đổi màu</button>
        </div>
    <!--end-->
 <%--<div class="container_color">
      <div class="logo_h">
         Bảng Màu
    </div>--%>

  <%--<div class="palette">
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
    <div class="a_palette_color"></div>
      <div class="palette-name">
     
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
    <div class="au_palette_color"></div>
  </div>--%>

  <%--<div class="palette">
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    <div class="br_palette_color"></div>
    
  </div>--%>

 <%-- <div class="palette">
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="ca_palette_color"></div>
    <div class="palette-name">
      Canadian Palette
    </div>
  </div>--%>

 <%-- <div class="palette">
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
    <div class="chi_palette_color"></div>
  </div>--%>

  <%--<div class="palette">
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
    <div class="du_palette_color"></div>
  </div>--%>

 <%-- <div class="palette">
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="fr_palette_color"></div>
    <div class="palette-name">
      French Palette
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="ger_palette_color"></div>
    <div class="palette-name">
      German Palette
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="in_palette_color"></div>
    <div class="palette-name">
      Indian Palette
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="ru_palette_color"></div>
    <div class="palette-name">
      Russian Palette
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="es_palette_color"></div>
    <div class="palette-name">
      Spanish Palette
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="swe_palette_color"></div>
    <div class="palette-name">
      Swedish Palette
    </div>
  </div>--%>

  <%--<div class="palette">
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="tur_palette_color"></div>
    <div class="palette-name">
      Turkish Palette
    </div>
  </div>--%>
<%--</div>

<audio
  id="copy"
  src="https://github.com/aniketkudale/neumorphic-color-pallete/blob/master/dist/definite.mp3?raw=true"
></audio>
<div class="toast-copied">
#fab1a0
</div>--%>



    <!---end--->
   
    <!----search---->
    <center>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/nt1.jpg" />
            <a href="color_2021.aspx"><p>Bảng Màu Ngoại Thất Jotashield  <i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/nt2.jpg" />
            <a href="ngoaithat.aspx"><p>Bộ sưu tập màu sắc 2021  <i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/phongthuy.jpg" />
            <a href="../trang-chu/color_phongthuy.aspx"><p>Màu sắc phong thủy<i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    <div class="color_pro">
        <div class="color_pr">
            <img src="/hinh/540x320x1-BON-MAU.jpg" />
            <a href="../trang-chu/xuhuongcolor.aspx"><p>Bộ sưu tập xu hướng sắc màu<i class="fas fa-angle-right"></i></p></a>
        </div>
    </div>
    </center>

   <%-- <script>
        var copyToast = document.getElementsByClassName("toast-copied")[0];

        var americanHandler = document.getElementsByClassName("a_palette_color");
        var aussieHandler = document.getElementsByClassName("au_palette_color");
        var britishHandler = document.getElementsByClassName("br_palette_color");
        var canadianHandler = document.getElementsByClassName("ca_palette_color");
        var chineseHandler = document.getElementsByClassName("chi_palette_color");
        var dutchHandler = document.getElementsByClassName("du_palette_color");
        var frenchHandler = document.getElementsByClassName("fr_palette_color");
        var germanHandler = document.getElementsByClassName("ger_palette_color");
        var indianHandler = document.getElementsByClassName("in_palette_color");
        var russianHandler = document.getElementsByClassName("ru_palette_color");
        var spanishHandler = document.getElementsByClassName("es_palette_color");
        var swedishHandler = document.getElementsByClassName("swe_palette_color");
        var turkishHandler = document.getElementsByClassName("tur_palette_color");

        for (let i = 0; i < americanHandler.length; i++) {
            americanHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            aussieHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            britishHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            canadianHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            chineseHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            dutchHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            frenchHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            germanHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            indianHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            russianHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            spanishHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            swedishHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
            turkishHandler[i].addEventListener("click", function (e) {
                var rgbValues = window
                  .getComputedStyle(this, null)
                  .getPropertyValue("background-color");
                var hexValue = rgb2hex(rgbValues);
                copyToast.classList.toggle("show");
                copyToast.innerText = "Copied!";
                copyToast.innerText = hexValue + " " + copyToast.innerText;
                copyToClipboard(hexValue);
                copyToast.style.backgroundColor = hexValue;
                document.getElementById("copy").play();
                setTimeout(function () {
                    copyToast.classList.toggle("show");
                }, 2000);
            });
        }

        function rgb2hex(rgb) {
            if (rgb.search("rgb") == -1) {
                return rgb;
            } else {
                rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/);
                function hex(x) {
                    return ("0" + parseInt(x).toString(16)).slice(-2);
                }
                return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
            }
        }

        function copyToClipboard(text) {
            var dummy = document.createElement("textarea");
            document.body.appendChild(dummy);
            dummy.value = text;
            dummy.select();
            document.execCommand("copy");
            document.body.removeChild(dummy);
        }

    </script>--%>
    <script>
        var code = document.querySelectorAll('.code');

        var color = document.querySelectorAll('.color');

        var button = document.querySelector('button');

        button.addEventListener("click", colorGen);

        function colorGen() {

            var letters = '0123456789abcdef';

            var hastag = ['#', '#', '#', '#', '#', '#'];

            for (let i = 0; i < 6; i++) {

                hastag[i] += letters[Math.floor(Math.random() * 16)];

                hastag[i] += letters[Math.floor(Math.random() * 16)];

                hastag[i] += letters[Math.floor(Math.random() * 16)];

                hastag[i] += letters[Math.floor(Math.random() * 16)];

                hastag[i] += letters[Math.floor(Math.random() * 16)];

                hastag[i] += letters[Math.floor(Math.random() * 16)];

            }

            for (let i = 0; i < code.length; i++) {

                code[i].innerHTML = hastag[i];

                color[i].style.backgroundColor = hastag[i];

            }

        }

        colorGen();

        window.onkeyup = (e) => {

            if (e.which || e.keycode == 33) {

                colorGen();

            }

        };
    </script>
</asp:Content>
