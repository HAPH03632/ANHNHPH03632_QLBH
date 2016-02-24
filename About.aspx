<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Giới thiệu</h2>
    </hgroup>

    <article>
        <p>        
            Nguyễn Hồng Anh
        </p>

        <p>        
            PH03632
        </p>

        <p>        
            PT10301-UD
        </p>
    </article>

    <aside>
        <h3>Menu</h3>
        <p>        
            Bạn có thẻ xem thêm thông tin tại đây
        </p>
        <ul>
            <li><a runat="server" href="~/">Trang chủ</a></li>
            <li><a runat="server" href="~/About.aspx">Thông tin</a></li>
            <li><a runat="server" href="~/Contact.aspx">Liên hệ</a></li>
        </ul>
    </aside>
</asp:Content>