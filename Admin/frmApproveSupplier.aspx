<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmApproveSupplier.aspx.cs" Inherits="Admin_frmApproveSupplier" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <form id="form1" runat="server">--%>
<table><tr><td style="width: 784px"></td></tr></table>
    <table class="style1">
    
        <tr>
            <td style="width: 37px">
                &nbsp;</td>
            <td style="width: 620px">
                <asp:GridView ID="GridView1" runat="server" Width="716px" 
                    AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand" 
                    AllowPaging="True" Height="210px" 
                    onpageindexchanging="GridView1_PageIndexChanging" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <RowStyle BackColor="White" />
                <Columns>
                <asp:BoundField HeaderText="Name" DataField="FirstName" HeaderStyle-ForeColor="White" />
                <asp:BoundField HeaderText="Gender" DataField="Gender" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="PhoneNo" DataField="PhoneNo" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="Email Address" DataField="Email" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="Res Address" DataField="Address" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="City" DataField="City" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="State" DataField="State" HeaderStyle-ForeColor="White"/>
                <asp:TemplateField HeaderStyle-ForeColor="White">
                <ItemTemplate>
                    <asp:LinkButton ID="lblAccept" runat="server"  ForeColor="Red" CommandName="Approve" CommandArgument='<%#Eval("SupplierId") %>'>Approve</asp:LinkButton></ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderStyle-ForeColor="White">
                <ItemTemplate>
                    <asp:LinkButton ID="lblReject" runat="server"  ForeColor="Red" CommandName="Reject" CommandArgument='<%#Eval("SupplierId") %>'>Reject</asp:LinkButton></ItemTemplate>
                </asp:TemplateField>
                
                </Columns>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table><tr><td align="center" style="width: 784px">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td></tr></table>
   <%-- </form>--%>
</asp:Content>

