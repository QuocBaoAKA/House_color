<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.thong_tin_ca_nhan.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Thông tin cá nhân</title>
    <style>
        .card_contact{
            width: 80%;
            height: 450px;
            margin: auto;
            margin-top: 1rem;
            padding: 30px 40px;
            margin-top: 60px;
            margin-bottom: 60px;
            border: none !important;
            box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
        .card_contact:hover{
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        }
         .form-control-label {
    margin-bottom: 0
}
        .form_cont{
            padding: 8px 15px;
            border-radius: 5px !important;
            margin: 5px 0px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            font-size: 18px !important;
            font-weight: 300
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card_contact">
        <h2 class="text-center"><strong>Thông tin cá nhân</strong></h2>
     <form class="form-card" onsubmit="event.preventDefault()">
       <div class="row justify-content-between text-left">
         <div class="form-group col-sm-6 flex-column d-flex">
             <label class="form-control-label px-3">Họ Tên<span class="text-danger"> *</span></label>
            <asp:TextBox ID="txt_hoTen" runat="server" class="form_cont" required="required" name="fname" onblur="validate(1)"></asp:TextBox>
           
        </div>
      
        <%
            if (Session["Email"] != null)
            {
        %>
        <div class="form-group col-sm-6 flex-column d-flex" data-toggle="tooltip" data-placement="left" title="Bạn không thể sửa trường này do bạn đăng nhập bằng Google">
            <label class="form-control-label px-3">Email<span class="text-danger"> *</span></label> 
            <asp:TextBox ID="txt_email" type="email" name="email" runat="server" class="form_cont"  disabled></asp:TextBox>
            
        </div>
        <%
            }
            else
            {
        %>
        <div class="form-group col-sm-6 flex-column d-flex">
            <label class="form-control-label px-3">Email<span class="text-danger"> *</span></label> 
            <asp:TextBox ID="txt_email1" type="email" runat="server" name="email" onblur="validate(2)" class="form_cont"></asp:TextBox>
            
        </div>
        <%
            }
        %>

        </div>
        <div class="row justify-content-between text-left">
         <div class="form-group col-sm-6 flex-column d-flex">
             <label class="form-control-label px-3">Số điện thoại<span class="text-danger"> *</span></label>
            <asp:TextBox ID="txt_sdt" pattern="0([0-9]{9}||[0-9]{10})" name="mob" title="Số điện thoại có định dạng 0123456789 hoặc 849687952" runat="server" class="form_cont" required="required"></asp:TextBox>
           
        </div>

        <div class="form-group col-sm-6 flex-column d-flex">
             <label class="form-control-label px-3">Địa chỉ<span class="text-danger"> *</span></label>
            <asp:TextBox ID="txt_diaChi" runat="server" class="form_cont" name="job" required="required" data-toggle="tooltip" data-placement="left" title="Địa chỉ bao gồm: số nhà, đường, khóm, phường, thành phố, tỉnh."></asp:TextBox>
           
        </div>
    </div>
        <div class="text-right">
            <a href="<%= Session["urlBack"] %>" class="btn btn-light btn-md" style="width: 130px;">Hủy</a>
            <button type="reset" class="btn btn-danger btn-md" style="width: 130px;">Nhập lại</button>
            <asp:Button ID="btn_luu" runat="server" class="btn btn-success btn-md" Text="Lưu" Style="width: 130px;" OnClick="btn_luu_Click" />
        </div>
    </form>
    </div>
    <script>
        function validate(val) {
            v1 = document.getElementById("fname");
            v2 = document.getElementById("email");
            v3 = document.getElementById("mob");
            v4 = document.getElementById("job");

            flag1 = true;
            flag2 = true;
            flag3 = true;
            flag4 = true;

            if (val >= 1 || val == 0) {
                if (v1.value == "") {
                    v1.style.borderColor = "red";
                    flag1 = false;
                }
                else {
                    v1.style.borderColor = "green";
                    flag1 = true;
                }
            }

            if (val >= 2 || val == 0) {
                if (v2.value == "") {
                    v2.style.borderColor = "red";
                    flag2 = false;
                }
                else {
                    v2.style.borderColor = "green";
                    flag2 = true;
                }
            }
            if (val >= 3 || val == 0) {
                if (v3.value == "") {
                    v3.style.borderColor = "red";
                    flag3 = false;
                }
                else {
                    v3.style.borderColor = "green";
                    flag3 = true;
                }
            }
            if (val >= 4 || val == 0) {
                if (v4.value == "") {
                    v4.style.borderColor = "red";
                    flag4 = false;
                }
                else {
                    v4.style.borderColor = "green";
                    flag4 = true;
                }
            }
            if (val >= 5 || val == 0) {
                if (v5.value == "") {
                    v5.style.borderColor = "red";
                    flag5 = false;
                }
                else {
                    v5.style.borderColor = "green";
                    flag5 = true;
                }
            }
            if (val >= 6 || val == 0) {
                if (v6.value == "") {
                    v6.style.borderColor = "red";
                    flag6 = false;
                }
                else {
                    v6.style.borderColor = "green";
                    flag6 = true;
                }
            }

            flag = flag1 && flag2 && flag3 && flag4 && flag5 && flag6;

            return flag;
        }

    </script>
    <!---co---->

</asp:Content>
