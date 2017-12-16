using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using BookUpdateLib;
using BookSearchLib;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["status"])
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       DBABookDAL ba=new DBABookDAL();
       
        BookClass bk=new BookClass();  
        
        bk.ISBN  = txtISBN.Text.ToString();
        bk.bookTitle = txtBookTitle.Text.ToString();
        bk.authorName = txtAuthorFirst.Text.ToString();
        bk.description = txtDescription.Text.ToString();
        bk.publication = txtPub.Text.ToString();
        bk.edition = int.Parse(txtEdition.Text);
        bk.category = txtCategory.Text.ToString();
        bk.bookURL = txtBookUrl.Text.ToString(); 
        bk.price = int.Parse(txtPrice.Text);        
        bk.pages = int.Parse(txtPages.Text);
        bk.keywords = txtKeywords.Text.ToString();
       
        ba.Insert(bk);


    }
    protected void txtPrice_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["status"] = false;
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
