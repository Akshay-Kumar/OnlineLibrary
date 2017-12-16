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
using BookUpdateLib;
using BookSearchLib;

public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (!(bool)Session["status"])
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        DBABookDAL dal = new DBABookDAL();
        CatalogClass ba = new CatalogClass();
         ba.bookId = int.Parse(txtBookIdToDel.Text);
         dal.DeleteBookByDBA(ba);
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["status"] = false;

        Session.Abandon();

        Response.Redirect("Login.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
}
