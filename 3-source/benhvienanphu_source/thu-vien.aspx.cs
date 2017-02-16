using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class thu_vien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsPhotoAlbumCategory.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            Page.Title = "Thư Viện Ảnh - Video";
            var meta = new HtmlMeta() { Name = "description", Content = "Thư Viện Ảnh - Video" };
            Header.Controls.Add(meta);
        }
    }
}