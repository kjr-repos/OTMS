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

public partial class Admin_frmAnnounceResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }
        
    }
    public void GetData()
    {
        clsTenderItem obj = new clsTenderItem();
        GridView1.DataSource = obj.GetTenderItemsForResult();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

        try
        {
            int tenderid = Convert.ToInt32(GridView1.Rows[e.NewSelectedIndex].Cells[0].Text);
            clsTenderItem obj = new clsTenderItem();
            if (obj.AllotItemToSupplier(tenderid) > 0)
            {
                lblMessage.Text = tenderid + "  is alloted successfully";
                GetData();
            }
            else
                lblMessage.Text = "request not submitted";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
}
