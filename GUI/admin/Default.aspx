<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GUI.admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="../../public/images/fav_logo.png" type="image/png" sizes="192x192" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Login Admin</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <!-- Bootstrap core CSS -->
    <link href="../MDB/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Material Design Bootstrap -->
    <link href="../MDB/css/mdb.min.css" rel="stylesheet" />
    <!-- Your custom styles (optional) -->
    <style>
        html,
        body,
        header,
        .view {
            height: 100%;
            padding: 20px;
        }

        @media (min-width: 560px) and (max-width: 740px) {
            html,
            body,
            header,
            .view {
                height: 650px;
            }
        }

        @media (min-width: 800px) and (max-width: 850px) {
            html,
            body,
            header,
            .view {
                height: 650px;
            }
        }

        .flex {
            display: flex;
            height: 95vh;
            align-items: center;
        }

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
            .form-header{
               
                
               
            }
            .font-weight-500{
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                margin: auto;
                margin-bottom: 2rem !important;
            }
            .form_control_in{
                padding: 0 20px;
                border: 1px solid #eee;
                border-radius: 4px;
                width: 100%;
                height: 50px;
                transition: 0.25s ease;
                outline: none;
                
            }
            .form_control_in:focus{
                border: 1px solid #6a5af9 !important;
            }
            .form_control_in:not(:placeholder-shown) + .form_label,
            .form_control_in:focus + .form_label{
                top: 0;
                padding: 0 10px;
                display: inline-block;
                background: #fff;
                color: #6a5af9;
                left: 11px;
            }
            .form-outline{
                position: relative;

            }
            
            .form_label{
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                left: 21px;
                user-select: none;
                color: #999;
                pointer-events: none;
                transition: 0.25s ease;
            }
            .card-body{
                box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px !important;
                height: 520px;
            }
            .btn-mdb-color{
                margin-top: 10px !important;
                border-radius: 14px;
                background-color: #4285F4 !important;
            }
            .btn-mdb-color:hover{
                box-shadow: none !important;
                background-color: #00ff21 !important;
            }
            .ad_user{
                width: 60px;
                height: 60px;
                background: #4285F4;
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center; 
                margin: auto;   
            }
            .fa-user-lock{
                font-size: 30px;
                margin: auto;
                color: #fff;
                
            }
            .custom-shape-divider-top-1625579086 {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                overflow: hidden;
                line-height: 0;
                transform: rotate(180deg);
            }

            .custom-shape-divider-top-1625579086 svg {
                position: relative;
                display: block;
                width: calc(146% + 1.3px);
                height: 320px;
            }

            .custom-shape-divider-top-1625579086 .shape-fill {
                fill: #6a5af9;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="flex">
       <div class="custom-shape-divider-top-1625579086">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
    </svg>
</div>
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-5">

                    <!-- Form with header -->
                    <div class="card wow fadeIn" data-wow-delay="0.3s">
                        <div class="card-body">
                                <div class="ad_user">
                                 <i class="fas fa-user-lock"></i>

                                </div>
                                <h3 class="font-weight-500 my-2 py-1"> ADMIN</h3>
                           
                            <!-- Body -->
                            <div class="form-outline mb-4">
                                <asp:TextBox ID="txt_tdn" class="form_control_in" runat="server" required placeholder=" "></asp:TextBox>
                                <label for="txt_tdn" class="form_label">Tên đăng nhập</label>
                            </div>

                            <div class="form-outline mb-4">
                                <asp:TextBox ID="txt_pw" type="password" class="form_control_in" runat="server" required placeholder=" "></asp:TextBox>
                                <label for="txt_pw" class="form_label">Mật khẩu</label>
                            </div>
                            <div class="col text-right">
                              <!-- Simple link -->
                              <a href="#!">Quên Mật Khẩu?</a>
                            </div>
                            <span id="login-failed" class="animated shake text-center">*Sai thông tin đăng nhập</span>
                            <div id="remove" class="mt-5 mb-4">
                                <asp:Button ID="btn_login" CssClass="btn btn-mdb-color btn-lg btn-block" runat="server" Text="Đăng nhập" OnClick="btn_login_Click" Width="400px" />
                            </div>
                            <a href="../customer/trang-chu/"><i class="fas fa-angle-double-left"></i> Trang khách hàng</a>
                        </div>
                    </div>
                    <!-- Form with header -->

                </div>
            </div>
        </div>
        <asp:Literal ID="ltr_codeJS" runat="server"></asp:Literal>

        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script type="text/javascript" src="../MDB/js/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="../MDB/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="../MDB/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="../MDB/js/mdb.min.js"></script>

                <%--<script>

                    //show - hide pass
                    (($) => {

                        class Toggle {

                            constructor(element, options) {

                                this.defaults = {
                                    icon: 'fa-eye-slash'
                                };

                                this.options = this.assignOptions(options);

                                this.$element = element;
                                this.$button = $(`<button type="button" class="btn-toggle-pass"><i class="fa ${this.options.icon}"></i></button>`);

                                this.init();
                            };

                            assignOptions(options) {

                                return $.extend({}, this.defaults, options);
                            }

                            init() {

                                this._appendButton();
                                this.bindEvents();
                            }

                            _appendButton() {
                                this.$element.after(this.$button);
                            }

                            bindEvents() {

                                this.$button.on('click touchstart', this.handleClick.bind(this));
                            }

                            handleClick() {

                                let type = this.$element.attr('type');

                                type = type === 'password' ? 'text' : 'password';

                                this.$element.attr('type', type);
                                this.$button.toggleClass('active');
                            }
                        }

                        $.fn.togglePassword = function (options) {
                            return this.each(function () {
                                new Toggle($(this), options);
                            });
                        }

                    })(jQuery);

                    $(document).ready(function () {
                        $('#txt_pw').togglePassword();
                    })
                </script>--%>
        

    </form>
</body>
</html>
