<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="Insert.aspx.cs" Inherits="_Default" Title="SPBL | Insert"%>
 
 <asp:Content ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <form action="">
    <p class="s2"><a href="Main.aspx">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="height:40px; width:75px" Text="Home" CausesValidation="False" />
            </a>&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogout" runat="server" onclick="btnLogout_Click" 
            Text="Logout" height="40"  width="75px" CausesValidation="False" />&nbsp;&nbsp;
            &nbsp;&nbsp;</p>
    
    <div  id="d"  ><p class="s1">ADD NEW BOOK</p></div>        
        <div class="s2" ><br />
        <table style="width: 100%;" cellpadding ="2" cellspacing ="2">
            <tr>
                <td class="">&nbsp;</td>
                <td class=""> <asp:Label ID="Label1" runat="server" Text="ENTER ISBN"></asp:Label></td>
                <td class="">
        <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" 
                       ControlToValidate="txtISBN">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label2" runat="server" Text="ENTER BOOK TITLE"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
                        ControlToValidate="txtBookTitle">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label3" runat="server" Text="ENTER AUTHOR NAME"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtAuthorFirst" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtAuthorFirst">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label5" runat="server" Text="ENTER PUBLICATION"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtPub" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtPub">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label6" runat="server" Text="ENTER EDITION"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtEdition" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtEdition">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label8" runat="server" Text="ENTER CATEGORY"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtCategory" ErrorMessage="Enter Category">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label9" runat="server" Text="ENTER BOOK URL"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtBookUrl" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label11" runat="server" Text="ENTER PRICE"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtPrice" ErrorMessage="Enter Price">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label12" runat="server" Text="ENTER QUANTITY"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtQuantity" ErrorMessage="Enter Quantity">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label13" runat="server" Text="ENTER PAGES"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtPages" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
        <asp:Label ID="Label15" runat="server" Text="ENTER KEYWORDS"></asp:Label>
                </td>
                <td class="">
        <asp:TextBox ID="txtKeywords" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtKeywords" ErrorMessage="Enter Keywords Separated By ','">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="">
                    &nbsp;</td>
                <td class="">
                    <asp:Label ID="Label17" runat="server" Text="ENTER DESCRIPTION"></asp:Label>
                </td>
                <td class="">
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" 
                        Width="129px"></asp:TextBox>
                </td>
            </tr>
        </table>
                </div> <br />

        <br />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="ADD" BackColor="White"  Font-Size="15"  Width="157px" />    <p style="margin-left: 40px">
&nbsp;
    </p>
   </form>  
</asp:Content>