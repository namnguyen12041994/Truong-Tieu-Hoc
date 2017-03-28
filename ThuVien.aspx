<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThuVien.aspx.cs" Inherits="TruongTieuHoc.ThuVien" %>

<%@ Register Src="~/Display/Content/RightArea.ascx" TagPrefix="uc1" TagName="RightArea" %>



<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">            
    <!-- Custom styling plus plugins -->
    <link href="DisplaySource/css/gallery.css" rel="stylesheet">    
    <link rel="stylesheet" href="DisplaySource/css/lightbox.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="dpContent" runat="server">  
    <%--MainBody--%>
    <div class="col-md-8">
        <asp:Repeater ID="rptHinh" runat="server">
            <ItemTemplate>
                <div class="col-md-55">
                    <div class="thumbnail">
                        <div class="image view view-first">
                            <img style="width: 100%; display: block;" src="<%#:Eval("url") %>" alt="<%#:Eval("tieude") %>" />
                            <div class="mask">
                                <p><%#:Eval("ngaycapnhat") %></p>
                                <div class="tools tools-bottom">
                                    <a href="<%#:Eval("url") %>" data-lightbox="image-1" data-title="">Nam</a>
                                </div>
                            </div>
                        </div>
                        <div class="caption">
                            <p class="text-center"><%#:Eval("tieude") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
  <%--///MainBody--%>
    <%--RightArea--%>    
    <div class="col-md-4" >
     <uc1:RightArea runat="server" ID="RightArea" />
    </div>
</asp:Content>
    
<asp:Content ID="Content3" ContentPlaceHolderID="dpJS" runat="server">
   <script type="text/javascript" src="DisplaySource/js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="DisplaySource/js/lightbox.min.js"></script>
</asp:Content>
