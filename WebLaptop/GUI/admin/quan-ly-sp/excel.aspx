<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="excel.aspx.cs" Inherits="GUI.admin.quan_ly_sp.excel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thêm từ excel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="my-4 dark-grey-text font-weight-bold">Thêm sản phẩm từ excel</h5>
    <div class="card">
        <div class="card-body">
            <div class="md-form">
                <div class="file-field">
                    <div class="btn btn-primary btn-sm float-left">
                        <span>Chọn file</span>
                        <asp:FileUpload ID="ful_excel" runat="server" required />
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Tên file" disabled />
                    </div>
                </div>
            </div>
            <div class="form-group text-right">
                <a href="../quan-ly-sp/" class="btn btn-light btn-md">Hủy</a>
                <%--<button type="reset" class="btn btn-danger btn-md">Nhập lại</button>--%>
                <asp:Button Text="Thêm" CssClass="btn btn-success btn-md" runat="server" ID="btn_upload" OnClick="btn_upload_Click" />
            </div>
           
        </div>
    </div>
    <script>
        document.getElementById("breadcrumb").innerHTML = '<a href="../quan-ly-sp/">Quản lý sản phẩm</a> / <a href="#">Thêm sản phẩm từ excel</a>';
    </script>
</asp:Content>
