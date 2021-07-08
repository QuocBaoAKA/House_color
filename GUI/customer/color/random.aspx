<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="random.aspx.cs" Inherits="GUI.customer.color.random" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .color_back{
            width: 800px;
            height: 500px;
            margin: auto;
            background: #f2f2f2;
            margin-top: 1rem;
        }
        .color{
            text-align: center;
            margin-top: 20px;
        }
        #hex{
            display: block;
            color: #000;
            font-size: 40px;
            text-transform: uppercase;
            margin: 20px;
        }
        .color button{
            background: #00ff21;
            outline: none;
            color: #fff;
            border: 3px solid white;
            cursor: pointer;
            font-size: 24px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="color">
        <span id="hex">#f2f2f2</span>
        <button onclick="getnewcolor()">Đổi màu</button>
    </div>
    <script type="text/javascript">
        function getnewcolor() {
            var symbols, color;
            symbols = "0123456789ABCDEF";

            color = "#";
            for (var i = 0; i < 6; i++) {
                color = color + symbols[Math.floor(Math.random() * 16)];
            }
            document.body.style.background = color;
            document.getElementById("hex").innerHTML = color();
        }
    </script>
</asp:Content>
