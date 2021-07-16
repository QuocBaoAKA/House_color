<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="themncc.aspx.cs" Inherits="GUI.admin.quan_ly_ncc.themncc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thêm sản phẩm</title>
    <style>
        .card{
            width: 80%;
            margin: auto;
            margin-top: 1rem;
            background: rgba( 255, 255, 255, 0.80 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 17.5px );
            -webkit-backdrop-filter: blur( 17.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
        }
        .form-control{
            width: 90%;
            margin: auto;
        }
        .lable_cv{
            margin-left: 3rem;
            margin-top: 15px;
        }
        .lable_cv1{
            margin-left: 18rem;
        }
        .form_them{
            display: flex; 
            align-items: center;
            justify-content: center; 
            flex-direction: row;
            flex-wrap: wrap;
        }
        .form-text{
            width: 450px; padding: 8px;
            margin: 20px;
            border: 1px solid #e7e7e7;
            border-radius: 6px;
            background: #f2f2f1;
            outline: none;
        }
        .form-text:focus{
            border-bottom: 2px solid #0026ff;
        }
        .form-text1{
            width: 650px; padding: 8px;
            margin: auto;
            border: 1px solid #e7e7e7;
            border-radius: 6px;
            background: #f2f2f1;
            outline: none;
        }
        .form-text1:focus{
            border-bottom: 2px solid #0026ff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="form_them">
        <div class="col_them">
             <label class="lable_cv">Mã NCC</label>
            <!-- First name -->
            <asp:textbox ID="txt_mncc" runat="server" class="form-text" required></asp:textbox>
        </div>
        <div class="col_them">
             <label class="lable_cv">Tên NCC</label>
            <asp:textbox ID="txt_tncc" runat="server" class="form-text" required></asp:textbox>
            <!-- Last name -->
        </div> 
       </div>
        <div class="form_them">
            <div class="col_them">
             <label class="lable_cv">Email</label>
            <asp:textbox ID="txt_email" type="email" runat="server" class="form-text" required></asp:textbox>
            <!-- Last name -->
        </div>
        <div class="col_them">
             <label class="lable_cv">Địa chỉ</label>
            <!-- First name -->
            <asp:textbox ID="txt_diacho" runat="server" class="form-text" required></asp:textbox>
        </div>
         
       </div>   
        <label class="lable_cv1">Số điện thoại</label>
          <asp:textbox ID="txt_sdt" runat="server" pattern="[0-9]{10}" class="form-text1" required="required" title="Định dạng số điện thoại không đúng" ></asp:textbox>

        <div class="form-group text-center" style="margin-top: 2rem;">
                <a href="../quan-ly-loai-sp/" class="btn btn-light btn-md">Hủy</a>
                <button type="reset" class="btn btn-danger btn-md">Nhập lại</button>
                 <asp:button ID="btn_them" runat="server" text="Thêm" CssClass="btn btn-success btn-md" OnClick="btn_them_Click" />
         </div>
    </div>
</asp:Content>
