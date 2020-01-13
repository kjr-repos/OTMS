<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmManageCountry.aspx.cs" Inherits="frmManageCountry" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="height: 273px">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Edit Country" Height="247px" 
                    Width="781px">
                    <table class="style1">
                    <tr>
                            <td style="width: 84px; height: 39px;">
                                </td>
                            <td style="width: 157px; height: 39px;">
                                <asp:RadioButton ID="rbtnUpadate" runat="server" GroupName="g" Text="Update" 
                                    AutoPostBack="True" oncheckedchanged="rbtnUpadate_CheckedChanged" />
                            </td>
                            <td align="left" style="height: 39px; width: 216px;">
                                <asp:RadioButton ID="rbtnDelete" runat="server" GroupName="g" Text="Delete" 
                                    AutoPostBack="True" oncheckedchanged="rbtnDelete_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px">
                                &nbsp;</td>
                            <td style="width: 157px">
                                Select Country</td>
                            <td align="left" style="width: 216px">
                                <asp:DropDownList ID="ddlCountry" Class="form-control" runat="server"
                                    onselectedindexchanged="ddlCountry_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 25px;">
                                </td>
                            <td style="width: 157px; height: 25px;">
                                </td>
                            <td style="height: 25px; width: 216px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 84px; height: 32px;">
                                </td>
                            <td style="width: 157px; height: 32px;">
                                CountryName</td>
                            <td align="left" style="height: 32px; width: 216px;">
                                <asp:TextBox ID="txtname" Class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp; </td>
                        </tr>
                        <tr >
                            <td style="width: 84px; height: 33px;">
                                </td>
                            <td style="width: 157px; height: 33px;">
                                Country Description</td>
                            <td align="left" style="height: 33px; width: 216px;">
                                <asp:TextBox ID="txtDesc" Class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                       <tr>
                           <td colspan="3">&nbsp;</td>
                       </tr>
                        <tr>
                            <td style="width: 84px; height: 29px;">
                                </td>
                            <td style="width: 157px; height: 29px;">
                                &nbsp;</td>
                            <td align="left" style="height: 29px; width: 216px;">
                                <asp:Button ID="btnUpdate" class="btn btn-Info" runat="server" Font-Bold="True" Text="Update" 
                                    Width="71px" onclick="btnUpdate_Click" />
                                &nbsp;
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

