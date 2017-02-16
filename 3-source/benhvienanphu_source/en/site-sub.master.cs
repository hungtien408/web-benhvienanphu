using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site_sub : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNewLetter_Click(object sender, EventArgs e)
    {
        if (txtEmailNewLetter.Text != "")
        {
            new TLLib.Newsletter().NewsletterInsert(txtEmailNewLetter.Text.ToString().Trim());
        }
        txtEmailNewLetter.Text = "";
    }
}
