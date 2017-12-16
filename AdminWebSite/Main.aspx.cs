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

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["status"])
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "ADD BOOKS")
        {
            Response.Redirect("Insert.aspx");
        }
        else if (RadioButtonList1.Text == "DELETE BOOKS")
        {
            Response.Redirect("DeleteList.aspx");
        }
        else
            Response.Redirect("update.aspx");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["status"] = false;
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
