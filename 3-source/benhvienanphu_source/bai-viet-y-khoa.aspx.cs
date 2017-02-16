using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class bai_viet_y_khoa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsArticleMedical.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["ami"]))
            {
                var oProjectCategory = new TLLib.ProjectCategory();
                var dv = oProjectCategory.ProjectCategorySelectOne(Request.QueryString["ami"]).DefaultView;
                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];
                strTitle = Server.HtmlDecode(row["ProjectCategoryName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTitle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());
                hdnBaiVietDetails.Value = progressTitle(dv[0]["ProjectCategoryName"].ToString()) + "-ami-" + dv[0]["ProjectCategoryID"].ToString() + ".aspx";
            }
            else
            {
                strTitle = strMetaTitle = "Bài Viết Y Khoa";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ?
                    strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);
            //lblTitle.Text = strTitle;
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
}