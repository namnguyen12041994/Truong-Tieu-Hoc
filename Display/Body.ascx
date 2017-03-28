<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Body.ascx.cs" Inherits="TruongTieuHoc.Display.Content.Body" %>
<%@ Register Src="~/Display/Content/SliderArea.ascx" TagPrefix="uc1" TagName="SliderArea" %>
<%@ Register TagPrefix="uc1" TagName="RightArea" Src="~/Display/Content/RightArea.ascx" %>


<%--Dành cho SliderArea--%>
<uc1:SliderArea runat="server" ID="SliderArea" />
<%--///SliderArea--%>

<div class="container  content">
    <div class="row">
         <%--MainBody--%>
            <div class="col-md-8">
        	    <%--<uc1:MainBody runat="server" ID="MainBody" />--%>
                <asp:PlaceHolder ID="MainBody" runat="server"></asp:PlaceHolder>
            </div>
        <%--///MainBody--%>

	    <%--RightArea--%>    
            <div class="col-md-4" >
                <uc1:RightArea runat="server" ID="RightArea" />
            </div>   
        <%--///RightArea--%>
    </div>
</div><!--  /.content -->
