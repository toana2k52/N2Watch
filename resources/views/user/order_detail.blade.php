
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <base href="{{asset('')}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="LDT Shop - Thanh toán đơn hàng" />
    
    <title>LDT Shop - Cảm ơn</title>

    
    <link rel="icon" href="public/images/logo_icon.png?1524451884518" type="image/x-icon" />
    

    <link href='//bizweb.dktcdn.net/assets/themes_support/bootstrap.min.css?20171025' rel='stylesheet' type='text/css' />
    <link href='//bizweb.dktcdn.net/assets/themes_support/font-awesome.min.css?20171025' rel='stylesheet' type='text/css' />
    <link href='//bizweb.dktcdn.net/assets/themes_support/thankyou.css?20181105' rel='stylesheet' type='text/css' />


    

    <script>
        var Bizweb = Bizweb || {};
        Bizweb.store = 'N2Watch.com';
        Bizweb.theme = {"id":704696,"role":"main","name":"LDT Shop --- guide"};
    </script>
        <script>
            (function() {
                function asyncLoad() {
                    var urls = ["//productreviews.bizwebapps.vn/assets/js/productreviews.min.js?store=N2Watch.com"];
                    for (var i = 0; i < urls.length; i++) {
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = urls[i];
                        s.src = urls[i];
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                }
                window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad, false);
            })();
        </script>


    </head>

    <body class="body--custom-background-color ">

        <div class="container">
            <div class="header">
                <div class="wrap">
                    <div class="shop logo logo--left ">

                        <h1 class="shop__name">
                            <a href="{{route('user.index')}}">
                                N2Watch.com
                            </a>
                        </h1>

                    </div>
                </div>
            </div>
            <div class="main">
                <div class="wrap clearfix">
                    <div class="row thankyou-infos">
                        <div class="col-md-7 thankyou-message">
                            <div class="thankyou-message-icon unprint">
                                <div class="icon icon--order-success svg">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="72px" height="72px">
                                        <g fill="none" stroke="#8EC343" stroke-width="2">
                                            <circle cx="36" cy="36" r="35" style="stroke-dasharray:240px, 240px; stroke-dashoffset: 480px;"></circle>
                                            <path d="M17.417,37.778l9.93,9.909l25.444-25.393" style="stroke-dasharray:50px, 50px; stroke-dashoffset: 0px;"></path>
                                        </g>
                                    </svg>
                                </div>
                            </div>
                            <div class="thankyou-message-text">
                                <h3 style="margin-top: 5px;">Đặt hàng thành công!</h3>
                                <p>
                                    Cảm ơn bạn đã đặt hàng!
                                </p>
                                <p>Nhân viên hỗ trợ sẽ sớm liên lạc lại với bạn. Hãy chú ý điện thoại nhé!!</p>
                                <div style="font-style: italic;">

                                </div>
                                <a style="padding: 5px 15px; margin-top: 20px" href="{{route('user.index')}}" class="btn btn-primary">Quay về trang chủ</a>
                            </div>
                        </div>
                   </div>
               </div>
            <div class="modal fade" id="refund-policy" data-width="" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                            <h4 class="modal-title">Chính sách hoàn trả</h4>
                        </div>
                        <div class="modal-body">
                            <pre></pre>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="privacy-policy" data-width="" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                            <h4 class="modal-title">Chính sách bảo mật</h4>
                        </div>
                        <div class="modal-body">
                            <pre></pre>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="terms-of-service" data-width="" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                            <h4 class="modal-title">Điều khoản sử dụng</h4>
                        </div>
                        <div class="modal-body">
                            <pre></pre>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
    #map {
        width: 100%;
        height: 245px;
    }

    .hidden-map{
        display:none;
    }
</style>

<script src='//bizweb.dktcdn.net/assets/themes_support/jquery-2.1.3.min.js?20171025' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/bootstrap.min.js?20171025' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/twine.min.js?20171025' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/checkout.js?20180327' type='text/javascript'></script>
<!--<script src="https://bizweb.dktcdn.net/100/000/001/themes/544642/assets/checkout.js?15168730444422222" type='text/javascript'></script>-->
<script src='//bizweb.dktcdn.net/assets/themes_support/thankyou.js?20171025' type='text/javascript'></script>

<script type="text/javascript">
    context = {}

    $(function () {
        Twine.reset(context).bind().refresh();
    });

    window.Bizweb || (window.Bizweb = {});
    Bizweb.Checkout = function () {
        function Checkout(e, options) {
            if (!options)
                options = {};

            this.ele = e;
            this.invalidEmail = false;
        };

        Checkout.prototype.handleClick = function (element) {
            $(element).closest(".field__input-wrapper").find(".field__input").focus();
        }

        Checkout.prototype.handleFocus = function (element) {
            $(element).closest(".field__input-wrapper").addClass("js-is-focused")
        }

        Checkout.prototype.handleFieldBlur = function (element) {
            $(element).closest(".field__input-wrapper").removeClass("js-is-focused")
        }

        Checkout.prototype.changeEmail = function () {
        }

        return Checkout;
    }();
</script>


</body>
</html>