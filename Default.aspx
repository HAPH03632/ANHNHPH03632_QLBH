<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>Mang lại xu hướng mới về thế giới công nghệ</h2>
            </hgroup>
            <p>
                Thật không thể tin được và ngay cúng tôi cũng không thể tin được khi chúng tôi làm được điều này. Chúng tôi luôn mang lại những sản phẩm của những xu hướng mới trong thế giới công nghệ toàn cầu.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Danh mục</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anhnhph03632_QLBHConnectionString %>" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KHACH_HANG] ([MaKH], [TenKH], [SDT], [DiaChi], [Email]) VALUES (@MaKH, @TenKH, @SDT, @DiaChi, @Email)" SelectCommand="SELECT * FROM [KHACH_HANG]" UpdateCommand="UPDATE [KHACH_HANG] SET [TenKH] = @TenKH, [SDT] = @SDT, [DiaChi] = @DiaChi, [Email] = @Email WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Sản phẩm</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:anhnhph03632_QLBHConnectionString %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SAN_PHAM] ([MaSP], [TenSP], [MaLoai], [SoLuong]) VALUES (@MaSP, @TenSP, @MaLoai, @SoLuong)" SelectCommand="SELECT * FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [TenSP] = @TenSP, [MaLoai] = @MaLoai, [SoLuong] = @SoLuong WHERE [MaSP] = @MaSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Loại sản phẩm</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoai" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai" />
                    <asp:BoundField DataField="LoaiSanPham" HeaderText="LoaiSanPham" SortExpression="LoaiSanPham" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:anhnhph03632_QLBHConnectionString %>" DeleteCommand="DELETE FROM [LOAI_SAN_PHAM] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LOAI_SAN_PHAM] ([MaLoai], [LoaiSanPham]) VALUES (@MaLoai, @LoaiSanPham)" SelectCommand="SELECT * FROM [LOAI_SAN_PHAM]" UpdateCommand="UPDATE [LOAI_SAN_PHAM] SET [LoaiSanPham] = @LoaiSanPham WHERE [MaLoai] = @MaLoai">
                <DeleteParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoai" Type="String" />
                    <asp:Parameter Name="LoaiSanPham" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LoaiSanPham" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Hóa đơn</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:BoundField DataField="NgayMuaHang" HeaderText="NgayMuaHang" SortExpression="NgayMuaHang" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:anhnhph03632_QLBHConnectionString %>" DeleteCommand="DELETE FROM [HOA_DON] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HOA_DON] ([MaHD], [MaKH], [NgayMuaHang]) VALUES (@MaHD, @MaKH, @NgayMuaHang)" SelectCommand="SELECT * FROM [HOA_DON]" UpdateCommand="UPDATE [HOA_DON] SET [MaKH] = @MaKH, [NgayMuaHang] = @NgayMuaHang WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="NgayMuaHang" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="NgayMuaHang" Type="DateTime" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Chi tiết hóa đơn</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaSp" HeaderText="MaSp" SortExpression="MaSp" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:anhnhph03632_QLBHConnectionString %>" DeleteCommand="DELETE FROM [CHI_TIET_HOA_DON] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [CHI_TIET_HOA_DON] ([MaHD], [MaSp], [SoLuong]) VALUES (@MaHD, @MaSp, @SoLuong)" SelectCommand="SELECT * FROM [CHI_TIET_HOA_DON]" UpdateCommand="UPDATE [CHI_TIET_HOA_DON] SET [MaSp] = @MaSp, [SoLuong] = @SoLuong WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="MaSp" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaSp" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
