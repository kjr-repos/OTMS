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

public partial class Admin_frmAddDept : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void brnAdd_Click(object sender, EventArgs e)
    {
        
        try
        {
            clsDept obj = new clsDept();
            if (obj.AddDept(txtName.Text, txtLocation.Text) > 0)
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
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = txtLocation.Text =lblMessage.Text= "";
    }
    
}
