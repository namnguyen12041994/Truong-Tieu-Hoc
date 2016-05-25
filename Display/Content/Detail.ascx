<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="TruongTieuHoc.Display.Content.Detail" %>

<div class="col-md-12 col-sm-12">
    <asp:Repeater ID="rptChiTiet" runat="server">
        <ItemTemplate>
        <div class="glyphicon glyphicon-stats"></div>&nbsp;<%#: Eval("tennhom") %>
            <hr>
            <h3><%#: Eval("tieude") %></h3>
           <div class="noidungchinh">
               <%#: Eval("noidungchinh") %>
           </div>
            <div style="float: left"><%#: Eval("ngaydang") %></div>
            <div style="float: right"><%#: Eval("tacgia") %></div>
        </ItemTemplate>        
    </asp:Repeater>
	
</div>