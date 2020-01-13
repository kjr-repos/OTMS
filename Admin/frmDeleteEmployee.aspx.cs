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

public partial class Admin_frmDeleteEmployee : System.Web.UI.Page
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
        clsEmployeeDetails obj = new clsEmployeeDetails();
        ddlEmpId.DataSource = obj.GetEmp();
        ddlEmpId.DataTextField = "FirstName";
        ddlEmpId.DataValueField = "EmpId";
        ddlEmpId.DataBind();
        ddlEmpId.Items.Insert(0, "--------select------");

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlEmpId.SelectedIndex != 0)
            {
                clsEmployeeDetails obj = new clsEmployeeDetails();
                if (obj.UpDelEmp(Convert.ToInt32(ddlEmpId.SelectedValue), null, null, null, null, null, null, null) > 0)
                {
                    lblMessage.Text = "Deleted successfully";
                    GetData();
                    EmptyTextBox();
                }
                else
                    lblMessage.Text = "request failed";

            }
            else
                lblMessage.Text = "please select supplierID";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }

    }
    public void EmptyTextBox()
    {
        txtAddress.Text = txtCity.Text =txtDeptName.Text= txtEmail.Text = txtfname.Text = txtlname.Text  = txtPhoneno.Text = txtState.Text = "";
    }


    protected void ddlEmpId_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            if (ddlEmpId.SelectedIndex != 0)
            {

                clsEmployeeDetails obj = new clsEmployeeDetails();
                DataSet ds = obj.GetEmp(Convert.ToInt32(ddlEmpId.SelectedValue));
                txtfname.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
                txtlname.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
                txtPhoneno.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                txtState.Text = ds.Tables[0].Rows[0]["State"].ToString();
                txtDeptName.Text = ds.Tables[0].Rows[0]["DeptName"].ToString();


            }
            else
            {
                lblMessage.Text = "please select supplierId";
                EmptyTextBox();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
