<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="TruongTieuHoc.Display.Header" %>

<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<img src="../DisplaySource/images/logo.png" class="img-responsive" alt="Image">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Mở rộng</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="./default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Trang chủ</a>
		</div>				
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Giới thiệu <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Giới thiệu về trường</a></li>
						<li><a href="#">Ban giám hiệu</a></li>
						<li><a href="#">Thành tích</a></li>
						<li><a href="#">Truyền thống</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Hoạt động <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="danhmuc.aspx?cata=giangday.html">Giảng dạy</a></li>						
						<li><a href="danhmuc.aspx?cata=vannghe.html">Văn nghệ</a></li>
						<li><a href="danhmuc.aspx?cata=hoatdongkhac.html">Hoạt động khác</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tin tức - Sự kiện <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="danhmuc.aspx?cata=tinnhatruong.html">Tin nhà trường</a></li>
						<li><a href="danhmuc.aspx?cata=tintonghop.html">Tin tổng hợp</a></li>
						<li><a href="danhmuc.aspx?cata=tingiaoducvadaotao.html">Tin từ phòng GD&ĐT</a></li>
						<li><a href="danhmuc.aspx?cata=gioithieusach.html">Giới thiệu sách</a></li>
						<li><a href="danhmuc.aspx?cata=hoatdongdoi.html">Hoạt động Đoàn - Đội</a></li>
						<li><a href="danhmuc.aspx?cata=hoptacquocte.html">Hợp tác quốc tế</a></li>							
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Thư viện điện tử <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="thuvien.aspx">Thư viện ảnh</a></li>
						<li><a href="thuvienvideo.aspx">Thư viện video</a></li>
						<li><a href="#">Thư viện sách điện tử</a></li>
						<li><a href="danhmuc.aspx?cata=vanbanchidao.html">Văn bản chỉ đạo</a></li>	
					</ul>
				</li>
				<li class=""><a href="danhmuc.aspx?cata=thongbao.html">Thông báo</a></li>
				<li class=""><a href="./lienhe.aspx">Liên hệ</a></li>
			</ul>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group form-group-sm">
					<input type="text" class="form-control" placeholder="Tìm kiếm...">
				</div>						
			</form>
		</div><!-- /.navbar-collapse -->
					
	</div>
</nav>