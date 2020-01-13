<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAddState.aspx.cs" Inherits="Admin_frmAddState" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
    <table style="width: 100%">
        <tr >
            <td style="width: 144px">
                &nbsp;</td>
            <td>
            <br /><br />
                <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#3366FF" GroupingText="Add State" Width="490px" Height="180px">
                    <br />
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 88px">
                                &nbsp;</td>
                            <td style="font-size: medium">
                                State Name</td>
                            <td>
                                <asp:TextBox ID="txtName" Class="form-control" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtName" ErrorMessage="*" Font-Size="Medium"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 88px">
                                &nbsp;</td>
                            <td style="font-size: medium">
                                Description</td>
                            <td>
                                <asp:TextBox ID="txtDesc" runat="server" Class="form-control"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 88px">
                                &nbsp;</td>
                            <td style="font-size: medium">
                                Country Name</td>
                            <td>
                                <asp:DropDownList ID="ddlCountyName" runat="server" Class="form-control">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2"> </td>
                            <td>
                                <asp:Button ID="btnAdd" class="btn btn-Primary" runat="server"  Text="Add"  
                                    onclick="btnAdd_Click" Font-Bold="True" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClear" runat="server" class="btn btn-default" Text="Clear" ValidationGroup="g" 
                                     onclick="btnClear_Click"  Font-Bold="True" />
                            </td>
                        </tr>
                        <tr >
                            <td style="width: 88px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lblMessage" runat="server" ForeColor="#FF0066"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   <%-- </form>--%>
</asp:Content>

