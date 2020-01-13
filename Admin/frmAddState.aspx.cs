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

public partial class Admin_frmAddState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsCountry obj = new clsCountry();
            ddlCountyName.DataSource = obj.GetCountry();
            ddlCountyName.DataTextField = "CountryName";
            ddlCountyName.DataValueField = "CountryId";
            ddlCountyName.DataBind();

            ddlCountyName.Items.Insert(0, "-----select-----");
        
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = txtDesc.Text = lblMessage.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            clsState obj = new clsState();
            if (obj.AddState(txtName.Text, txtDesc.Text, Convert.ToInt32(ddlCountyName.SelectedValue))>0)
            {
                lblMessage.Text = txtName.Text + " is successfully added";
            }
            else
            {
                lblMessage.Text = "not Added ";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
