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
                <asp:Repeater ID="rptHinh" runat="server">
                    <ItemTemplate>
                        <div data-p="112.50" style="display: none;">
                            <img data-u="image" src="<%#:Eval("urlhinh") %>" alt="<%#:Eval("tieude") %>" title="<%#:Eval("tieude") %>" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater> 	    
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
		<div class="col-md-4" style="padding-left: 14px">
		<div class="panel panel-default">
			<div class="panel-heading">
			 	<h3 class="panel-title">.:TIN MỚI NHẤT:.</h3>
			</div>
			<div class="panel-body">			 				 			
				<!--<ul id="scroller" class="nav">-->
				<script language="javascript">				    				    
				    var pausecontent1 = new Array();
				    pausecontent1[0] = "<ul class='nav'><%=the1 %></ul>";
				    pausecontent1[1] = "<ul class='nav'><%=the2 %></ul>";
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
			<div class="panel-body" style="padding: 0px;">			 	
                <a href="#" style="margin-bottom: 2px;" class="thumbnail">
                    <img src="../../DisplaySource/images/04.jpg" alt="...">
                </a>    
                <a href="#" style="margin-bottom: 2px;" class="thumbnail">
                    <img src="../../DisplaySource/images/04.jpg" alt="...">
                </a> 
                <a href="#" style="margin-bottom: 2px;" class="thumbnail">
                    <img src="../../DisplaySource/images/04.jpg" alt="...">
                </a>              
			</div>
		</div>
		</div>
</div> <!-- /.slide-->