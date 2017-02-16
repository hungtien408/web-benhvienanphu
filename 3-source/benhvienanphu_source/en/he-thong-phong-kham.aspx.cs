using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class he_thong_phong_kham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Hệ Thống Phòng Khám";
            var meta = new HtmlMeta() { Name = "description", Content = "Hệ Thống Phòng Khám" };
            Header.Controls.Add(meta);
        }
    }
}