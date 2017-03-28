<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="TruongTieuHoc.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">
   <%-- <!-- Custom Theme Style -->
    <link href="cp/build/css/custom.min.css" rel="stylesheet">--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="dpContent" runat="server">
    <div class="container body">
      <div class="main_container">
        <!-- page content -->
        <div class="col-md-12">
          <div class="col-middle">
            <div class="text-center text-center">
              <h1 class="error-number">404</h1>
              <h2>Xin lỗi nhưng trang bạn yêu cầu không tìm thấy</h2>
              <p>Trang này có thể đã bị khóa hoặc yêu cầu không đúng <a href="#"> Báo cáo ?</a>
              </p>
              <div class="mid_center">
                <a href="default.aspx"><button type="button" style="width:300px" class="btn btn-round btn-info">Trở về trang chủ</button></a>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
      </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="dpJS" runat="server">
</asp:Content>
