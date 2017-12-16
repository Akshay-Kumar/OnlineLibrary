<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.master"  CodeFile="Main.aspx.cs" Inherits="Main" Title="SPBL | Home" %>

<asp:Content ID="myMainContent" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <div height: 834px;">
    <div align="right">
        <asp:Button ID="Button2" runat="server" Height="40px" Width="75px" 
            Text="Logout" onclick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
       
        <br />
        <div ><p class="s1">SELECT YOUR CHOICE<br /></p> 
            </div>
            <div class ="s2">            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>ADD BOOKS</asp:ListItem>
                <asp:ListItem>DELETE BOOKS</asp:ListItem>
                <asp:ListItem>UPDATE DETAILS</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" 
                Font-Italic="True" Font-Size="Medium" ForeColor="Red" Height="37px" 
                onclick="Button1_Click" Text="SELECT" Width="131px" />
            <br />
        </div>    
    </div>

</asp:Content> 