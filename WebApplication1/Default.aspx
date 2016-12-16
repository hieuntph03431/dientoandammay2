<%@ Page Title="HIEUNTPH03431" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Dien Toan Dien May - 2016</h2>
            </hgroup>
            <p>
                Xin chào ! Đây là chương trình quản lý sản phẩm
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="KhachHang" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:BoundField DataField="SoDT" HeaderText="SoDT" SortExpression="SoDT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="KhachHang" runat="server" ConnectionString="<%$ ConnectionStrings:hieuntph03431ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDT]) VALUES (@MaKH, @TenKH, @DiaChi, @SoDT)" SelectCommand="SELECT [MaKH], [TenKH], [DiaChi], [SoDT] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [DiaChi] = @DiaChi, [SoDT] = @SoDT WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="SoDT" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SanPham" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                    <asp:BoundField DataField="LoaiSanPham_MaLSP" HeaderText="LoaiSanPham_MaLSP" SortExpression="LoaiSanPham_MaLSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SanPham" runat="server" ConnectionString="<%$ ConnectionStrings:hieuntph03431ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [SoLuong], [MoTa], [MaLSP], [LoaiSanPham_MaLSP]) VALUES (@MaSP, @TenSP, @SoLuong, @MoTa, @MaLSP, @LoaiSanPham_MaLSP)" SelectCommand="SELECT [MaSP], [TenSP], [SoLuong], [MoTa], [MaLSP], [LoaiSanPham_MaLSP] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [SoLuong] = @SoLuong, [MoTa] = @MoTa, [MaLSP] = @MaLSP, [LoaiSanPham_MaLSP] = @LoaiSanPham_MaLSP WHERE [MaSP] = @MaSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaLSP" Type="String" />
                    <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="MaLSP" Type="String" />
                    <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                    <asp:Parameter Name="MaSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Loại Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="LoaiSanPham" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                    <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="LoaiSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:hieuntph03431ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" SelectCommand="SELECT [MaLSP], [TenLSP] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLSP" Type="String" />
                    <asp:Parameter Name="TenLSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLSP" Type="String" />
                    <asp:Parameter Name="MaLSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
         <li class="four">
            <h5>Hóa Đơn</h5>
             <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="HoaDon" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                 <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                 <Fields>
                     <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                     <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" SortExpression="NgayLap" />
                     <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                     <asp:BoundField DataField="KhachHang_MaKH" HeaderText="KhachHang_MaKH" SortExpression="KhachHang_MaKH" />
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                 </Fields>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
             </asp:DetailsView>
             <asp:SqlDataSource ID="HoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:hieuntph03431ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayLap], [MaKH], [KhachHang_MaKH]) VALUES (@MaHD, @NgayLap, @MaKH, @KhachHang_MaKH)" SelectCommand="SELECT [MaHD], [NgayLap], [MaKH], [KhachHang_MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [MaKH] = @MaKH, [KhachHang_MaKH] = @KhachHang_MaKH WHERE [MaHD] = @MaHD">
                 <DeleteParameters>
                     <asp:Parameter Name="MaHD" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="MaHD" Type="String" />
                     <asp:Parameter Name="NgayLap" Type="DateTime" />
                     <asp:Parameter Name="MaKH" Type="String" />
                     <asp:Parameter Name="KhachHang_MaKH" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="NgayLap" Type="DateTime" />
                     <asp:Parameter Name="MaKH" Type="String" />
                     <asp:Parameter Name="KhachHang_MaKH" Type="String" />
                     <asp:Parameter Name="MaHD" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li>
         <li class="five">
            <h5>Chi tiết hóa đơn</h5>
             <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP,MaHD" DataSourceID="ChiTietHoaDon" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                 <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                 <Fields>
                     <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                     <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                     <asp:BoundField DataField="SoLuongMua" HeaderText="SoLuongMua" SortExpression="SoLuongMua" />
                     <asp:BoundField DataField="DonGiaBan" HeaderText="DonGiaBan" SortExpression="DonGiaBan" />
                     <asp:BoundField DataField="HoaDon_MaHD" HeaderText="HoaDon_MaHD" SortExpression="HoaDon_MaHD" />
                     <asp:BoundField DataField="SanPham_MaSP" HeaderText="SanPham_MaSP" SortExpression="SanPham_MaSP" />
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                 </Fields>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
             </asp:DetailsView>
             <asp:SqlDataSource ID="ChiTietHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:hieuntph03431ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaSP] = @MaSP AND [MaHD] = @MaHD" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaSP], [MaHD], [SoLuongMua], [DonGiaBan], [HoaDon_MaHD], [SanPham_MaSP]) VALUES (@MaSP, @MaHD, @SoLuongMua, @DonGiaBan, @HoaDon_MaHD, @SanPham_MaSP)" SelectCommand="SELECT [MaSP], [MaHD], [SoLuongMua], [DonGiaBan], [HoaDon_MaHD], [SanPham_MaSP] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuongMua] = @SoLuongMua, [DonGiaBan] = @DonGiaBan, [HoaDon_MaHD] = @HoaDon_MaHD, [SanPham_MaSP] = @SanPham_MaSP WHERE [MaSP] = @MaSP AND [MaHD] = @MaHD">
                 <DeleteParameters>
                     <asp:Parameter Name="MaSP" Type="String" />
                     <asp:Parameter Name="MaHD" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="MaSP" Type="String" />
                     <asp:Parameter Name="MaHD" Type="String" />
                     <asp:Parameter Name="SoLuongMua" Type="String" />
                     <asp:Parameter Name="DonGiaBan" Type="Decimal" />
                     <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                     <asp:Parameter Name="SanPham_MaSP" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="SoLuongMua" Type="String" />
                     <asp:Parameter Name="DonGiaBan" Type="Decimal" />
                     <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                     <asp:Parameter Name="SanPham_MaSP" Type="String" />
                     <asp:Parameter Name="MaSP" Type="String" />
                     <asp:Parameter Name="MaHD" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
