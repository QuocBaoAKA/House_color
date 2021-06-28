<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer-masterpage/customer.Master" AutoEventWireup="true" CodeBehind="t.aspx.cs" Inherits="GUI.customer.trang_chu.t" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <!---literal -------------------------------------------------------------------------------------------------------------------------->
 

  
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
        <ContentTemplate>
            <!--literal -------------------------------------------------------------------------------------------------------------------------->
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="alerttarget1" runat="server" Text="Button"/>

            </ContentTemplate>
      
    </asp:UpdatePanel>
    
            <a class="btn btn-info btn-lg" onclick="test1()">Click me!</a>
           
           
  
</asp:Content>
