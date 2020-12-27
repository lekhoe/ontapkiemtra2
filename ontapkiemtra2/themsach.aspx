<%@ Page Title="" Language="C#" MasterPageFile="~/quanlythuvien.Master" AutoEventWireup="true" CodeBehind="themsach.aspx.cs" Inherits="ontapkiemtra2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="bid" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging" Width="495px">
    <EditItemTemplate>
        bid:
        <asp:Label ID="bidLabel1" runat="server" Text='<%# Eval("bid") %>' />
        <br />
        nameb:
        <asp:TextBox ID="namebTextBox" runat="server" Text='<%# Bind("nameb") %>' />
        <br />
        numberpage:
        <asp:TextBox ID="numberpageTextBox" runat="server" Text='<%# Bind("numberpage") %>' />
        <br />
        price:
        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
        <br />
        authorid:
        <asp:TextBox ID="authoridTextBox" runat="server" Text='<%# Bind("authorid") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Tên sách:&nbsp;&nbsp;
        <asp:TextBox ID="namebTextBox" runat="server" Text='<%# Bind("nameb") %>' />
        <br />
        <br />
        Số trang:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="numberpageTextBox" runat="server" Text='<%# Bind("numberpage") %>' />
        <br />
        <br />
        Gía tiền:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
        <br />
        <br />
        Tác giả:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="authorid" Height="18px" SelectedValue='<%# Bind("authorid") %>' Width="162px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>" DeleteCommand="DELETE FROM [tblAuthor] WHERE [authorid] = @original_authorid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL))" InsertCommand="INSERT INTO [tblAuthor] ([name]) VALUES (@name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [authorid], [name] FROM [tblAuthor]" UpdateCommand="UPDATE [tblAuthor] SET [name] = @name WHERE [authorid] = @original_authorid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_authorid" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="original_authorid" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm sách" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
    </InsertItemTemplate>
    <ItemTemplate>
        bid:
        <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
        <br />
        nameb:
        <asp:Label ID="namebLabel" runat="server" Text='<%# Bind("nameb") %>' />
        <br />
        numberpage:
        <asp:Label ID="numberpageLabel" runat="server" Text='<%# Bind("numberpage") %>' />
        <br />
        price:
        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
        <br />
        authorid:
        <asp:Label ID="authoridLabel" runat="server" Text='<%# Bind("authorid") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
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
