<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin-masterpage/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.dashboard.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Section: Button icon -->
    <section>
        
        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="col-xl-3 col-md-6 mb-4">

                <!-- Card -->
                <div class="card">

                    <!-- Card Data -->
                    <div class="row mt-3">

                        <div class="col-md-5 col-5 text-left pl-4">

                            <a type="button" class="btn-floating btn-lg primary-color ml-4"><i class="far fa-eye"
                                aria-hidden="true"></i></a>

                        </div>

                        <div class="col-md-7 col-7 text-right pr-5">

                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">4,567 </h5>

                            <p class="font-small grey-text">Unique Visitors</p>
                        </div>

                    </div>
                    <!-- Card Data -->

                    <!-- Card content -->
                    <div class="row my-3">

                        <div class="col-md-7 col-7 text-left pl-4">

                            <p class="font-small font-up ml-4 font-weight-bold">Last month</p>

                        </div>

                        <div class="col-md-5 col-5 text-right pr-5">

                            <p class="font-small grey-text">145,567</p>
                        </div>

                    </div>
                    <!-- Card content -->

                </div>
                <!-- Card -->

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-xl-3 col-md-6 mb-4">

                <!-- Card -->
                <div class="card">

                    <!-- Card Data -->
                    <div class="row mt-3">

                        <div class="col-md-5 col-5 text-left pl-4">

                            <a type="button" class="btn-floating btn-lg warning-color ml-4"><i class="fas fa-user"
                                aria-hidden="true"></i></a>

                        </div>

                        <div class="col-md-7 col-7 text-right pr-5">

                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">4,567 </h5>
                            <p class="font-small grey-text">New Users</p>

                        </div>

                    </div>
                    <!-- Card Data -->

                    <!-- Card content -->
                    <div class="row my-3">

                        <div class="col-md-7 col-7 text-left pl-4">
                            <p class="font-small font-up ml-4 font-weight-bold">Last month</p>
                        </div>

                        <div class="col-md-5 col-5 text-right pr-5">
                            <p class="font-small grey-text">145,567</p>
                        </div>

                    </div>
                    <!-- Card content -->

                </div>
                <!-- Card -->

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-xl-3 col-md-6 mb-4">

                <!-- Card -->
                <div class="card">

                    <!-- Card Data -->
                    <div class="row mt-3">

                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg light-blue lighten-1 ml-4"><i class="fas fa-dollar-sign"
                                aria-hidden="true"></i></a>
                        </div>

                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">4,567 </h5>
                            <p class="font-small grey-text">Total Sales</p>
                        </div>

                    </div>
                    <!-- Card Data -->

                    <!-- Card content -->
                    <div class="row my-3">

                        <!-- Grid column -->
                        <div class="col-md-7 col-7 text-left pl-4">
                            <p class="font-small font-up ml-4 font-weight-bold">Last month</p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-5 col-5 text-right pr-5">
                            <p class="font-small grey-text">145,567</p>
                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Card content -->

                </div>
                <!-- Card -->

            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-xl-3 col-md-6 mb-4">

                <!-- Card -->
                <div class="card">

                    <!-- Card Data -->
                    <div class="row mt-3">

                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg red accent-2 ml-4"><i class="fas fa-database"
                                aria-hidden="true"></i></a>
                        </div>

                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">4,567</h5>
                            <p class="font-small grey-text">Order Amount</p>
                        </div>

                    </div>
                    <!-- Card Data -->

                    <!-- Card content -->
                    <div class="row my-3">

                        <div class="col-md-7 col-7 text-left pl-4">
                            <p class="font-small font-up ml-4 font-weight-bold">Last week</p>
                        </div>

                        <div class="col-md-5 col-5 text-right pr-5">
                            <p class="font-small grey-text">145,567</p>
                        </div>

                    </div>
                    <!-- Card content -->

                </div>
                <!-- Card -->

            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row -->

    </section>
    <!-- Section: Button icon -->
    <!-- Section: Analytical panel -->
    <section class="mt-md-4 pt-md-2 mb-5">

        <!-- First row -->
        <div class="row">

            <!-- First column -->
            <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">

                <!-- Card -->
                <div class="card card-cascade cascading-admin-card">

                    <!-- Card Data -->
                    <div class="admin-up">
                        <i class="far fa-money-bill-alt primary-color mr-3 z-depth-2"></i>
                        <div class="data">
                            <p class="text-uppercase">Sales</p>
                            <h4 class="font-weight-bold ">4 571 $</h4>
                        </div>
                    </div>

                    <!-- Card content -->
                    <div class="card-body card-body-cascade">
                        <div class="progress mb-3">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 25%" aria-valuenow="25"
                                aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <p class="card-text">Better than last week (25%)</p>
                    </div>

                </div>
                <!-- Card -->

            </div>
            <!-- First column -->

            <!-- Second column -->
            <div class="col-xl-3 col-md-6 mb-xl-0 mb-4">

                <!-- Card -->
                <div class="card card-cascade cascading-admin-card">

                    <!-- Card Data -->
                    <div class="admin-up">
                        <i class="fas fa-chart-line warning-color mr-3 z-depth-2"></i>
                        <div class="data">
                            <p class="text-uppercase">Subscriptions</p>
                            <h4 class="font-weight-bold ">375</h4>
                        </div>
                    </div>

                    <!-- Card content -->
                    <div class="card-body card-body-cascade">
                        <div class="progress mb-3">
                            <div class="progress-bar red accent-2" role="progressbar" style="width: 25%" aria-valuenow="25"
                                aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <p class="card-text">Worse than last week (25%)</p>
                    </div>

                </div>
                <!-- Card -->

            </div>
            <!-- Second column -->

            <!-- Third column -->
            <div class="col-xl-3 col-md-6 mb-md-0 mb-4">

                <!-- Card -->
                <div class="card card-cascade cascading-admin-card">

                    <!-- Card Data -->
                    <div class="admin-up">
                        <i class="fas fa-chart-pie light-blue lighten-1 mr-3 z-depth-2"></i>
                        <div class="data">
                            <p class="text-uppercase">Traffic</p>
                            <h4 class="font-weight-bold ">21 479</h4>
                        </div>
                    </div>

                    <!-- Card content -->
                    <div class="card-body card-body-cascade">
                        <div class="progress mb-3">
                            <div class="progress-bar red accent-2" role="progressbar" style="width: 75%" aria-valuenow="75"
                                aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <p class="card-text">Worse than last week (75%)</p>
                    </div>

                </div>
                <!-- Card -->

            </div>
            <!-- Third column -->

            <!-- Fourth column -->
            <div class="col-xl-3 col-md-6 mb-0">

                <!-- Card -->
                <div class="card card-cascade cascading-admin-card">

                    <!-- Card Data -->
                    <div class="admin-up">
                        <i class="fas fa-chart-bar red accent-2 mr-3 z-depth-2"></i>
                        <div class="data">
                            <p class="text-uppercase">Organic traffic</p>
                            <h4 class="font-weight-bold ">4 567</h4>
                        </div>
                    </div>

                    <!-- Card content -->
                    <div class="card-body card-body-cascade">
                        <div class="progress mb-3">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 25%" aria-valuenow="25"
                                aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <p class="card-text">Better than last week (25%)</p>
                    </div>

                </div>
                <!-- Card -->

            </div>
            <!-- Fourth column -->

        </div>
        <!-- First row -->

    </section>
    <!-- Section: Analytical panel -->

</asp:Content>
