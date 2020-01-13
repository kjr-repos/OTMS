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

public partial class Admin_frmManageState : System.Web.UI.Page
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
        clsState obj = new clsState();
        ddlState.DataSource = obj.GetState();
        ddlState.DataTextField = "StateName";
        ddlState.DataValueField = "StateId";
        ddlState.DataBind();
        ddlState.Items.Insert(0, "---------select---------");

    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            lblMessage.Text = "";
            if (ddlState.SelectedIndex != 0)
            {

                clsState obj = new clsState();
                DataSet ds = obj.GetState(Convert.ToInt32(ddlState.SelectedValue));
                txtname.Text = ds.Tables[0].Rows[0][0].ToString();
                txtDesc.Text = ds.Tables[0].Rows[0][1].ToString();



            }
            else
            {
                lblMessage.Text = "please select state";
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
            if (ddlState.SelectedIndex != 0)
            {
                clsState obj = new clsState();
                if (btnUpdate.Text == "Update")
                {
                    if (obj.UpDelState(Convert.ToInt32(ddlState.SelectedValue), txtname.Text, txtDesc.Text) > 0)
                    {
                        lblMessage.Text = "Successfully updated";
                        //ClearTxt();
                    }
                    else
                        lblMessage.Text = "request failed";

                }
                else
                {
                    if (obj.UpDelState(Convert.ToInt32(ddlState.SelectedValue), null, null) > 0)
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
                lblMessage.Text = "please select state";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void rbtnUpadate_CheckedChanged(object sender, EventArgs e)
    {
        btnUpdate.Text = "Update";
        txtDesc.ReadOnly = false;
        txtname.ReadOnly = false;
    }
}
