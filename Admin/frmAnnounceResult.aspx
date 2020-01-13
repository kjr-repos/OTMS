<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAnnounceResult.aspx.cs" Inherits="Admin_frmAnnounceResult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                Tenders</td>
        </tr>
        <tr>
            <td colspan="3"> &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" 
                    
                     onpageindexchanging="GridView1_PageIndexChanging" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" CssClass="table table-condensed table-hover" PageSize="10"  HeaderStyle-BackColor="#1b1b1b" HeaderStyle-ForeColor="White"
                     AlternatingRowStyle-BackColor="#B2BEB5"
                    >
                    
                    <Columns>
                    <asp:BoundField HeaderText="TenderId"  ItemStyle-Font-Bold="false" ItemStyle-ForeColor="Black" DataField="TenderId" HeaderStyle-ForeColor="White">

                        </asp:BoundField>
                <asp:BoundField HeaderText="Title" ItemStyle-Font-Bold="false"  ItemStyle-Font-Size="Small" ItemStyle-ForeColor="Black" DataField="Title" HeaderStyle-ForeColor="White" >

                        </asp:BoundField>
                <asp:BoundField HeaderText="ItemID" ItemStyle-Font-Bold="false" ItemStyle-ForeColor="Black" DataField="ItemID" HeaderStyle-ForeColor="White">

                        </asp:BoundField>
                <asp:BoundField HeaderText="OpenDate" ItemStyle-Font-Bold="false" ItemStyle-ForeColor="Black" DataField="OpenDate" 
                            HeaderStyle-ForeColor="White">

                        </asp:BoundField>
                <asp:BoundField HeaderText="ExpireDate" ItemStyle-Font-Bold="false"   ItemStyle-ForeColor="Black" DataField="ExpireDate" 
                            HeaderStyle-ForeColor="White">

                        </asp:BoundField>
                <asp:BoundField HeaderText="ResultDate" ItemStyle-Font-Bold="false" ItemStyle-ForeColor="Black" DataField="ResultDate" 
                            HeaderStyle-ForeColor="White">

                        </asp:BoundField>
                <asp:CommandField ShowSelectButton="true" SelectText="Click to Announce" />
                
                    </Columns>
                          
                </asp:GridView>
                    </div>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

