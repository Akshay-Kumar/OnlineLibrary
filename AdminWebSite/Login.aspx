<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Login" Title="SPBL | Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script language="javascript" type="text/javascript">
     window.history.forward();         
    </script>
   
   <div>
   <div>
   
   </div>
   <div  class ="login" align="center">ACCOUNT LOGIN
       <br />
   <br />
        <table >
            <tr>
                <td class="style1" style="width: 96px; height: 50px;">
                    User Id:</td>
                <td class="style2" style="height: 50px">
                    <asp:TextBox runat="server" ID="txtUserId" ></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="style1" style="width: 96px; height: 50px;">
                    Password:</td>
                <td class="style2" style="height: 50px">
                    <asp:TextBox ID="txtPassword" runat="server" style="margin-left: 0px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 96px; height: 33px">
                    </td>
                <td class="style2" style="height: 33px">
                    </td>
            </tr>
            <tr>
                <td class="style1" align="center" style="width: 96px; height: 29px;">
                </td>
                <td class="style2" style="height: 29px">
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click1" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblError" runat="server"></asp:Label>
        </div>
        </div>
</asp:Content>

