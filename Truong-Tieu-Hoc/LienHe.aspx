<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="TruongTieuHoc.LienHe" %>
<%@ Register TagPrefix="uc1" TagName="RightArea" Src="~/Display/Content/RightArea.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="dpCSS" runat="server">    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="dpContent" runat="server">        
        <div class="col-md-8 col-sm-12 col-xs-12">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">.:LIÊN HỆ:.</h3>
                </div>
                <div class="panel-body">                    
                    <form runat="server" class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12"></label>
                            <div class="col-md-10 col-sm-10 col-xs-12">
                                <asp:Label ID="lbAlert" runat="server" Enabled="False" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">
                                Họ và Tên: <span class="required">*</span>
                            </label>
                            <div class="col-md-10 col-sm-10 col-xs-12">
                                <asp:TextBox ID="txtName" Style="padding-left: 10px" required="required" CssClass="form-control col-md-7 col-xs-12" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">
                                Email: <span class="required">*</span>
                            </label>
                            <div class="col-md-10 col-sm-10 col-xs-12">
                                <asp:TextBox type="email" ID="txtEmail" Style="padding-left: 10px" name="last-name" required="required" CssClass="form-control col-md-7 col-xs-12" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">
                                Nội dung: <span class="required">*</span>
                            </label>
                            <div class="col-md-10 col-sm-10 col-xs-12">
                                <asp:TextBox ID="txtContent" Style="padding-left: 10px" TextMode="MultiLine" Rows="10" required="required" CssClass="form-control col-md-7 col-xs-12" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="reset" class="btn btn-primary">Hủy tất cả</button>
                                <asp:Button ID="btnSubmit" CssClass="btn btn-success" runat="server" Text="Gửi tin nhắn" OnClick="btnSubmit_Click"></asp:Button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%--RightArea--%>    
        <div class="col-md-4 col-sm-12 col-xs-12" >
            <uc1:RightArea runat="server" ID="RightArea" />
        </div>    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="dpJS" runat="server">    
     
</asp:Content>
