<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="TruongTieuHoc.ChiTiet" %>
<%@ Register TagPrefix="uc1" TagName="RightArea" Src="~/Display/Content/RightArea.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">
	<link rel="stylesheet" href="displaysource/css/detail.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="dpContent" runat="server">        
    <%--<asp:PlaceHolder ID="phError" runat="server"></asp:PlaceHolder>--%>
    <div class="col-md-8">
        
                <article class="item-page">
                    <asp:Repeater ID="rptChiTiet" runat="server">
                        <ItemTemplate>
                            <h2><%#: Eval("tieude") %></h2>
                            <dl class="article-info">
                                <dt class="article-info-term">Chi tiết</dt>
                                <dd class="category-name">Chuyên mục: <a href="#"><%#: Eval("tennhom") %></a> </dd>
                                <dd class="published">Được đăng: <%#: Eval("ngaydang") %> </dd>
                                <dd class="hits">Lượt xem: <%#: Eval("luotxem") %> </dd>
                            </dl>

                            <p style="text-align: justify;">
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;<%#: Eval("tomtat") %> </strong>
                            </p>

                            <p style="text-align: justify;"><%#: Eval("noidungchinh") %> </p>

                            <p style="text-align: right;">
                                <strong>Theo <%#: Eval("tacgia") %></strong>
                            </p>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="related-items-title">Bài viết cùng chủ đề : </div>
                    <ul class="related-items">
                        <asp:Repeater ID="rptTinLienQuan" runat="server">
                            <ItemTemplate>
                                <li class="related-item">
                                    <a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><%#:Eval("tieude") %></a>
                                    <a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html">
                                        <span class="related-item-date">( <%#:Eval("ngaydang") %> )</span>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>                        
                    </ul>
                    <ul class="pager pagenav">
                        <li class="previous">
                            <a href="default.aspx" rel="prev">
                                <span class="icon-chevron-left"></span>Trang trước </a>
                        </li>
                    </ul>

                </article>
            
    </div>
    
    <%--RightArea--%>    
    <div class="col-md-4" >
     <uc1:RightArea runat="server" ID="RightArea" />
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="dpJS" runat="server">
</asp:Content>
