﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RightArea.ascx.cs" Inherits="TruongTieuHoc.Display.Content.RightPage" %>


<div class="panel panel-warning">
	<div class="panel-heading">
		<h3 class="panel-title">.:TÀI NGUYÊN:.</h3>
	</div>
	<div class="panel-body">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius est labore aliquid aperiam magnam officiis quas repudiandae autem, ducimus mollitia? Voluptatum laborum ratione repellat itaque neque molestiae. Nobis, nam, dolores.</p>
	</div>
</div>
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">.:GIỚI THIỆU:.</h3>
	</div>
	<div class="panel-body">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate cum voluptas sapiente ex, quos adipisci enim tempore temporibus, maxime aliquid distinctio nam voluptatum rem tempora, corporis ipsam, earum animi quod.</p>
	</div>
</div>
<div class="panel panel-danger ">
	<div class="panel-heading">
		<h3 class="panel-title">.:TRUY CẬP:.</h3>
	</div>    
    <div class="panel-body access">
        <form runat="server">
            <div>- Đang online: <span>
                <asp:Label Text="Đang online" runat="server" ID="lbOnline"></asp:Label></span></div>
            <div>- Trong ngày: <span>j</span></div>
            <div>- Trong tháng: <span>none</span></div>
            <div>- Tổng lượt truy cập: <span>
                <asp:Label Text="Tổng" runat="server" ID="lbTongTruyCap"></asp:Label></span></div>
        </form>
    </div>
</div>
