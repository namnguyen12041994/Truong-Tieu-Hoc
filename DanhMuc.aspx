<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DanhMuc.aspx.cs" Inherits="TruongTieuHoc.DanhMuc" %>
<%@ Register TagPrefix="uc1" TagName="RightArea" Src="~/Display/Content/RightArea.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">
    <link href="./DisplaySource/css/for_catalog_f.css" rel="stylesheet" />
    <link href="./DisplaySource/css/for_catalog_s.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="dpContent" runat="server">
    <div class="col-md-8 col-sm-12">
        <div class="glyphicon glyphicon-stats"></div>
        &nbsp;»&nbsp;&nbsp;<%=tennhom%>
        <hr>
        <section class="zone cate-list-news">
            <div class="content">
                <asp:Repeater ID="rptCatalog" runat="server">
                    <ItemTemplate>
                        <article class="story">
                            <figure class="cover">
                                <a target="" title="<%#: Eval("tieude") %>" href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html">
                                    <img width="190" height="136" alt="<%#: Eval("tieude") %>" src="<%#: Eval("hinhanh") %>">
                                </a>
                            </figure>
                            <header>
                                <h1 class="title"><a target="" title="<%#: Eval("tieude") %>" href="chitiet.aspx?page=v.<%#:Eval("id") %>.<%#:Eval("link") %>.html"><%#: Eval("tieude") %></a></h1>
                                <div class="summary"><%#: Eval("tomtat") %></div>
                            </header>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="pagination-full clearfix">
                <div style="" class="calendar pagination-left">
                    <a data-date="12-06-2016" data-date-format="dd-mm-yyyy" id="single_cal3"><i class="fa fa-calendar"></i>Xem theo ngày </a>
                </div>
                <div class="pagination pagination-right clearfix">
                    <span id="">
                        <ul>
                            <li class="active"><a>1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">4</a></li>
                            <li><a href="">5</a></li>
                            <li><a href="">...</a></li>
                            <li><a href="">38</a></li>
                            <li><a href="" id="">Next</a></li>
                        </ul>
                    </span>
                </div>
            </div>

        </section>
    </div>

    <%--RightArea--%>
    <div class="col-md-4 col-sm-12">
        <uc1:RightArea runat="server" ID="RightArea" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="dpJS" runat="server">
    <script type="text/javascript" src="DisplaySource/js/jquery-1.11.0.min.js"></script>
     <!-- bootstrap-daterangepicker -->
    <script src="DisplaySource/js/moment.min.js"></script>
    <script src="DisplaySource/js/daterangepicker.js"></script>
    
    <script>
      $(document).ready(function() {        
        $('#single_cal3').daterangepicker({
          singleDatePicker: true,
          calender_style: "picker_3"
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });       
      });
    </script>    

</asp:Content>
