<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderArea.ascx.cs" Inherits="TruongTieuHoc.Display.Content.SliderArea" %>

<div class="container slide">
		<div class="col-md-6">
		<div id="jssor_1" style="margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; visibility: hidden;">
			<!-- Loading Screen -->
			<div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
			    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
			    <div style="position:absolute;display:block;background:url('../../DisplaySource/images/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
			</div>
			<div data-u="slides" style="cursor: default; border-radius: 5px; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;">
			    <div data-p="112.50" style="display: none;">
			        <img data-u="image" src="../../DisplaySource/images/02.jpg" />
			    </div>
			    <div data-p="112.50" style="display: none;">
			        <img data-u="image" src="../../DisplaySource/images/04.jpg" />
			    </div>
			    <div data-p="112.50" style="display: none;">
			        <img data-u="image" src="../../DisplaySource/images/05.jpg" />
			    </div>
			    <div data-p="112.50" style="display: none;">
			        <img data-u="image" src="../../DisplaySource/images/09.jpg" />
			    </div>
			</div>
			<!-- Bullet Navigator -->
			<div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
			    <!-- bullet navigator item prototype -->
			    <div data-u="prototype" style="width:16px;height:16px;"></div>
			</div>
			<!-- Arrow Navigator -->
			<span data-u="arrowleft" class="jssora12l" style="top:0px;left:0px;width:30px;height:46px;" data-autocenter="2"></span>
			<span data-u="arrowright" class="jssora12r" style="top:0px;right:0px;width:30px;height:46px;" data-autocenter="2"></span>
			<a href="http://www.jssor.com" style="display:none">Bootstrap Carousel</a>
		</div>
		</div>
		<div class="col-md-4">
		<div class="panel panel-default">
			<div class="panel-heading">
			 	<h3 class="panel-title">.:TIN MỚI NHẤT:.</h3>
			</div>
			<div class="panel-body">			 				 			
				<!--<ul id="scroller" class="nav">-->
				<script language="javascript">
					var pausecontent1 = new Array();
					pausecontent1[0] = "<ul class='nav'><li><a href='/topic/?7630' title='Thông báo chiêu sinh các lớp ngắn hạn An toàn lao động, Phòng cháy chữa cháy, xác định bậc thợ 3/7, nâng bậc thợ 4/7 (xây dựng, hàn, điện công nghiệp, ô tô,...)'>Thông báo chiêu sinh các lớp ngắn hạn An toàn lao động, Phòng cháy chữa ...</a></li><li><a href='/topic/?7567' title='Thông báo lớp Bồi dưỡng chuyên đề “Dinh dưỡng học đường” khóa 5 ( Lần 2)'>Thông báo lớp Bồi dưỡng chuyên đề “Dinh dưỡng học đường” khóa 5 ( Lần ...</a></li><li><a href='/topic/?7566' title='Thông báo lớp Bồi dưỡng chuyên đề “Bảo mẫu Mầm non” Khóa 5 ( Lần 2)'>Thông báo lớp Bồi dưỡng chuyên đề “Bảo mẫu Mầm non” Khóa 5 ( Lần ...</a></li><li><a href='/topic/?7565' title='Thông báo lớp Bồi dưỡng Huấn luyện viên AEROBIC Mẫu Giáo Khóa 2 (Lần 2)'>Thông báo lớp Bồi dưỡng Huấn luyện viên AEROBIC Mẫu Giáo Khóa 2 (Lần 2) </a></li><li><a href='/topic/?7534' title='Thông báo chiêu sinh lớp tiếng Nhật giao tiếp trong công việc'>Thông báo chiêu sinh lớp tiếng Nhật giao tiếp trong công việc </a></li><li><a href='/topic/?7371' title='Thông báo thi CCQG Tin học K41'>Thông báo thi CCQG Tin học K41 </a></li></ul>";
					pausecontent1[1] = "<ul class='nav'><li><a href='/topic/?7370' title='Thông báo chiêu sinh các lớp tin học, ngoại ngữ ngày 26/02/2016'>Thông báo chiêu sinh các lớp tin học, ngoại ngữ ngày 26/02/2016 </a></li><li><a href='/topic/?7318' title='Kết quả điểm kiểm tra cấp chứng chỉ quốc gia Tin học trình độ A, B khóa 40'>Kết quả điểm kiểm tra cấp chứng chỉ quốc gia Tin học trình độ A, ...</a></li><li><a href='/topic/?7301' title='Thông báo chiêu sinh lớp Bồi dưỡng chuyên đề “Bảo mẫu Mầm non” Khóa 5'>Thông báo chiêu sinh lớp Bồi dưỡng chuyên đề “Bảo mẫu Mầm non” Khóa 5 </a></li><li><a href='/topic/?7302' title='Thông báo chiêu sinh lớp Bồi dưỡng chuyên đề “Dinh dưỡng học đường” khóa 5'>Thông báo chiêu sinh lớp Bồi dưỡng chuyên đề “Dinh dưỡng học đường” khóa 5 </a></li><li><a href='/topic/?7067' title='Kết quả điểm kiểm tra kỳ kiểm tra cấp chứng chủ quốc gia Tin học trình độ A, B khóa 39'>Kết quả điểm kiểm tra kỳ kiểm tra cấp chứng chủ quốc gia Tin học ...</a></li><li><a href='/topic/?5648' title='Thông báo tổ chức các lớp ngoại ngữ không chuyên cho sinh viên khoá 14'>Thông báo tổ chức các lớp ngoại ngữ không chuyên cho sinh viên khoá 14 </a></li></ul>";
				</script>
				<script language="javascript">
					new pausescroller(pausecontent1, 'pscontent1', '', 5000, 40);
				</script>
				<p style="padding-right: 10px; margin-bottom: 5px;" align="right"><a href="#">&gt;&gt; xem thêm</a>
				</p>
				<!--</ul>-->						
			</div>
		</div>
		</div>
		<div class="col-md-2">
		<div class="panel panel-default">
			<div class="panel-body">
			 	Dành cho hình ảnh
			</div>
		</div>
		</div>
</div> <!-- /.slide-->