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

			<a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Trang chủ</a>
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
						<li><a href="#">Giảng dạy</a></li>
						<li><a href="#">Công đoàn</a></li>
						<li><a href="#">Văn nghệ</a></li>
						<li><a href="#">Hoạt động khác</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tin tức - Sự kiện <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Tin nhà trường</a></li>
						<li><a href="#">Tin tổng hợp</a></li>
						<li><a href="#">Tin từ phòng GD&ĐT</a></li>
						<li><a href="#">Giới thiệu sách</a></li>
						<li><a href="#">Hoạt động Đoàn - Đội</a></li>
						<li><a href="#">Hợp tác quốc tế</a></li>							
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Thư viện điện tử <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Thư viện ảnh</a></li>
						<li><a href="#">Thư viện video</a></li>
						<li><a href="#">Thư viện sách điện tử</a></li>
						<li><a href="#">Văn bản chỉ đạo</a></li>	
					</ul>
				</li>
				<li class=""><a href="#">Thông báo</a></li>
				<li class=""><a href="#">Liên hệ</a></li>
			</ul>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group form-group-sm">
					<input type="text" class="form-control" placeholder="Tìm kiếm...">
				</div>						
			</form>
		</div><!-- /.navbar-collapse -->
					
	</div>
</nav>