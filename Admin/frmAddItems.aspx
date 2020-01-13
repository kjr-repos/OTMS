<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAddItems.aspx.cs" Inherits="Admin_frmAddItems" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
    <br />
    <table class="style1">
        <tr>
        
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#6666FF" GroupingText="Add Item" Width="456px">
                    <table class="style1">
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 159px">
                                &nbsp;</td>
                            <td style="width: 232px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="color: #000066; width: 159px;padding-bottom:20px;">
                                <span>Item Name</span></td>
                            <td style="width: 232px">
                                <asp:TextBox ID="txtItemName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtItemName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="color: #000066; width: 159px;">
                                <span>Department</span></td>
                            <td style="width: 232px">
                                <asp:DropDownList ID="ddlDeptName" Class="form-control" runat="server" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 93px; height: 18px">
                                </td>
                            <td style="height: 18px; width: 159px;">
                                </td>
                            <td style="height: 18px; width: 232px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 159px">
                                &nbsp;</td>
                            <td style="width: 232px">
                                <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Font-Bold="True" 
                                    onclick="btnAdd_Click" Text="Add" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClear" class="btn btn-default" runat="server" Font-Bold="True" 
                                    onclick="btnClear_Click" Text="Clear" ValidationGroup="g" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 159px">
                                &nbsp;</td>
                            <td style="width: 232px">
                                <asp:Label ID="lblMessage" runat="server" Font-Size="Medium" 
                                    ForeColor="#FF0066"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 93px">
                                &nbsp;</td>
                            <td style="width: 159px">
                                &nbsp;</td>
                            <td style="width: 232px">
                                &nbsp;</td>
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

