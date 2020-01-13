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

public partial class Admin_frmApproveSupplier : System.Web.UI.Page
{
    clsSupplierDetails obj;
    protected void Page_Load(object sender, EventArgs e)
    {

        obj = new clsSupplierDetails();
        GetData();
    }
    //get supplier where AdminCheck=0
    public void GetData()
    {
       
        GridView1.DataSource = obj.GetSupplierUnchecked();
        GridView1.DataBind();
    
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int supplierid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Approve")
        { 
        if(obj.SupplierAcceptReject(supplierid,1)>0)
        {
        lblMessage.Text=" Supplier Accepted Successfully";
        }
        else
            lblMessage.Text="Request not completed";
        
        }
        else
            if (e.CommandName == "Reject")
            { 
            
                if(obj.SupplierAcceptReject(supplierid,2)>0)
                {
                  lblMessage.Text=" Supplier Rejected Successfully";
                }
                  else
                     lblMessage.Text="Request not completed";
            }
        GetData();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
}
