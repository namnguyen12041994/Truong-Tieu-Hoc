<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruongTieuHoc.Default" %>

<%@ Register Src="~/Display/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Display/Body.ascx" TagPrefix="uc1" TagName="Body" %>
<%@ Register Src="~/Display/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>.: Trường Tiểu học Bình Đông 1 :.</title>
	<link rel="shortcut icon" href="DisplaySource/images/icon.ico">
    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="DisplaySource/css/bootstrap.min.css" >

    <!-- Optional theme -->
    <link rel="stylesheet" href="DisplaySource/css/bootstrap-theme.min.css">   
    <link rel="stylesheet" href="DisplaySource/css/style.css">
    <link rel="stylesheet" href="DisplaySource/css/slide.css">
      <link href="DisplaySource/css/BacktoTop.css" rel="stylesheet" />
      <link href="DisplaySource/css/pscroller.css" rel="stylesheet" />
      <link href="DisplaySource/css/category.css" rel="stylesheet" type="text/css" />
    <%--<asp:ContentPlaceHolder ID="head" runat="server">

    </asp:ContentPlaceHolder>--%>
      
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="DisplaySource/js/jquery.min.js"></script>
    <!--[if lt IE 9]>
      <script src="DisplaySource/js/html5shiv.min.js"></script>
      <script src="DisplaySource/js/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="DisplaySource/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="DisplaySource/js/jssor.slider.mini.js"></script>
       
    <script type="text/javascript" src="DisplaySource/js/pscroller.js"></script>
     <script src="DisplaySource/js/backtotop.js"></script> 
      


    <script>
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              { $Duration: 1200, $Opacity: 2 }
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 600);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>
  </head>
  <body>	
	<div id="header">
        <uc1:Header runat="server" ID="Header1" />
	</div> <!-- /#header -->
	<div id="ja-slider-block" class="wrap ">		
		<div class="main clearfix">		
		</div>		
	</div>
	<div id="main">
        <uc1:Body runat="server" ID="Body" />
    </div>
	
	<div id="footer">		
        <uc1:Footer runat="server" ID="Footer1" />
	</div><!--  /#footer -->
    
    <div class="button_scroll2top" onclick="page_scroll2top()"></div>
    <!-- Latest compiled and minified JavaScript -->
    <script src="DisplaySource/js/bootstrap.min.js" ></script>
  </body>
</html>
