<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="dat-hang-thanh-cong.aspx.cs" Inherits="GUI.customer.gio_hang.dat_hang_thanh_cong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Đặt hàng thành công</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 800px">
        <h2 class="text-center text-success mb-5"><strong><i class="fas fa-check"></i> Đặt hàng thành công</strong></h2>
        <p>Cảm ơn bạn đã mua hàng tại Store Laptop.</p>
        <p>Đơn hàng đã được đặt thành công.</p>
        <p>Mọi thắc mắc xin liên hệ số điện thoại: 0394470709</p>
        <p>Bạn có thể xem chi tiết đơn hàng tại <a href="../lich-su-mua-hang/">"Lịch sử mua hàng"</a>.</p>
        <div class="text-center">
            <img src="https://www.creativefabrica.com/wp-content/uploads/2018/07/Thank-you-for-your-order-5-580x386.jpg" style="width:50%"/>
        </div>
    </div>
</asp:Content>
