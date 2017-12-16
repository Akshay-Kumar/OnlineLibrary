using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BookUpdateLib;
using BookSearchLib;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    List<BookCatalogJoin> bklst;
    static string str;

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        BookDAL dal = new BookDAL();
        bklst = new List<BookCatalogJoin>();
        str = txtbookTitle.Text;
        bklst = dal.GetBooksByTitle(str);
        DataList1.DataSource = bklst;
        DataList1.DataBind();
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        Label l = (Label)e.Item.FindControl("Label1");
        DBABookDAL dal = new DBABookDAL();
        BookDAL d = new BookDAL();
        CatalogClass ba = new CatalogClass();
        ba.bookId = int.Parse(l.Text);
        dal.DeleteBookByDBA(ba);
        List<BookCatalogJoin> bklst1 = d.GetBooksByTitle(str);
        DataList1.DataSource = bklst1;
        DataList1.DataBind();
        ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:deleteMsgDisplay(); ", true);  
     }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["status"] = false;
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
