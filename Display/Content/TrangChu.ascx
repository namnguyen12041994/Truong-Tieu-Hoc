<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.ascx.cs" Inherits="TruongTieuHoc.Display.Content.TrangChu" %>
<%@ Register Src="~/Display/Content/MainBody.ascx" TagPrefix="uc1" TagName="MainBody" %>
<%@ Register Src="~/Display/Content/RightArea.ascx" TagPrefix="uc1" TagName="RightArea" %>
<%@ Register Src="~/Display/Content/SliderArea.ascx" TagPrefix="uc1" TagName="SliderArea" %>




<%--Dành cho SliderArea--%>
<uc1:SliderArea runat="server" ID="SliderArea" />
<%--///SliderArea--%>


<div class="container  content">			
    <div class="row">
         <%--MainBody--%>   
            <div class="col-md-8">
        	    <uc1:MainBody runat="server" ID="MainBody" />
            </div>
        <%--///MainBody--%>

	    <%--RightArea--%>    
            <div class="col-md-4" >
                <uc1:RightArea runat="server" ID="RightArea" />
            </div>   
        <%--///RightArea--%>
    </div>
</div><!--  /.content -->
<div class="container footer">
    <div class="panel panel-info">
	    <div class="panel-heading">
	        <h3 class="panel-title">Panel title</h3>
	    </div>
	    <div class="panel-body">
	        <ul class="nav nav-tabs">
	        <li class=""><a href="#home" data-toggle="tab" aria-expanded="false">Home</a>
	        </li>
	        <li class="active"><a href="#profile" data-toggle="tab" aria-expanded="true">Profile</a>
	        </li>
	        <li class=""><a href="#messages" data-toggle="tab" aria-expanded="false">Messages</a>
	        </li>
	        <li><a href="#settings" data-toggle="tab">Settings</a>
	        </li>
	        </ul>
	        <div class="tab-content">
	        <div class="tab-pane fade" id="home">
	            <h4>Trang chủ</h4>
	            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	        </div>
	        <div class="tab-pane fade" id="profile">
	            <h4>Thẻ thông tin cá nhân</h4>
	            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	        </div>
	        <div class="tab-pane fade" id="messages">
	            <h4>Thẻ tin nhắn</h4>
	            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	        </div>
	        <div class="tab-pane fade active in" id="settings">
	            <h4>Thẻ cài đặt</h4>
	            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	        </div>
	    </div>
	    </div>
	</div>
</div>