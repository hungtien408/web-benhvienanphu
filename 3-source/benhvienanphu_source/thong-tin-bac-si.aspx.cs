using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class thong_tin_bac_si : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Đội Ngũ Bác Sĩ";
            var meta = new HtmlMeta() { Name = "description", Content = "Đội Ngũ Bác Sĩ" };
            Header.Controls.Add(meta);
        }
    }
}