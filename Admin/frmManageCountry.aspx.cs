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

public partial class frmManageCountry : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rbtnUpadate.Checked = true;
            GetData();
        
        }
    }
    public void GetData()
    {
        clsCountry obj = new clsCountry();
        ddlCountry.DataSource = obj.GetCountry();
        ddlCountry.DataTextField = "CountryName";
        ddlCountry.DataValueField = "CountryId";
        ddlCountry.DataBind();
        ddlCountry.Items.Insert(0, "---------select---------");
    
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (ddlCountry.SelectedIndex != 0)
            {

                clsCountry obj = new clsCountry();
                DataSet ds = obj.GetCountry(Convert.ToInt32(ddlCountry.SelectedValue));
                txtname.Text = ds.Tables[0].Rows[0][0].ToString();
                txtDesc.Text = ds.Tables[0].Rows[0][1].ToString();



            }
            else
            {
                lblMessage.Text = "please select country";
                ClearTxt();
            }

        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void rbtnDelete_CheckedChanged(object sender, EventArgs e)
    {
        ClearTxt();
        btnUpdate.Text = "Delete";
        txtDesc.ReadOnly = true;
        txtname.ReadOnly = true;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlCountry.SelectedIndex != 0)
            {
                clsCountry obj = new clsCountry();
                if (btnUpdate.Text == "Update")
                {
                    if (obj.UpDelCountry(Convert.ToInt32(ddlCountry.SelectedValue), txtname.Text, txtDesc.Text) > 0)
                    {
                        lblMessage.Text = "Successfully updated";
                    }
                    else
                        lblMessage.Text = "request failed";

                }
                else
                {
                    if (obj.UpDelCountry(Convert.ToInt32(ddlCountry.SelectedValue), null, null) > 0)
                    {
                        lblMessage.Text = "Successfully Deleted";
                        ClearTxt();
                    }
                    else
                        lblMessage.Text = "request failed";


                }
                GetData();
            }
            else 
            {
                lblMessage.Text = "please select country";
                ClearTxt();
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    void ClearTxt()
    {
        txtDesc.Text = txtname.Text =lblMessage.Text="";
    
    }
    protected void rbtnUpadate_CheckedChanged(object sender, EventArgs e)
    {
        btnUpdate.Text = "Update";
        txtDesc.ReadOnly = false;
        txtname.ReadOnly = false;
    }
}
