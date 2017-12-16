<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteList.aspx.cs" Inherits="_Default" Title="SPBL | Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="OCFx.js">
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><asp:TextBox ID="txtbookTitle" runat="server" Height="40px" 
            style="margin-left: 0px" Width="150px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        height="40px"  width="75px" Text="Search" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" height="40px"  width="75px" Text="Home" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" height="40px"  width="75px" Text="Logout" />
        </p>
    <asp:DataList ID="DataList1" runat="server" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="4" 
        ondeletecommand="DataList1_DeleteCommand">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="169px" Width="155px" ImageUrl='<%# Eval("bookURL") %>' />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Book Id :"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("bookId") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Book Name :"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<% #Eval("bookTitle") %>'></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" CommandName="Delete" 
      Text="Delete" />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BookDBConnectionString %>" 
        SelectCommand="select * from TblCatalog ,TblBook where bookTitle=txtbookTitle">
    </asp:SqlDataSource>
    </asp:Content>

