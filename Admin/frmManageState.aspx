<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmManageState.aspx.cs" Inherits="Admin_frmManageState" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style1">
        <tr>
            <td style="height: 18px; width: 691px;">
                </td>
        </tr>
        <tr>
            <td align="center" style="height: 312px; width: 691px;">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Edit State" Height="284px" 
                    Width="779px">
                    <table class="style1">
                    <tr>
                            <td style="width: 84px; height: 39px;">
                                </td>
                            <td style="width: 157px; height: 39px;">
                                <asp:RadioButton ID="rbtnUpadate" runat="server" GroupName="g" Text="Update" 
                                    AutoPostBack="True" oncheckedchanged="rbtnUpadate_CheckedChanged" />
                            </td>
                            <td align="left" style="height: 39px; width: 320px;">
                                <asp:RadioButton ID="rbtnDelete" runat="server" GroupName="g" Text="Delete" 
                                    AutoPostBack="True" oncheckedchanged="rbtnDelete_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                Select State</td>
                            <td align="left" style="width: 320px">
                                <asp:DropDownList ID="ddlState" runat="server" Class="form-control"
                                    onselectedindexchanged="ddlState_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 25px;">
                                </td>
                            <td style="width: 157px; height: 25px;">
                                </td>
                            <td style="height: 25px; width: 320px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 32px;">
                                </td>
                            <td style="width: 157px; height: 32px;">
                                StateName</td>
                            <td align="left" style="height: 32px; width: 320px;">
                                <asp:TextBox Class="form-control" ID="txtname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 33px;">
                                </td>
                            <td style="width: 157px; height: 33px;">
                                State Description</td>
                            <td align="left" style="height: 33px; width: 320px;">
                                <asp:TextBox Class="form-control" ID="txtDesc" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 33px;">
                                </td>
                            <td style="width: 157px; height: 33px;">
                                &nbsp;</td>
                            <td align="left" style="height: 33px; width: 320px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 22px;">
                                </td>
                            <td style="width: 157px; height: 22px;">
                                </td>
                            <td style="height: 22px; width: 320px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 29px;">
                                </td>
                            <td style="width: 157px; height: 29px;">
                                &nbsp;</td>
                            <td align="left" style="height: 29px; width: 320px;">
                                <asp:Button ID="btnUpdate" class="btn btn-Info"  runat="server" Font-Bold="True" Text="Update" 
                                    Width="71px" onclick="btnUpdate_Click" />
                                &nbsp;
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                &nbsp;</td>
                            <td style="width: 320px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 691px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

