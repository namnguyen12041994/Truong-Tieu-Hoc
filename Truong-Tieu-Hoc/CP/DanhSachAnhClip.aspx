<%@ Page Title="" Language="C#" MasterPageFile="~/CP/Administrator.Master" AutoEventWireup="true" CodeBehind="DanhSachAnhClip.aspx.cs" Inherits="TruongTieuHoc.CP.DanhSachAnhClip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ForCSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ForContent" runat="server">
    <!-- page content -->
    <div class="right_col" id="clear-min-hight" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Quản lý ảnh - clip</h3>
                </div>

                <div class="title_right">
                    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Danh sách ảnh <small>danh sách hình ảnh nổi bật</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <asp:Repeater ID="rptHinh" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-55">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="<%#:Eval("url") %>" alt="<%#:Eval("tieude") %>" />
                                                <div class="mask">
                                                    <p><%#:Eval("ngaycapnhat") %></p>
                                                    <div class="tools tools-bottom">
                                                        <a href="#"><i class="fa fa-link"></i></a>
                                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                                        <a href="#" data-toggle="modal" onclick="setvalue('?del=x.<%#:Eval("id") %>.del-<%#:Eval("idgia") %>-xoa.html')" data-target="#modalsubmit" ><i class="fa fa-times"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <p class="text-center"><%#:Eval("tieude") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->   

    <div class="clearfix"></div>

    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">            
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Danh sách video clip <small>danh sách video clip nổi bật</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <asp:Repeater ID="rptClip" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-55">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <div class="embed-responsive embed-responsive-4by3">
                                                  <iframe class="embed-responsive-item" src="<%#:Eval("url") %>"></iframe>
                                                </div>
                                                <div class="mask">
                                                    <p><%#:Eval("ngaycapnhat") %></p>
                                                    <div class="tools tools-bottom">
                                                        <a href="#"><i class="fa fa-link"></i></a>
                                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                                        <a href="#" data-toggle="modal" onclick="setvalue('?del=x.<%#:Eval("id") %>.del-<%#:Eval("id") %>-xoa.html')" data-target="#modalsubmit" ><i class="fa fa-times"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <p class="text-center"><%#:Eval("tieude") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content --> 
    
    <div class="modal fade bs-example-modal-sm" id="modalsubmit" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">Xác nhận xóa</h4>
            </div>
            <div class="modal-body">
                <h4>Bạn có chắc muốn xóa tin nhắn này?</h4>                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"> Hủy </button>
                <a id="xoatheoid" href="#"><button type="button" class="btn btn-primary"> Xóa </button></a>
            </div>

        </div>
    </div>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ForJS" runat="server">
    <script src="js/ClearMin-Hight.js" type="text/javascript"></script>
    <!-- Xác nhận xóa -->
    <script src="js/xoadoituong.js"></script>
     <!-- /Xác nhận xóa -->
</asp:Content>
