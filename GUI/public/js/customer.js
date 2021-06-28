
// Basic example
$(document).ready(function () {
    $('.datatable').DataTable({
        searching: true,
        paging: true,
        ordering: true,
        info: false,
        "lengthMenu": [[10, 20, 50, -1], [10, 20, 50, "Tất cả"]],
        language: {
            lengthMenu: "Hiển thị _MENU_ bản ghi",
            search: "Tìm kiếm ",
            zeroRecords: "Không tìm thấy",
            infoEmpty: "Không có bản ghi nào",
            info: "Hiển thị _START_ đến _END_ bản ghi trong tổng _TOTAL_ bản ghi",
            paginate: {
                first: "Premier",
                previous: "Trước",
                next: "Sau",
                last: "Dernier"
            },
        } // false to disable search (or any other option)
    });
    $('.dataTables_length').addClass('bs-select');
});

// Material Select Initialization
$(document).ready(function () {
    $('.mdb-select').materialSelect();
});

toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": true,
    "progressBar": true,
    "positionClass": "md-toast-top-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": 300,
    "hideDuration": 1000,
    "timeOut": 2000,
    "extendedTimeOut": 1000,
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}

// Hiển thị thêm
$(function () {

    $(".load-more").slice(0, 9).show();
    if ($(".load-more:hidden").length == 0) {
        $("#loadMore").hide();
    }
    $("#loadMore").on('click', function (e) {
        e.preventDefault();
        $(".load-more:hidden").slice(0, 9).slideDown();
        if ($(".load-more:hidden").length == 0) {
            $("#loadMore").hide();
        }
    });
});

$(function () {
    $(".load-more-tk").slice(0, 12).show();
    if ($(".load-more-tk:hidden").length == 0) {
        $("#loadMoreTimKiem").hide();
    }
    $("#loadMoreTimKiem").on('click', function (e) {
        e.preventDefault();
        $(".load-more-tk:hidden").slice(0, 12).slideDown();
        if ($(".load-more-tk:hidden").length == 0) {
            $("#loadMoreTimKiem").hide();
        }
    });
});

$(window).scroll(function () {
    if ($(window).scrollTop() > 100) {
        $('#back-to-top').addClass('show');
    } else {
        $('#back-to-top').removeClass('show');
    }
});

// back to top
$('#back-to-top').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, '100');
});

// max min filter
$(document).ready(function () {
    const $valueSpan = $('.valueSpanMin');
    const $value = $('#ContentPlaceHolder1_minPrice');
    $valueSpan.html($value.val().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + ' vnđ');
    $value.on('input change', () => {
        $valueSpan.html($value.val().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + ' vnđ');
    });
});

$(document).ready(function () {
    const $valueSpan = $('.valueSpanMax');
    const $value = $('#ContentPlaceHolder1_maxPrice');
    $valueSpan.html($value.val().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + ' vnđ');
    $value.on('input change', () => {
        $valueSpan.html($value.val().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + ' vnđ');
    });
});

// Tooltips Initialization
$(function () {
    $('[data-toggle="tooltip"]').tooltip()
})

// Thông báo của giỏ hàng
function hienThiThongBaoChiTietSP() {
    var x = document.getElementById("ContentPlaceHolder1_rpt_chiTietSP_txt_slMua_0");
    if(parseInt(x.value) > 0){
        if (parseInt(x.value) <= parseInt(x.max)) {
        toastr.success('Thêm sản phẩm vào giỏ hàng thành công')
        }
    }
}

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
    $('#ContentPlaceHolder1_txt_mk').togglePassword();
    $('#ContentPlaceHolder1_txt_taoMK').togglePassword();
    $('#ContentPlaceHolder1_txt_nhapLaiMk').togglePassword();
    $('#ContentPlaceHolder1_txt_mkCu').togglePassword();
    $('#ContentPlaceHolder1_txt_mkMoi').togglePassword();
    $('#ContentPlaceHolder1_txt_nhapLaiMkMoi').togglePassword();
})

