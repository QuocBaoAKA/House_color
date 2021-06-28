<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.thong_ke.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thống kê</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col">
            <div class="card card-cascade narrower text-center">
                <div class="form-inline container">
                    <asp:DropDownList ID="ddl_nam" runat="server" class="mdb-select md-form">
                    </asp:DropDownList>
                    <label class="mdb-main-label">Năm</label>
                    <asp:Button ID="btn_thongKe" runat="server" Text="Thống kê" class="ml-5 btn btn-primary btn-sm" OnClick="btn_thongKe_Click" />
                </div>
                <div id="doanhThuTungThangTheoNam"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="card card-cascade narrower text-center">
                <div id="slSPBanTheoHang"></div>
            </div>
        </div>
        <div class="col">
            <div class="card card-cascade narrower text-center">
                <div id="slSPBanTheoLoai"></div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        // Load the Visualization API and the corechart package.
        google.charts.load('current', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Tháng');
            data.addColumn('number', 'Doanh thu');
            data.addRows([
          <%= Session["thongKeDoanhThuTungThangTheoNam"] %>
            ]);

            // Set chart options
            var options = {
                'title': 'Doanh thu từng tháng trong năm <%= Session["nam"] %>',
                'width': 1000,
                'height': 400
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.ColumnChart(document.getElementById('doanhThuTungThangTheoNam'));
            chart.draw(data, options);
        }
    </script>

    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Tên hãng');
        data.addColumn('number', 'Số lượng bán');
        data.addRows([
          <%= Session["thongKeSLSPBanTheoHang"] %>
        ]);

        // Set chart options
        var options = {'title':'Số lượng sản phẩm bán theo hãng',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('slSPBanTheoHang'));
        chart.draw(data, options);
      }
    </script>

    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Tên loại');
        data.addColumn('number', 'Số lượng bán');
        data.addRows([
          <%= Session["thongKeSLSPBanTheoLoai"] %>
        ]);

        // Set chart options
        var options = {'title':'Số lượng sản phẩm bán theo loại',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('slSPBanTheoLoai'));
        chart.draw(data, options);
      }
    </script>
    
</asp:Content>
