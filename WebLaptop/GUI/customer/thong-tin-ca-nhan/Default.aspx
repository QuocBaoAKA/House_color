<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.thong_tin_ca_nhan.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Thông tin cá nhân</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 800px">
        <h2 class="text-center"><strong>Thông tin cá nhân</strong></h2>

        <div class="md-form">
            <i class="fas fa-signature prefix"></i>
            <asp:TextBox ID="txt_hoTen" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_hoTen">Họ tên</label>
        </div>

        <%
            if (Session["email"] != null)
            {
        %>
        <div class="md-form mt-0" data-toggle="tooltip" data-placement="left" title="Bạn không thể sửa trường này do bạn đăng nhập bằng Google">
            <i class="far fa-envelope prefix"></i>
            <asp:TextBox ID="txt_email" type="email" runat="server" class="form-control" required="required" disabled></asp:TextBox>
            <label for="txt_email">Địa chỉ email</label>
        </div>
        <%
            }
            else
            {
        %>
        <div class="md-form mt-0">
            <i class="far fa-envelope prefix"></i>
            <asp:TextBox ID="txt_email1" type="email" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_email1">Địa chỉ email</label>
        </div>
        <%
            }
        %>


        <div class="md-form mt-0">
            <i class="fas fa-mobile-alt prefix"></i>
            <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" title="Số điện thoại có định dạng 0123456789 hoặc 02943853733" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_sdt">Số điện thoại</label>
        </div>

        <div class="md-form mt-0">
            <i class="fas fa-map-marker-alt prefix"></i>
            <asp:TextBox ID="txt_diaChi" runat="server" class="form-control" required="required" data-toggle="tooltip" data-placement="left" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
            <label for="txt_diaChi">Địa chỉ liên lạc</label>
        </div>

        <div class="text-right">
            <a href="<%= Session["urlBack"] %>" class="btn btn-light btn-md" style="width: 130px;">Hủy</a>
            <button type="reset" class="btn btn-danger btn-md" style="width: 130px;">Nhập lại</button>
            <asp:Button ID="btn_luu" runat="server" class="btn btn-success btn-md" Text="Lưu" Style="width: 130px;" OnClick="btn_luu_Click" />
        </div>

    </div>
</asp:Content>
