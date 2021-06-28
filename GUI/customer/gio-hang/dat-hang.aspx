<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="dat-hang.aspx.cs" Inherits="GUI.customer.gio_hang.dat_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Đặt hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 800px">
        <h2 class="text-center"><strong>Thông tin nhận hàng</strong></h2>
        
        <div class="md-form">
            <i class="fas fa-signature prefix"></i>
            <asp:TextBox ID="txt_hoTen" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_hoTen">Họ tên người nhận</label>
        </div>

         <div class="md-form mt-0">
            <i class="far fa-envelope prefix"></i>
            <asp:TextBox ID="txt_email" type="email" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_email">Email người nhận</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-mobile-alt prefix"></i>
            <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_sdt">Số điện thoại người nhận</label>
        </div>
        
        <div class="md-form mt-0">
            <i class="fas fa-map-marker-alt prefix"></i>
            <asp:TextBox ID="txt_diaChi" runat="server" class="form-control" required="required" data-toggle="tooltip" data-placement="left" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
            <label for="txt_diaChi">Địa chỉ người nhận</label>
        </div>

        <asp:Label ID="lb_tongTien" runat="server" Style="font-size: 16pt; color: red;"></asp:Label>

        <div class="text-right">
            <a href="./Default.aspx" class="btn btn-light btn-md">Giỏ hàng</a>
            <asp:Button ID="btn_luu" runat="server" class="btn btn-success btn-md" Text="Đặt hàng" Style="width: 130px;" OnClientClick="return confirm('Khách hàng xác nhận với thông tin sau để đăng ký')" OnClick="btn_luu_Click"/>
        </div>

    </div>
</asp:Content>
