<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.master"  CodeFile="update.aspx.cs" Inherits="Default2" Title="SPBL | Update"%>

<asp:Content ID="myDeleteContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<p class="s2"><a href="Main.aspx">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="height:40px; width:75px" Text="Home" CausesValidation="False"  />
            </a>&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogout" runat="server" onclick="btnLogout_Click" 
            Text="Logout" height="40"  width="75px" CausesValidation="False" />&nbsp;&nbsp;
            &nbsp;&nbsp;</p>
    

<div ><p class ="s1">Enter ISBN To UPDATE</p></div>
    <div >

        <asp:TextBox ID="txtIsbn" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClick" runat="server" Text="GO" 
            onclick="btnClick_Click" BackColor="White" Font-Bold="True" 
            Font-Italic="True" Font-Size="Medium" ForeColor="Red" Height="31px" 
            Width="86px" />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" 
            
            oneditcommand="DataList1_EditCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged" 
            onupdatecommand="DataList1_UpdateCommand">
              <EditItemTemplate>
                <asp:Label ID="Label2" runat="server" Text="ISBN"></asp:Label>
                <asp:Label ID="lblisbn" runat="server" Text='<%# Eval("Isbn") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="BOOK NAME"></asp:Label>
                <asp:TextBox ID="txtbookTitle" runat="server" Text='<%# Eval("bookTitle") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="AUTHOR NAME"></asp:Label>
                <asp:TextBox ID="txtAuthorName" runat="server" Text='<%# Eval("AuthorName") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="PUBLICATION"></asp:Label>
                <asp:TextBox ID="txtPublication" runat="server" 
                    Text='<%# Eval("Publication") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="EDITION"></asp:Label>
                <asp:TextBox ID="txtEdition" runat="server" Text='<%# Eval("Edition") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" Text="CATEGORY"></asp:Label>
                <asp:TextBox ID="txtCategory" runat="server" Text='<%# Eval("Category") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label8" runat="server" Text="bookURL"></asp:Label>
                <asp:TextBox ID="txtbookURL" runat="server" Text='<%# Eval("bookURL") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label9" runat="server" Text="PRICE"></asp:Label>
                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label10" runat="server" Text="QUANTITY"></asp:Label>
                <asp:TextBox ID="txtquantity" runat="server" 
                    Text='<%# Eval("quantity") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label11" runat="server" Text="PAGES"></asp:Label>
                <asp:TextBox ID="txtPages" runat="server" Text='<%# Eval("Pages") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label12" runat="server" Text="KEYWORDS"></asp:Label>
                <asp:TextBox ID="txtKeywords" runat="server" Text='<%# Eval("keywords") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label15" runat="server" Text="DESCRIPTION"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" 
                    Text='<%# Eval("Description") %>'></asp:TextBox>
                <br />
                <asp:Button ID="btnUpdate" runat="server" CommandName="update" Text="Update" 
                      onclick="btnUpdate_Click2" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" CommandName="cancel" Text="cancel" />
            </EditItemTemplate>
            <ItemTemplate>
                Isbn:
                <asp:Label ID="IsbnLabel" runat="server" Text='<%# Eval("Isbn") %>' />
                <br />
                bookTitle:
                <asp:Label ID="bookTitleLabel" runat="server" Text='<%# Eval("bookTitle") %>' />
                <br />
                AuthorName:
                <asp:Label ID="AuthorNameLabel" runat="server" 
                    Text='<%# Eval("AuthorName") %>' />
                <br />
                Publication:
                <asp:Label ID="PublicationLabel" runat="server" 
                    Text='<%# Eval("Publication") %>' />
                <br />
                Edition:
                <asp:Label ID="EditionLabel" runat="server" Text='<%# Eval("Edition") %>' />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                bookURL:
                <asp:Label ID="bookURLLabel" runat="server" Text='<%# Eval("bookURL") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                quantity:
                <asp:Label ID="quantityLabel" runat="server" 
                    Text='<%# Eval("quantity") %>' />
                <br />
                Pages:
                <asp:Label ID="PagesLabel" runat="server" Text='<%# Eval("Pages") %>' />
                <br />
                keywords:
                <asp:Label ID="keywordsLabel" runat="server" Text='<%# Eval("keywords") %>' />
                <br />
                PopularityCount:
                <asp:Label ID="PopularityCountLabel" runat="server" 
                    Text='<%# Eval("PopularityCount") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                <asp:Button ID="btnEdit" runat="server" CommandName="edit" 
                    onclick="btnEdit_Click" Text="Edit" />
                &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
       
        <br />
    
    </div>

</asp:Content> 