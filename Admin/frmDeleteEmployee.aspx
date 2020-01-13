<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteEmployee.aspx.cs" Inherits="Admin_frmDeleteEmployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="height: 377px">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Delete Emp" Height="371px" 
                    Width="783px">
                    <table class="style1">
                    <tr>
                            <td style="width: 84px; height: 15px;">
                                </td>
                            <td style="width: 157px; height: 15px;">
                                </td>
                            <td align="left" style="height: 15px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                Employee Name:</td>
                            <td align="left">
                                <asp:DropDownList ID="ddlEmpId" runat="server" Class="form-control"
                                    onselectedindexchanged="ddlEmpId_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 25px;">
                                </td>
                            <td style="width: 157px; height: 25px;">
                                </td>
                            <td style="height: 25px">
                                </td>
                        </tr>
                        
                        <tr>
                            <td style="width: 84px; height: 32px;">
                                </td>
                            <td style="width: 157px; height: 32px;" align="right">
                                First Name:</td>
                            <td align="left" style="height: 32px">
                                <asp:TextBox ID="txtfname" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 33px;">
                                </td>
                            <td style="width: 157px; height: 33px;" align="right">
                                Last Name:</td>
                            <td align="left" style="height: 33px; font-weight: 700;">
                                <asp:TextBox ID="txtlname" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 32px;">
                                </td>
                            <td style="width: 157px; height: 32px;" align="right">
                                Dept Name:</td>
                            <td align="left" style="height: 32px">
                                <asp:TextBox ID="txtDeptName" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; ">
                                </td>
                            <td style="width: 157px; " align="right">
                                Phone No:</td>
                            <td align="left">
                                <asp:TextBox ID="txtPhoneno" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                         <tr>
                            <td style="width: 84px; ">
                                </td>
                            <td style="width: 157px; " align="right">
                                Email:</td>
                            <td align="left">
                                <asp:TextBox ID="txtEmail" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 29px;">
                                </td>
                            <td style="width: 157px; height: 29px;" align="right">
                                <p>
                                    Address:</p>
                            </td>
                            <td align="left" style="height: 29px">
                                <asp:TextBox ID="txtAddress" Class="form-control" runat="server" ReadOnly="True" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                City:</td>
                            <td align="left">
                                <asp:TextBox ID="txtCity" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                State:</td>
                            <td align="left">
                                <asp:TextBox ID="txtState" Class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr><tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                &nbsp;</td>
                            <td align="left">
                                <asp:Button ID="btnDelete" class="btn btn-danger"  runat="server" Font-Bold="True" 
                                    onclick="btnDelete_Click" Text="Delete" Width="71px" />
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

