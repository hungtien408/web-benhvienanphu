using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class y_kien_khach_hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsYKienKhachHang.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            Page.Title = "Ý Kiến Khách Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Ý Kiến Khách Hàng" };
            Header.Controls.Add(meta);
        }
    }
}