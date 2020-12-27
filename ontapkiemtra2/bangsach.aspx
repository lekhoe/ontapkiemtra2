<%@ Page Title="" Language="C#" MasterPageFile="~/quanlythuvien.Master" AutoEventWireup="true" CodeBehind="bangsach.aspx.cs" Inherits="ontapkiemtra2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bid" DataSourceID="SqlDataSource1" Width="654px">
    <Columns>
        <asp:BoundField DataField="bid" HeaderText="Mã sách" InsertVisible="False" ReadOnly="True" SortExpression="bid" />
        <asp:BoundField DataField="nameb" HeaderText="Tên sách" SortExpression="nameb" />
        <asp:BoundField DataField="numberpage" HeaderText="Số trang" SortExpression="numberpage" />
        <asp:BoundField DataField="price" HeaderText="Gía tiền" SortExpression="price" />
        <asp:BoundField DataField="authorid" HeaderText="Mã tác giả" SortExpression="authorid" />
        <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClientClick="return confirm('Bạn có muốn xóa không?')" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:HyperLinkField DataNavigateUrlFields="bid" DataNavigateUrlFormatString="suasach.aspx?bid={0}" Text="Edit" HeaderText="Sửa" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>" DeleteCommand="DELETE FROM [tblBook] WHERE [bid] = @original_bid AND (([nameb] = @original_nameb) OR ([nameb] IS NULL AND @original_nameb IS NULL)) AND (([numberpage] = @original_numberpage) OR ([numberpage] IS NULL AND @original_numberpage IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([authorid] = @original_authorid) OR ([authorid] IS NULL AND @original_authorid IS NULL))" InsertCommand="INSERT INTO [tblBook] ([nameb], [numberpage], [price], [authorid]) VALUES (@nameb, @numberpage, @price, @authorid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblBook]" UpdateCommand="UPDATE [tblBook] SET [nameb] = @nameb, [numberpage] = @numberpage, [price] = @price, [authorid] = @authorid WHERE [bid] = @original_bid AND (([nameb] = @original_nameb) OR ([nameb] IS NULL AND @original_nameb IS NULL)) AND (([numberpage] = @original_numberpage) OR ([numberpage] IS NULL AND @original_numberpage IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([authorid] = @original_authorid) OR ([authorid] IS NULL AND @original_authorid IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_bid" Type="Int32" />
        <asp:Parameter Name="original_nameb" Type="String" />
        <asp:Parameter Name="original_numberpage" Type="Int32" />
        <asp:Parameter Name="original_price" Type="Double" />
        <asp:Parameter Name="original_authorid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nameb" Type="String" />
        <asp:Parameter Name="numberpage" Type="Int32" />
        <asp:Parameter Name="price" Type="Double" />
        <asp:Parameter Name="authorid" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nameb" Type="String" />
        <asp:Parameter Name="numberpage" Type="Int32" />
        <asp:Parameter Name="price" Type="Double" />
        <asp:Parameter Name="authorid" Type="Int32" />
        <asp:Parameter Name="original_bid" Type="Int32" />
        <asp:Parameter Name="original_nameb" Type="String" />
        <asp:Parameter Name="original_numberpage" Type="Int32" />
        <asp:Parameter Name="original_price" Type="Double" />
        <asp:Parameter Name="original_authorid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
