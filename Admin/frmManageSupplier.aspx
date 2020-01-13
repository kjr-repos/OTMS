<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmManageSupplier.aspx.cs" Inherits="Admin_frmManageSupplier" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="height: 377px">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Delete Supplier" Height="371px" 
                    Width="782px">
                    <table class="style1">
                    <tr>
                            <td style="width: 232px; height: 15px;">
                                </td>
                            <td style="width: 157px; height: 15px;">
                                </td>
                            <td align="left" style="height: 15px; width: 311px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                Supplier Name:</td>
                            <td align="left" style="width: 311px">
                                <asp:DropDownList ID="ddlSupplierId" runat="server" Height="22px" Width="124px" 
                                    onselectedindexchanged="ddlSupplierId_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 232px; height: 25px;">
                                </td>
                            <td style="width: 157px; height: 25px;">
                                </td>
                            <td style="height: 25px; width: 311px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 232px; height: 32px;">
                                </td>
                            <td style="width: 157px; height: 32px;" align="right">
                                First Name:</td>
                            <td align="left" style="height: 32px; width: 311px;">
                                <asp:TextBox ID="txtfname" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 232px; height: 33px;">
                                </td>
                            <td style="width: 157px; height: 33px;" align="right">
                                Last Name:</td>
                            <td align="left" style="height: 33px; font-weight: 700; width: 311px;">
                                <asp:TextBox ID="txtlname" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 232px; ">
                                </td>
                            <td style="width: 157px; " align="right">
                                Phone No:</td>
                            <td align="left" style="width: 311px">
                                <asp:TextBox ID="txtPhoneno" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                        </tr>
                         <tr>
                            <td style="width: 232px; ">
                                </td>
                            <td style="width: 157px; " align="right">
                                Email:</td>
                            <td align="left" style="width: 311px">
                                <asp:TextBox ID="txtEmail" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 232px; height: 29px;">
                                </td>
                            <td style="width: 157px; height: 29px;" align="right">
                                <p>
                                    Address:</p>
                            </td>
                            <td align="left" style="height: 29px; width: 311px;">
                                <asp:TextBox ID="txtAddress" runat="server" ReadOnly="True" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                City:</td>
                            <td align="left" style="width: 311px">
                                <asp:TextBox ID="txtCity" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                State:</td>
                            <td align="left" style="width: 311px">
                                <asp:TextBox ID="txtState" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px" align="right">
                                &nbsp;</td>
                            <td align="left" style="width: 311px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                &nbsp;</td>
                            <td style="width: 311px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                &nbsp;</td>
                            <td style="width: 311px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 232px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                &nbsp;</td>
                            <td align="left" style="width: 311px">
                                <asp:Button ID="btnDelete" class="btn btn-Danger" runat="server" Font-Bold="True" 
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

