<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruongTieuHoc.Default" %>

<%@ Register TagPrefix="uc1" TagName="RightArea" Src="~/Display/Content/RightArea.ascx" %>
<%@ Register Src="~/Display/Content/SliderArea.ascx" TagPrefix="uc1" TagName="SliderArea" %>
<%@ Register Src="~/Display/Content/MainBody.ascx" TagPrefix="uc1" TagName="MainBody" %>




<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="dpContent" runat="server">
    <uc1:SliderArea runat="server" ID="SliderArea" />
    <%--MainBody--%>
    <div class="col-md-8">
        <uc1:MainBody runat="server" ID="MainBody" />
    </div>
    <%--///MainBody--%>

    <%--RightArea--%>
    <div class="col-md-4">
        <uc1:RightArea runat="server" ID="RightArea" />
    </div>
    <%--///RightArea--%>
</asp:Content>    
    

<asp:Content ID="Content2" ContentPlaceHolderID="dpJS" runat="server">
    <script type="text/javascript" src="DisplaySource/js/jssor.slider.mini.js"></script>
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
    
</asp:Content>
