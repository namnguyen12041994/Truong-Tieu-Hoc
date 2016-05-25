<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewCatalo.ascx.cs" Inherits="TruongTieuHoc.Display.Content.ViewCatalo" %>

<div class="col-md-12 col-sm-12">
    <div class="glyphicon glyphicon-stats"></div>&nbsp;»&nbsp;&nbsp;<%#: Eval("tennhom") %>
    <hr>
    <asp:Repeater ID="rptCatalog" runat="server">
        <ItemTemplate>        
            <div class="home_new_1" style="margin:15px 0px 5px 0px;">
		        <div class="home_new_1_teaser">
		            <a href="#"><img width="133" style="margin-right:15px;" align="left" src="<%#: Eval("hinhanh") %>">
		            </a>
		            <div align="left" class="home_new_1_title"><a href="#"><%#: Eval("tieude") %></a>
		            </div>
		            <div align="justify" class="home_new_1_teaser" style="padding-top:10px"><%#: Eval("tomtat") %></div>
		        </div>
		        <div class="clear"></div>
		    </div>
        </ItemTemplate>        
    </asp:Repeater>
	
</div>