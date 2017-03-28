<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UDanhSachBaiViet.ascx.cs" Inherits="TruongTieuHoc.CP.UCBaiViet.UDanhSachBaiViet" %>


<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Button Example <small>Users</small></h2>
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
                <p>Lưu hoặc in bảng danh sách</p>                
                <form runat="server">
                <table id="datatable-buttons" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">STT</th>
                            <th class="text-center">Tiêu đề</th>
                            <th class="text-center">Tóm tắt</th>
                            <%-- <th class="text-center">Hình ảnh</th>--%>
                            <th class="text-center">Lượt xem</th>
                            <th class="text-center">Ngày đăng</th>
                            <th class="text-center">Người đăng</th>
                            <th class="text-center">Ưu tiên</th>
                            <th class="text-center">Trạng thái</th>
                            <th class="text-center">Nhóm</th>
                            <th class="text-center">Tùy chọn</th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="rptDanhSachBaiViet" runat="server">
                            <ItemTemplate>
                                <tr class="odd gradeX">
                                    <td><%#:Container.ItemIndex+1 %></td>
                                    <td><%#:Eval("tieude") %></td>
                                    <td><%#:Eval("tomtat") %></td>
                                    <%-- <td class="text-center"><%#:Eval("hinhanh") %></td>--%>
                                    <td><%#:Eval("luotxem") %></td>
                                    <td><%#:Eval("ngaydang") %></td>
                                    <td><%#:Eval("nguoidang") %></td>
                                    <td><%#:Eval("uutien") %></td>
                                    <td><%#:Eval("trangthai") %></td>
                                    <td><%#:Eval("nhom") %></td>
                                    <td class="text-center">
                                        <asp:Button runat="server" Text="Chi tiết" ID="btnChiTiet" CssClass="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal" />                                        
                                        <br/>
                                        <asp:Button runat="server" Text="  Sửa  " ID="btnSua" CssClass="btn btn-info btn-xs" />
                                        <br/>
                                        <asp:Button runat="server" Text="  Xóa  " ID="btnXoa" CssClass="btn btn-danger btn-xs" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
               </form>
            </div>
        </div>
    </div>
</div>