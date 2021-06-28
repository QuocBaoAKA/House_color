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
    </style>
</head>
<body>
    <form id="form1" runat="server" class="flex">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-5">

                    <!-- Form with header -->
                    <div class="card wow fadeIn" data-wow-delay="0.3s">
                        <div class="card-body">

                            <!-- Header -->
                            <div class="form-header mdb-color">
                                <h3 class="font-weight-500 my-2 py-1"></i> ADMIN</h3>
                            </div>

                            <!-- Body -->
                            <div class="md-form">
                                <i class="fas fa-user prefix"></i>
                                <asp:TextBox ID="txt_tdn" class="form-control" runat="server" required></asp:TextBox>
                                <label for="txt_tdn">Tên đăng nhập</label>
                            </div>

                            <div class="md-form">
                                <i class="fas fa-lock prefix"></i>
                                <asp:TextBox ID="txt_pw" type="password" class="form-control" runat="server" required></asp:TextBox>
                                <label for="txt_pw">Mật khẩu</label>
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

        <script>

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
        </script>
        

    </form>
</body>
</html>
