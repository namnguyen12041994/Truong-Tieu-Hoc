<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UAllContact.ascx.cs" Inherits="TruongTieuHoc.CP.UCLienHe.UAllContact" %>


<div class="" role="tabpanel" data-example-id="togglable-tabs">
    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Tất cả</a>
        </li>
        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Chưa đọc</a>
        </li>
        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Đã đọc</a>
        </li>
    </ul>
    <div id="myTabContent" class="tab-content">

        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
            <div class="x_content">
                <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action">
                        <thead>
                            <tr class="headings">
                                <th>
                                    <input type="checkbox" id="check-all" class="flat">
                                </th>
                                <th>ID</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Nội dung</th>
                                <th>Trạng thái</th>
                                <th class="column-title no-link last"><span class="nobr">Tùy chọn</span>
                                </th>
                                <th class="bulk-actions" colspan="7">
                                    <a class="antoo" style="color: #fff; font-weight: 500;"> ( <span class="action-cnt"></span>) <i class="fa fa-chevron-down"></i></a>
                                </th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr class="even pointer">
                                <asp:Repeater ID="rptAllMess" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td><%#:Container.ItemIndex+1 %></td>
                                            <td>
                                                <a href="?detail=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html"><%#:Eval("hoten") %></a>
                                                <br />
                                                <small>Ngày nhắn <%#:Eval("ngaynhan") %></small>
                                            </td>
                                            <td>
                                                <a><%#:Eval("email") %></a>
                                            </td>
                                            <td>
                                                <a><%#:Eval("noidung") %></a>
                                            </td>
                                            <td>
                                                <a><button type="button" class="btn btn-info btn-xs"><%#:Eval("trangthai") %></button></a>
                                            </td>
                                            <td>
                                                <a href="?detail=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> Xem chi tiết</a>
                                                <a href="#" data-toggle="modal" onclick="setvalue('?del=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html')" data-target="#modalsubmit" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Xóa </a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </tbody>                                
                    </table>
                </div>
            </div>
        </div>

        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
           <div class="x_content">
                <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action">
                        <thead>
                            <tr class="headings">
                                <th>
                                    <input type="checkbox" id="check-all" class="flat">
                                </th>
                                <th>ID</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Nội dung</th>
                                <th>Ngày nhận</th>
                                <th class="column-title no-link last"><span class="nobr">Tùy chọn</span>
                                </th>
                                <th class="bulk-actions" colspan="7">
                                    <a class="antoo" style="color: #fff; font-weight: 500;"> ( <span class="action-cnt"></span>) <i class="fa fa-chevron-down"></i></a>
                                </th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr class="even pointer">
                                <asp:Repeater ID="rptNotRead" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td><%#:Container.ItemIndex+1 %></td>
                                            <td>
                                                <a href="?detail=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html"><%#:Eval("hoten") %></a>
                                                <br />
                                                <small>Ngày nhắn <%#:Eval("ngaynhan") %></small>
                                            </td>
                                            <td>
                                                <a><%#:Eval("email") %></a>
                                            </td>
                                            <td>
                                                <a><%#:Eval("noidung") %></a>
                                            </td>
                                            <td>
                                                <a><%#:Eval("ngaynhan") %></a>
                                            </td>
                                            <td>
                                                <a href="?detail=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> Xem chi tiết</a>
                                                <a href="#" data-toggle="modal" onclick="setvalue('?del=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html')" data-target="#modalsubmit" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Xóa </a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </tbody>                                
                    </table>
                </div>
            </div>
        </div>

        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
              <div class="x_content">
                <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action">
                        <thead>
                            <tr class="headings">
                                <th>
                                    <input type="checkbox" id="check-all" class="flat">
                                </th>
                                <th>ID</th>
                                <th>Họ tên</th>
                                <th>Email</th>
                                <th>Nội dung</th>
                                <th>Ngày nhận</th>
                                <th class="column-title no-link last"><span class="nobr">Tùy chọn</span>
                                </th>
                                <th class="bulk-actions" colspan="7">
                                    <a class="antoo" style="color: #fff; font-weight: 500;"> ( <span class="action-cnt"></span>) <i class="fa fa-chevron-down"></i></a>
                                </th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr class="even pointer">
                                <asp:Repeater ID="rptRead" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat" name="table_records">
                                            </td>
                                            <td><%#:Container.ItemIndex+1 %></td>
                                            <td>
                                                <a href="?detail=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html"><%#:Eval("hoten") %></a>
                                                <br />
                                                <small>Ngày nhắn <%#:Eval("ngaynhan") %></small>
                                            </td>
                                            <td>
                                                <a><%#:Eval("email") %></a>
                                            </td>
                                            <td>
                                                <a><%#:Eval("noidung") %></a>
                                            </td>
                                            <td>
                                                <a><%#:Eval("ngaynhan") %></a>
                                            </td>
                                            <td>
                                                <a href="?detail=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> Xem chi tiết</a>
                                                <a href="#" data-toggle="modal" onclick="setvalue('?del=x.<%#:Eval("id") %>.<%#:Eval("idgia")%>de.html')" data-target="#modalsubmit" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Xóa </a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                        </tbody>                                
                    </table>
                </div>
            </div>                 
        </div>
    </div>
</div>

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