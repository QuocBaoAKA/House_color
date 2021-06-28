<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.quan_ly_loai_sp.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Quản lý sản phẩm</title>
    <style>
        .card{
            width: 90%;
            margin: auto;
            margin-top: 2rem;
        
       } 
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <div class="text-right mb-3">
                <%--<a href="./excel.aspx" class="btn btn-success"><i class="fas fa-plus"></i> Thêm từ excel</a>--%>
                <a href="./add.aspx" class="btn btn-primary"><i class="fas fa-plus"></i> Thêm </a>
            </div>
            <asp:Repeater ID="rpt_bangSP" runat="server" EnableTheming="True" OnItemCommand="rpt_bangSP_ItemCommand">
                <HeaderTemplate>
                    <table class="table table-bordered table-hover table-responsive-sm datatable">
                        <thead>
                            <tr class="text-white" style="background-color: #1A7DFF;">
                                <th>#</th>
                                <th>Mã SP</th>
                                <th style="width: 20%">Tên sản phẩm</th>
                                <th>Loại hàng</th>
                                <th>Màu sắc</th>
                                <th>Hình ảnh</th>
                                <th>Mô tả</th>
                                <th>Số lượng</th>
                                <th>Giá (VNĐ)</th>
                                <th style="width: 18%">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("maSP") %></td>
                        <td><%# Eval("tenSP") %></td>
                        
                        <td><%# Eval("maLoai") %></td>
                        <td><%# Eval("mamau") %></td>
                        <td><%# Eval("gia") %></td>
                        <td><%# Eval("mota") %></td>
                        <td><%# Eval("soluong") %></td>
                        <td>
                            <img src="../../public/images/<%# Eval("HinhAnh") %>" width="100"/>
                        </td>
                      
                        <td style="text-align: center;">                           
                            <a href="./delete.aspx?masp=<%# Eval("maSP") %>" class="btn btn-danger btn-sm" onclick="return confirm('Bạn chắc xóa không.')"><i class="far fa-trash-alt"></i></a>
                            <a href="./edit.aspx?masp=<%# Eval("maSP") %>" class="btn btn-success btn-sm"><i class="far fa-edit"></i></a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    
</asp:Content>
