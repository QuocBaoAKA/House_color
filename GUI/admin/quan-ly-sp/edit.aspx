<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="GUI.admin.quan_ly_sp.edit" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sửa sản phẩm</title>
    <style>
       .card{
           width: 80%;
           margin: auto;
           border-radius: 5px;
       }
       .h5_sua{
           text-align: center;
           font-size: 38px;
           font-weight: 700;
           margin-top: 1rem;
           color: #0a3df5;
       }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5 class="h5_sua">Sửa Sản Phẩm</h5>

    <div class="card">
        <div class="card-body">
            <div class="md-form">
                <label for="txt_tenSP">Tên sản phẩm</label>
                <asp:TextBox ID="txt_tenSP" runat="server" class="form-control" required></asp:TextBox>              
            </div>

             <div class="row">
                <div class="col">
                    <asp:DropDownList ID="ddl_hangSP" runat="server" class="mdb-select md-form colorful-select dropdown-ins mt-5" required>
                        <asp:ListItem Value="" disabled Selected>-- Chọn --</asp:ListItem>
                    </asp:DropDownList>
                    <label class="mdb-main-label">Mã màu</label>
                </div>
                <div class="col">
                    <asp:DropDownList ID="ddl_loaiSP" runat="server" class="mdb-select md-form colorful-select dropdown-ins mt-5" required>
                        <asp:ListItem Value="" disabled Selected>-- Chọn --</asp:ListItem>
                    </asp:DropDownList>
                    <label class="mdb-main-label">Loại hàng</label>
                </div>
            </div>  

          <%--  <div class="md-form">
                <asp:TextBox type="number" ID="txt_soLuong" runat="server" class="form-control" min="1" required></asp:TextBox>
                <label for="txt_soLuong">Số lượng</label>
            </div>--%>
            <span id="hienThiHinhAnh">Hình ảnh: <asp:Image ID="hienThiHinhAnhSauKhiUp" Width="100" runat="server" ImageUrl="Not allowed to load local resource" /></span>       

            <div class="md-form">
                <div class="file-field">
                    <div class="btn btn-primary btn-sm float-left">
                        <span>Chọn hình ảnh</span>
                        <asp:FileUpload ID="ful_hinhAnh" runat="server" onchange="readURL(this);"/>
                    </div>
                    <div class="file-path-wrapper">
                        <asp:TextBox ID="txt_tenAnh" class="file-path validate" placeholder="Tên ảnh" runat="server" disabled></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="txt_moTa">Mô tả sản phẩm</label>
                <asp:TextBox ID="txt_moTa" runat="server" TextMode="MultiLine" class="form-control summernote"></asp:TextBox>
            </div>
             <div class="md-form">
                <asp:TextBox type="number" ID="txt_gia" runat="server" class="form-control" min="1000" required></asp:TextBox>
                <label for="txt_gia">Giá</label>
            </div>
           
            <div class="form-group text-center">
                <a href="../quan-ly-sp/" class="btn btn-light btn-md">Hủy</a>
                <button type="reset" class="btn btn-danger btn-md">Nhập lại</button>
                <asp:Button ID="btn_sua" runat="server" Text="Sửa" CssClass="btn btn-success btn-md" OnClick="btn_sua_Click" />
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
