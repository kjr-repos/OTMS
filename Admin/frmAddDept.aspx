<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAddDept.aspx.cs" Inherits="Admin_frmAddDept" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="form1" runat="server">--%>
    <table ><tr><td align="center" 
            style="width: 784px; font-family: 'Times New Roman', Times, serif; font-size: x-large; color: #0000FF">
        &nbsp;</td></tr></table>
    <table style="width: 100%">
        <tr>
            <td style="width: 141px">
                </td>
            <td style="width: 488px">
                <asp:Panel ID="Panel1" runat="server" Width="444px" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" 
                    GroupingText="Add Department">
                <table style="width: 98%; height: 133px;">
                    <tr>
                        <td style="width: 112px">
                            &nbsp;</td>
                        <td style="width: 158px">
                            &nbsp;</td>
                        <td style="width: 367px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;</td>
                        <td style="width: 158px;padding-bottom:20px;" >
                            <asp:Label ID="Label1" runat="server" ForeColor="#0066FF"  Text="Department Name"></asp:Label>
                        </td>
                        <td style="width: 367px">
                            <asp:TextBox ID="txtName" Class="form-control" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px; height: 53px;">
                            </td>
                        <td style="width: 158px; height: 53px;">
                            <asp:Label ID="Label2" runat="server" ForeColor="#0066FF" Text="Location"></asp:Label>
                        </td>
                        <td style="width: 367px; height: 53px;">
                            <asp:TextBox ID="txtLocation" Class="form-control" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 112px">
                            &nbsp;</td>
                        <td style="width: 158px">
                            &nbsp;</td>
                        <td style="width: 367px">
                            <asp:Button ID="brnAdd" runat="server"  class="btn btn-primary" Text="Add" 
                                onclick="brnAdd_Click" Font-Bold="True" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnClear" runat="server" Text="Clear" class="btn btn-default" onclick="btnClear_Click" 
                                ValidationGroup="g" Font-Bold="True" />
                        </td>
                        <tr><td></td><td></td><td>
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </td></tr>
                    </tr>
                </table>
    </asp:Panel>
                </td>
            <td>
                </td>
        </tr>
        
        
    </table>
   <%-- </form>--%>
</asp:Content>

