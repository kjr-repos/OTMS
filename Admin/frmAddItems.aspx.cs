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

public partial class Admin_frmAddItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsDept objdept = new clsDept();
             ddlDeptName.DataSource = objdept.GetDept();
             ddlDeptName.DataTextField = "DeptName";
            ddlDeptName.DataValueField = "DeptId";
            ddlDeptName.DataBind();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            clsItems obj = new clsItems();
            if(obj.AddItem(txtItemName.Text,Convert.ToInt32(ddlDeptName.SelectedValue))>0)
            {
            lblMessage.Text="Added successfully";
            }
            else
                lblMessage.Text="Not Added";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblMessage.Text = txtItemName.Text = "";
    }
}
