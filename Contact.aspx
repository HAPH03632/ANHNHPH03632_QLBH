<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2>Liên hệ</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            <span class="label">Máy bàn:</span>
            <span>043.111.111</span>
        </p>
        <p>
            <span class="label">Di động:</span>
            <span>01234567899</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:Support@example.com">giaidapthacmac@mail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Chăm sóc khách hàng:</span>
            <span><a href="mailto:General@example.com">cskh@gmail.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            123, Pháo Đài Láng<br />
            Hà Nội
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7448.798766233738!2d105.80347945267408!3d21.016699893063844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab5ddcd6d757%3A0x4490a0c0342f465e!2zMTIzIFBow6FvIMSQw6BpIEzDoW5nLCBMw6FuZyBUaMaw4bujbmcsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1456327613090" width="800" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>