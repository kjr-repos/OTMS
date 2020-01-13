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

public partial class Admin_frmAddCountry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = txtDesc.Text =lblMessage.Text= "";
    }
    protected void brnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            clsCountry obj = new clsCountry();
            if (obj.AddCountry(txtName.Text, txtDesc.Text) > 0)
            {
                lblMessage.Text = txtName.Text + " added successfully";
            }
            else
            {
                lblMessage.Text = "not added";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
