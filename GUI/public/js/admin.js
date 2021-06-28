$(document).ready(() => {
    // SideNav Button Initialization
    $(".button-collapse").sideNav();
    // SideNav Scrollbar Initialization
    var sideNavScrollbar = document.querySelector('.custom-scrollbar');
    var ps = new PerfectScrollbar(sideNavScrollbar);

    new WOW().init();
});

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

// thông báo toast
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

// sumernote editor
$(document).ready(function () {
    $('.summernote').summernote({
        placeholder: 'Nhập mô tả sản phẩm...',
        tabsize: 2,
        height: 300,
        minHeight: 100,
        maxHeight: 500,
        focus: true,
        toolbar: [
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['font', ['strikethrough', 'superscript', 'subscript']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview']],
        ],
        popover: {
            image: [
              ['image', ['resizeFull', 'resizeHalf', 'resizeQuarter', 'resizeNone']],
              ['float', ['floatLeft', 'floatRight', 'floatNone']],
              ['remove', ['removeMedia']]
            ],
            link: [
              ['link', ['linkDialogShow', 'unlink']]
            ],
            table: [
              ['add', ['addRowDown', 'addRowUp', 'addColLeft', 'addColRight']],
              ['delete', ['deleteRow', 'deleteCol', 'deleteTable']],
            ],
            air: [
              ['color', ['color']],
              ['font', ['bold', 'underline', 'clear']],
              ['para', ['ul', 'paragraph']],
              ['table', ['table']],
              ['insert', ['link', 'picture']]
            ]
        },
        codemirror: {
            theme: 'monokai'
        }
    });

});

// show - hide pass

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
    $('#ContentPlaceHolder1_txt_mkCu').togglePassword();
    $('#ContentPlaceHolder1_txt_mkMoi').togglePassword();
    $('#ContentPlaceHolder1_txt_nhapLaiMkMoi').togglePassword();
})
