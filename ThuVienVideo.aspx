<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThuVienVideo.aspx.cs" Inherits="TruongTieuHoc.ThuVienVideo" %>
<%@ Register TagPrefix="uc1" TagName="RightArea" Src="~/Display/Content/RightArea.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">            
    <!-- Custom styling plus plugins -->
    <link href="DisplaySource/css/gallery.css" rel="stylesheet">        
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="dpContent" runat="server">
    <%--MainBody--%>
    <div class="col-md-8">
        <asp:Repeater ID="rptVideo" runat="server">
            <ItemTemplate>
                <div class="col-md-55">
                    <div class="thumbnail">
                        <div class="image view view-first">
                            <img style="width: 100%; display: block;" src="<%#:Eval("urlhinh") %>" alt="<%#:Eval("tieude") %>" />
                            <div class="mask">
                                <p><%#:Eval("ngaycapnhat") %></p>
                                <div class="tools tools-bottom">
                                    <a href="<%#:Eval("urlvideo") %>" target="_blank"><i class="fa fa-youtube-play"></i></a>
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
    <div class="col-md-4">
        <uc1:RightArea runat="server" ID="RightArea" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="dpJS" runat="server">

</asp:Content>
