using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Collections.Generic;
using BookUpdateLib;
using BookSearchLib;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["status"])
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        DataList1.DataBind();
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {

        BookClass bk = new BookClass();

        Label l = (Label)e.Item.FindControl("lblisbn");
        bk.ISBN = l.Text;
        TextBox tb1 = (TextBox)e.Item.FindControl("txtbookTitle");
        bk.bookTitle = tb1.Text;
        TextBox tb2 = (TextBox)e.Item.FindControl("txtAuthorName");
        bk.authorName = tb2.Text;
        TextBox tb3 = (TextBox)e.Item.FindControl("txtPublication");
        bk.publication = tb3.Text;
        TextBox tb4 = (TextBox)e.Item.FindControl("txtEdition");
        bk.edition = int.Parse(tb4.Text);
        TextBox tb5 = (TextBox)e.Item.FindControl("txtCategory");
        bk.category = tb5.Text;
        TextBox tb6 = (TextBox)e.Item.FindControl("txtbookURL");
        bk.bookURL = tb6.Text;
        TextBox tb7 = (TextBox)e.Item.FindControl("txtPrice");
        bk.price = int.Parse(tb7.Text);
        TextBox tb8 = (TextBox)e.Item.FindControl("txtquantity");
        bk.quantity = int.Parse(tb8.Text);
        TextBox tb9 = (TextBox)e.Item.FindControl("txtPages");
        bk.pages = int.Parse(tb9.Text);
        TextBox tb10 = (TextBox)e.Item.FindControl("txtKeywords");
        bk.keywords = tb10.Text;
        TextBox tb12 = (TextBox)e.Item.FindControl("txtDescription");
        bk.description = tb12.Text;
        DBABookDAL c = new DBABookDAL();
        c.UpdateBook(bk);
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }
    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }

    protected void btnClick_Click(object sender, EventArgs e)
     
    {
        string title = txtIsbn.Text;
        BookDAL dal = new BookDAL();
        List<BookClass> blst = new List<BookClass>();
        string sqlStr = String.Format("SELECT * FROM TblBook WHERE bookTitle LIKE '%{0}%' or ISBN='{1}'", title,title);
        blst = dal.GetAllBooks(sqlStr);
        DataList1.DataSource = blst;
        DataList1.DataBind();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click1(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click2(object sender, EventArgs e)
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