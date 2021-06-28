<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="GUI.admin.quan_ly_sp.add" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thêm sản phẩm</title>
    <style>
        #hienThiHinhAnh {
            display: none;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="my-4 dark-grey-text font-weight-bold">Thêm</h5>
    <div class="card">
        <div class="card-body">
            <div class="md-form">
                <label for="txt_tenSP">Mã sản phẩm</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox>
            </div>
            <div class="md-form">
                <label for="txt_tenSP">Tên sản phẩm</label>
                <asp:TextBox ID="txt_tenSP" runat="server" class="form-control" required></asp:TextBox>
            </div>

            <%--<asp:DropDownList title="Chọn loại sản phẩm"  ID="ddl_loaiSP" runat="server" class="form-control selectpicker" data-style="white" data-live-search="true" style="box-shadow:none;" required></asp:DropDownList>--%>
            <div class="row">
                <div class="col">
                    <asp:DropDownList ID="drop1" runat="server" class="mdb-select md-form colorful-select dropdown-ins mt-5" required>
                        <asp:ListItem Value="" disabled Selected>-- Chọn --</asp:ListItem>
                    </asp:DropDownList>
                    <label class="mdb-main-label">Mã Loại hàng</label>
                </div>
                <div class="col">
                    <asp:DropDownList ID="drop2" runat="server" class="mdb-select md-form colorful-select dropdown-ins mt-5" required>
                        <asp:ListItem Value="" disabled Selected>-- Chọn --</asp:ListItem>
                    </asp:DropDownList>
                    <label class="mdb-main-label">Mã màu</label>
                </div>
            </div>  

            

            <span id="hienThiHinhAnh">Hình ảnh:
                <asp:Image ID="hienThiHinhAnhSauKhiUp" Width="100" runat="server" /></span>

            <div class="md-form">
                <div class="file-field">
                    <div class="btn btn-primary btn-sm float-left">
                        <span>Chọn hình ảnh</span>
                        <asp:FileUpload ID="ful_hinhAnh" runat="server" onchange="readURL(this);" required />
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Tên ảnh" disabled />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="txt_moTa">Mô tả sản phẩm</label>
                <asp:TextBox ID="txt_moTa" runat="server" TextMode="MultiLine" class="form-control summernote"></asp:TextBox>
            </div>
            <div class="form-group text-right">
                <a href="../quan-ly-sp/" class="btn btn-light btn-md">Hủy</a>
                <button type="reset" class="btn btn-danger btn-md">Nhập lại</button>
                <asp:Button ID="btn_them" runat="server" Text="Thêm" CssClass="btn btn-success btn-md" OnClick="btn_them_Click" />
            </div>
            <div class="md-form">
                <asp:TextBox type="number" ID="txt_gia" runat="server" class="form-control" min="1000" required></asp:TextBox>
                <label for="txt_gia">Giá</label>
            </div>
        </div>
    </div>

    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#ContentPlaceHolder1_hienThiHinhAnhSauKhiUp')
                        .attr('src', e.target.result);
                };
                document.getElementById("hienThiHinhAnh").style.display = 'block';
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
