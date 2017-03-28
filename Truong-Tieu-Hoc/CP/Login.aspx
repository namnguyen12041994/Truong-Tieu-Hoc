<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TruongTieuHoc.CP.Login" %>

<!DOCTYPE html>
<html class="bootstrap-admin-vertical-centered">
    <head>
        <title>.:Đăng nhập:.</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="../Admin/assets/plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="../Admin/assets/plugins/bootstrap/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="../Admin/assets/css/bootstrap-admin-theme.css">

        <!-- Custom styles -->
        <style type="text/css">
            .alert{
                margin: 0 auto 20px;
                display: none;
            }
        </style>
        
    </head>
    <body class="bootstrap-admin-without-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-danger" <%=thongbao %> >
                        <a class="close" data-dismiss="alert" href="#">&times;</a>    
                        Sai tên người dùng hoặc mật khẩu                    
                        
                    </div>
                    <form method="post" runat="server" action="#" class="bootstrap-admin-login-form">
                        <h1>Đăng nhập</h1>
                        <div class="form-group">
                            <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Tài khoản..." runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" placeholder="Mật khẩu..." runat="server"></asp:TextBox>
                        </div>                       
                        <div class="form-group">
                            <label>
                                <asp:CheckBox ID="chkRememberMe" runat="server"></asp:CheckBox>
                                Nhớ mật khẩu đăng nhập
                            </label>
                        </div>
                        <asp:Button runat="server" CssClass="btn btn-lg btn-primary" Text="Đăng nhập" ID="btnLogin" OnClick="btnLogin_Click"></asp:Button>
                    </form>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
        <script type="text/javascript" src="../Admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(function() {
                // Setting focus
                $('input[name="email"]').focus();

                // Setting width of the alert box
                var alert = $('.alert');
                var formWidth = $('.bootstrap-admin-login-form').innerWidth();
                var alertPadding = parseInt($('.alert').css('padding'));

                if (isNaN(alertPadding)) {
                    alertPadding = parseInt($(alert).css('padding-left'));
                }

                $('.alert').width(formWidth - 2 * alertPadding);
            });
        </script>
    </body>
</html>