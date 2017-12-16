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
public partial class _Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DBABookDAL dal = new DBABookDAL();
        LoginClass log = new LoginClass();

        log.UserId = txtUserId.Text;
        log.password = txtPassword.Text;

        if (dal.Login(log))
        {
            Session["status"] = true;
            Response.Redirect("Main.aspx");
        }

        else
            lblError.Text = "<font color=yellow>Invalid Userid or Password</font>";

    }
}
