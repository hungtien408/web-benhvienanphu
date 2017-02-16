using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class tin_tuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (((DataView)odsTinTuc.Select()).Count <= DataPager1.PageSize)
            {
                DataPager1.Visible = false;
            }
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["nci"]))
            {
                var oProjectCategory = new ProjectCategory();
                var dv = oProjectCategory.ProjectCategorySelectOne(Request.QueryString["nci"]).DefaultView;
                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];
                strTitle = Server.HtmlDecode(row["ProjectCategoryNameEn"].ToString());
                strDescription = Server.HtmlDecode(row["DescriptionEn"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTitleEn"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescriptionEn"].ToString());
                //hdnSanPhamDetails.Value = progressTitle(dv2[0]["ProductCategoryName"].ToString()) + "-pci-" + dv2[0]["ProductCategoryID"].ToString() + ".aspx";
            }
            else
            {
                strTitle = strMetaTitle = "News";
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
            lblTitle.Text = strTitle;
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
}