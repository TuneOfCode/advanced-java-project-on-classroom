<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/Logo-ko-nen.png">
    <title>Đăng nhập hệ thống</title>
    <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/styles/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $(this).scrollTop(0);
        });
    </script>
</head>
<body>
    <div class="signin">                
            <div class="col-image text-center">
                <div class="signin-logo">
                    <a href="https://ums.husc.edu.vn"><img src="${pageContext.request.contextPath}/resources/images/Logo-ko-nen.png" alt=""></a>
                </div>
                <div class="signin-image">
                    <img src="${pageContext.request.contextPath}/resources/images/backgroud.png" alt="">
                </div>
            </div>
            <div class="col-signin">
                <form action="/" method="post" class="form-signin">
                    <img src="${pageContext.request.contextPath}/resources/images/logo-small.png" alt="">
                    <h2 class="form-signin-heading">SINH VIÊN</h2>
                    <div class="form-group">
                        <label for="loginID">Mã sinh viên:</label>
                        <input type="text" id="loginID" name="loginID" class="form-control input-lg" placeholder="Mã sinh viên" required autofocus value="" />
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu:</label>
                        <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Mật khẩu" required value="" />
                    </div>
                    <div class="form-group">
                        <span class="text-danger"></span>
                    </div>
                    <button style="display:flex;align-item: center;justify-content:center;width: 100%;color: #fff;background-color: #337ab7;border-color: #2e6da4" class="btn btn-lg btn-custom btn-primary btn-block " type="submit">Đăng nhập</button>
                </form>
            </div>        
    </div>    
    <footer style="font-size: 16px;">
        <div class="row">
            <div class="col-xs-12 text-center nopadding">
                <p><a href="http://husc.edu.vn" style="color:#fff" target="_blank">Trường Đại học Khoa học, Đại học Huế</a></p>
                <p> <i class="fa fa-home" aria-hidden="true"></i> 77 Nguyễn Huệ, Thành phố Huế, Tỉnh Thừa Thiên Huế, Việt Nam</p>
                <p> <i class="fa fa-mobile" aria-hidden="true"></i> Điện thoại: (+84) 0234.3823290 – Fax: (+84) 0234.3824901</p>                
            </div>
        </div>
    </footer>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.6.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>