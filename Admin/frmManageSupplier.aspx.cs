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

public partial class Admin_frmManageSupplier : System.Web.UI.Page
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
        clsSupplierDetails obj = new clsSupplierDetails();
        ddlSupplierId.DataSource = obj.GetSupplierAll();
        ddlSupplierId.DataTextField = "FirstName";
        ddlSupplierId.DataValueField = "SupplierId";
        ddlSupplierId.DataBind();
        ddlSupplierId.Items.Insert(0, "--------select------");
    
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlSupplierId.SelectedIndex != 0)
            {
                clsSupplierDetails obj = new clsSupplierDetails();
                if (obj.UpDelSupplier(Convert.ToInt32(ddlSupplierId.SelectedValue), null, null, null, null, null, null, null) > 0)
                {
                    lblMessage.Text = "Deleted successfully";
                    GetData();
                    EmptyTextBox();
                }
                else
                    lblMessage.Text = "request failed";

            }
            else
            {
                lblMessage.Text = "please select supplierID";
                EmptyTextBox();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }

    }
    public void EmptyTextBox()
    {
        txtAddress.Text = txtCity.Text = txtEmail.Text = txtfname.Text = txtlname.Text = txtPhoneno.Text = txtState.Text = "";
    }
    

    protected void ddlSupplierId_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlSupplierId.SelectedIndex != 0)
            {

                clsSupplierDetails obj = new clsSupplierDetails();
                DataSet ds = obj.GetSupplier(Convert.ToInt32(ddlSupplierId.SelectedValue));
                txtfname.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
                txtlname.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
                txtPhoneno.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                txtState.Text = ds.Tables[0].Rows[0]["State"].ToString();


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
