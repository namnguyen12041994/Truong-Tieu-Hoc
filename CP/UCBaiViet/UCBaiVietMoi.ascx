<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCBaiVietMoi.ascx.cs" Inherits="TruongTieuHoc.CP.UCBaiViet.UCBaiVietMoi" %>

<%@ Register TagPrefix="CKEditor" Namespace="CKEditor.NET" Assembly="CKEditor.NET, Version=3.6.4.0, Culture=neutral, PublicKeyToken=e379cdf2f8354999" %>

<form runat="server" method="POST" class="form-horizontal">
    <div class="form-group input-group">
        <label for="<%=txtTieuDe.ClientID%>" class="control-label col-lg-2">Tiêu đề bài viết:</label>
        <div class="col-lg-6">
            <div class="input-group">
                <span class="input-group-addon"><span class="icon-fire"></span></span>
                <asp:TextBox ID="txtTieuDe" placeholder="Tiêu đề..." CssClass="form-control" runat="server" />
            </div>
        </div>
    </div>

    <div class="form-group input-group">
        <label for="<%=txtTomTat.ClientID%>" class="control-label col-lg-2">Tóm tắt bài viết:</label>
        <div class="col-lg-8">
            <div class="input-group">
                <span class="input-group-addon"><span class="icon-list-alt"></span></span>
                <asp:TextBox ID="txtTomTat" placeholder="Tóm tắt..." CssClass="form-control" runat="server" />
            </div>
        </div>
    </div>

    <div class="form-group input-group">
        <label for="<%=txtContent.ClientID %>" class="control-label col-lg-2">Nội dung bài viết:</label>
        <div class="col-lg-10">
            <CKEditor:CKEditorControl ID="txtContent" runat="server"></CKEditor:CKEditorControl>
        </div>
    </div>
    <br/>
                        
    <div class="form-group">
        <label class="control-label col-lg-2">Ảnh tiêu đề:</label>
        <div class="col-lg-6">
            <div class="fileupload fileupload-new" data-provides="fileupload">
                <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                    <img src="../Admin/assets/img/demoUpload.jpg" alt="" /></div>
                <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                <div>
                    <span class="btn btn-file btn-primary"><span class="fileupload-new">Chọn hình</span><span class="fileupload-exists">Thay đổi</span><input type="file" /></span>
                    <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Xóa</a>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-lg-2">Bài viết mới nhất:</label>
        <div class="col-lg-6">
            <div class="checkbox anim-checkbox" style="margin-top: 0px">
                <asp:CheckBox ID="chkMoiNhat" runat="server"></asp:CheckBox>
                <label for="<%=chkMoiNhat.ClientID %>">Hiển thị là bài viết mới nhất</label>
            </div>
        </div>
    </div>
                             
        <div class="form-group">
        <label class="control-label col-lg-2">Nhóm bài viết:</label>
        <div class="col-lg-2">
            <asp:DropDownList data-placeholder="Chọn nhóm bài đăng" CssClass="form-control chzn-select" ID="dropNhomBaiDang" runat="server" DataSourceID="LinqDataSource1" DataTextField="TenNhom" DataValueField="ID">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TruongTieuHoc.DAL.DBTruongTieuHocDataContext" EntityTypeName="" Select="new (ID, TenNhom)" TableName="tbl_BaiDang_Nhoms">
            </asp:LinqDataSource>
        </div>
    </div>
                        
    <div class="form-group">
        <label class="control-label col-lg-2">Mức độ ưu tiên:</label>
        <div class="col-lg-2">
            <select class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
            </select>
        </div>
    </div>
                        
    <div class="form-group">
        <label class="control-label col-lg-2">Trạng thái bài viết:</label>
        <div class="col-lg-2">
            <div class="make-switch switch-small" data-on="success" data-off="danger">
                <input type="checkbox" checked="checked" />
            </div>
        </div>
    </div>

    <div class="divider"><hr/></div>
    <button type="submit" class="btn btn-primary">Lưu bài viết</button>
    <button type="reset" class="btn btn-default">Hủy tất cả</button>
</form>