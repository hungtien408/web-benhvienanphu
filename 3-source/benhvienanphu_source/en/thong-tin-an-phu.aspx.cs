﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class thong_tin_an_phu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsThongTinAnPhu.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }

            Page.Title = "Thông Tin Từ An Phú";
            var meta = new HtmlMeta() { Name = "description", Content = "Thông Tin Từ An Phú" };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
}