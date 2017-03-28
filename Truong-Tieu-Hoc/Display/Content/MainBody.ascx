<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainBody.ascx.cs" Inherits="TruongTieuHoc.Display.Content.MainBody" %>

<div class="col-md-12 col-sm-12">
	
   <%-- tin tức sự kiện--%>
    <div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">.:TIN TỨC - SỰ KIỆN:.</h3>
		</div>
		<div class="panel-body">
		    <div class="r_news_home">
                <table cellpadding="0" cellspacing="0" width="100%" border="0">
                <tbody>
                    <tr>
			        <asp:Repeater ID="rptTinTucSuKien" runat="server">
                        <ItemTemplate>                            
                            <td valign="top" align="center" width="33%">
                                <div class="img_news_h_1">
                                    <div align="center" class="img_news_h">
                                        <a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><img width="186" alt="<%#:Eval("tieude") %>" title="<%#:Eval("tieude") %>" src="<%#:Eval("hinhanh") %>" border="0" style="margin:2px;">
                                        </a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                                <div class="news_t_h"><a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><%#:Eval("tieude") %></a>
                                </div>
                                <div class="clear"></div>
                                <div class="new_teaser_h"><%#:Eval("tomtat") %></div>
                            </td>
                        </ItemTemplate>
                    </asp:Repeater>
		
                    </tr>
                </tbody>
                </table>
           </div>
        </div>
    </div>	
   <%-- thông báo--%>
    <div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">.:THÔNG BÁO:.</h3>
		</div>
		<div class="panel-body">
		    <div class="r_news_home">
                <table cellpadding="0" cellspacing="0" width="100%" border="0">
                <tbody>
                    <tr>
			        <asp:Repeater ID="prtThongBao" runat="server">
                        <ItemTemplate>
                            <td valign="top" align="center" width="33%">
                                <div class="img_news_h_1">
                                    <div align="center" class="img_news_h">
                                        <a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><img width="186" alt="<%#:Eval("tieude") %>" title="<%#:Eval("tieude") %>" src="<%#:Eval("hinhanh") %>" border="0" style="margin:2px;">
                                        </a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                                <div class="news_t_h"><a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><%#:Eval("tieude") %></a>
                                </div>
                                <div class="clear"></div>
                                <div class="new_teaser_h"><%#:Eval("tomtat") %></div>
                            </td>
                        </ItemTemplate>
                    </asp:Repeater>
		
                    </tr>
                </tbody>
                </table>
           </div>
        </div>
    </div>
    <%--hoạt động học tập--%>
    <div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">.:HOẠT ĐỘNG HỌC TẬP:.</h3>
		</div>
		<div class="panel-body">
		    <div class="r_news_home">
                <table cellpadding="0" cellspacing="0" width="100%" border="0">
                <tbody>
                    <tr>
			        <asp:Repeater ID="rptHoatDongHocTap" runat="server">
                        <ItemTemplate>
                            <td valign="top" align="center" width="33%">
                                <div class="img_news_h_1">
                                    <div align="center" class="img_news_h">
                                        <a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><img width="186" alt="<%#:Eval("tieude") %>" title="<%#:Eval("tieude") %>" src="<%#:Eval("hinhanh") %>" border="0" style="margin:2px;">
                                        </a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                                <div class="news_t_h"><a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><%#:Eval("tieude") %></a>
                                </div>
                                <div class="clear"></div>
                                <div class="new_teaser_h"><%#:Eval("tomtat") %></div>
                            </td>
                        </ItemTemplate>
                    </asp:Repeater>
		
                    </tr>
                </tbody>
                </table>
           </div>
        </div>
    </div>
    <%--hoạt động văn nghệ--%>
    <div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">.:HOẠT ĐỘNG VĂN NGHỆ:.</h3>
		</div>
		<div class="panel-body">
		    <div class="r_news_home">
                <table cellpadding="0" cellspacing="0" width="100%" border="0">
                <tbody>
                    <tr>
			        <asp:Repeater ID="rptHoatDongVanNghe" runat="server">
                        <ItemTemplate>
                            <td valign="top" align="center" width="33%">
                                <div class="img_news_h_1">
                                    <div align="center" class="img_news_h">
                                        <a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><img width="186" alt="<%#:Eval("tieude") %>" title="<%#:Eval("tieude") %>" src="<%#:Eval("hinhanh") %>" border="0" style="margin:2px;">
                                        </a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                                <div class="news_t_h"><a href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><%#:Eval("tieude") %></a>
                                </div>
                                <div class="clear"></div>
                                <div class="new_teaser_h"><%#:Eval("tomtat") %></div>
                            </td>
                        </ItemTemplate>
                    </asp:Repeater>
		
                    </tr>
                </tbody>
                </table>
           </div>
        </div>
    </div>            
</div>
