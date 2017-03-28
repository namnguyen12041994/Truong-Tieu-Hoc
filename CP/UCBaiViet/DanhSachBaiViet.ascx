<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachBaiViet.ascx.cs" Inherits="TruongTieuHoc.CP.UCBaiViet.DanhSachBaiViet" %>

<div class="panel-body">
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover" id="datatable">
            <thead>
                <tr>
                    <th class="text-center">ID</th>
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
                <asp:Repeater ID="rptNguoiDung" runat="server">
                    <ItemTemplate>
                        <tr class="odd gradeX">
                            <td><%#:Eval("id") %></td>
                            <td><%#:Eval("tieude") %></td>
                            <td><%#:Eval("tomtat") %></td>
                           <%-- <td class="text-center"><%#:Eval("hinhanh") %></td>--%>
                            <td ><%#:Eval("luotxem") %></td>
                            <td ><%#:Eval("ngaydang") %></td>
                            <td ><%#:Eval("nguoidang") %></td>
                            <td ><%#:Eval("uutien") %></td>
                            <td ><%#:Eval("trangthai") %></td>
                            <td ><%#:Eval("nhom") %></td>
                            <td class="text-center">
                                <asp:Button runat="server" Text="Sửa" ID="btnSua" CssClass="btn btn-warning btn-sm" />
                                <asp:Button runat="server" Text="Chi tiết" ID="btnChiTiet" CssClass="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal" />
                                <asp:Button runat="server" Text="Xóa" ID="btnXoa" CssClass="btn btn-danger btn-sm" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
</div>
        