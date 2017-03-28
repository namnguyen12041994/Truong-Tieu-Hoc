<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Detail.ascx.cs" Inherits="TruongTieuHoc.CP.UCLienHe.Detail" %>

<a href="?random=back.go.html"><button type="button" class="btn btn-dark"><span class="fa fa-chevron-circle-left"></span> Xem danh sách</button></a>

<asp:Repeater ID="rptDetail" runat="server">
    <ItemTemplate>
        <div class="bs-callout bs-callout-info">
            <h4><b><%#:Eval("hoten") %></b></h4>            
            <hr style="margin: 2px auto 2px auto"/>
            <code style="font-size: 12px"><%#:Eval("ngaynhan") %></code>
            <span class="label label-primary">
                <%#:Eval("email") %>
            </span>
            <br/>
            <span class="divider"></span>
            <p  style="font-size: 18px"><%#:Eval("noidung") %></p>
        </div>
    </ItemTemplate>
</asp:Repeater>