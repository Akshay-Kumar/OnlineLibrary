<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/MasterPage.master" CodeFile="Delete.aspx.cs" Inherits="Delete" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="mycontent1" runat="server">
    <form id="form1" action="">
    <div>
    <div>
        <p class="s2"><a href="Main.aspx">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="height:40px; width:75px" Text="Home" CausesValidation="False" />
            </a>&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogout" runat="server" onclick="btnLogout_Click" 
            Text="Logout" height="40"  width="75px" CausesValidation="False" />&nbsp;&nbsp;
            &nbsp;&nbsp;</p>
            </div>
        <br />
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Enter The Book Id To Delete" 
            Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtBookIdToDel" runat="server" Width="240px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
                &nbsp;
        <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
            Text="DELETE" CommandName="delete" BackColor="White" BorderStyle="Inset" 
            ForeColor="Red" />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.;Initial Catalog=BookLibrary;User ID=sa;Password=Admin@123" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [TblCatalog] WHERE ([BookId] = @BookId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtBookIdToDel" Name="BookId" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
    
    </div>
    </form>
    </asp:Content>
<%--</body>
</html>
--%>