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

public partial class Admin_frmDeleteIssuer : System.Web.UI.Page
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
        clsIssuerDetails obj = new clsIssuerDetails();
        ddlIssuerId.DataSource = obj.GetIssuer();
        ddlIssuerId.DataTextField = "FirstName";
        ddlIssuerId.DataValueField = "IssuerId";
        ddlIssuerId.DataBind();
        ddlIssuerId.Items.Insert(0, "--------select------");

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlIssuerId.SelectedIndex != 0)
            {
                clsIssuerDetails obj = new clsIssuerDetails();
                if (obj.UpDelIssuer(Convert.ToInt32(ddlIssuerId.SelectedValue), null, null, null, null, null, null, null) > 0)
                {
                    lblMessage.Text = "Deleted successfully";
                    GetData();
                    EmptyTextBox();

                }
                else
                    lblMessage.Text = "request failed";

            }
            else
                lblMessage.Text = "please select IssuerID";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }

    }
    public void EmptyTextBox()
    {
        txtAddress.Text = txtCity.Text = txtEmail.Text = txtfname.Text = txtlname.Text  = txtPhoneno.Text = txtState.Text = "";
    }


   
    protected void ddlIssuerId_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlIssuerId.SelectedIndex != 0)
            {

                clsIssuerDetails obj = new clsIssuerDetails();
                DataSet ds = obj.GetIssuer(Convert.ToInt32(ddlIssuerId.SelectedValue));
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
                lblMessage.Text = "please select IssuerId";
                EmptyTextBox();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
