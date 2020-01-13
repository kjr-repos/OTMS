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

public partial class Admin_frmAddEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsState obj = new clsState();
            ddlState.DataSource = obj.GetState();
            ddlState.DataTextField = "StateName";
            ddlState.DataBind();

            clsDept objdept = new clsDept();
           ddlDeptId.DataSource= objdept.GetDept();
           ddlDeptId.DataTextField = "DeptName";
           ddlDeptId.DataValueField = "DeptId";
           ddlDeptId.DataBind();
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string gender;
        try
        {

            if (rbtnMale.Checked)
                gender = "Male";
            else
                gender = "Female";
            clsEmployeeDetails obj = new clsEmployeeDetails();
            if (obj.AddEmployee(txtFName.Text, txtLName.Text,gender,Convert.ToInt32( ddlDeptId.SelectedValue), txtUserName.Text, txtPassword.Text, txtPhone.Text, txtEmail.Text, txtAdress.Text, txtCity.Text, ddlState.SelectedItem.Text, 2) > 0)
            {
                lblMessage.Text = "success fully added";

            }
            else
                lblMessage.Text = "";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {

    }
}
