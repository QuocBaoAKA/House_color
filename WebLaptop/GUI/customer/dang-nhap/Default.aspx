<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.customer.dang_nhap.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Đăng nhập</title>
    <style>
        #login-failed {
            display: none;
            color: red;
        }
        
        .btn-toggle-pass {
            border: none;
            position: absolute;
            top: 11px;
            background: transparent;
            right: 0;
        }

            .btn-toggle-pass.active {
                color: #4285F4;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <div class="container card mt-5 mb-5 pt-4 pb-4 hoverable" style="width: auto; max-width: 500px">
        <h2 class="text-center"><strong>Đăng nhập</strong></h2>

        <!-- Username -->
        <div class="md-form">
            <i class="fas fa-user prefix"></i>
            <asp:TextBox ID="txt_tdn" runat="server" class="form-control" required="required"></asp:TextBox>
            <label for="txt_tdn">Tên đăng nhập / Gmail</label>
        </div>

        <!-- Password -->
        <div class="md-form mt-0">
            <i class="fas fa-lock prefix"></i>
            <asp:TextBox ID="txt_mk" type="password" runat="server" class="form-control mr-3" required="required"></asp:TextBox>
            <label for="txt_mk">Mật khẩu</label>
        </div>

        <span id="login-failed" class="animated shake text-center">*Sai thông tin đăng nhập</span>

        <!-- Sign in button -->
        <div class="text-center">
            <asp:Button ID="btn_login" runat="server" class="btn btn-outline-primary mt-3 mb-3" Text="Đăng nhập" Style="width: 300px;" OnClick="btn_login_Click" />
            <!-- Social login -->
            <p>hoặc</p>

            <asp:LinkButton ID="btn_gg" runat="server" class="btn btn-danger" Style="width: 300px;" OnClick="btn_gg_Click"><i class="fab fa-google-plus-g pr-1"></i> đăng nhập với Google</asp:LinkButton>

            <%--<asp:LinkButton ID="btn_fb" runat="server" class="btn btn-primary" Style="width: 200px;" OnClick="btn_fb_Click"><i class="fab fa-facebook-f"></i> Facebook</asp:LinkButton>--%>
        </div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>
    </div>
</asp:Content>
