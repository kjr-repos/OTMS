<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAddEmployee.aspx.cs" Inherits="Admin_frmAddEmployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server">
    <%-- <form id="form1" runat="server">--%>
    <table style="width: 100%;">
    <tr>
        <td style="width: 187px">
            &nbsp;</td>
        <td>
            <asp:Panel ID="Panel1" runat="server" 
                    GroupingText="Add Employee" Width="475px">
                    <table  >
                       
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                FirstName</td>
                            <td>
                                <asp:TextBox ID="txtFName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px; height: 23px">
                                &nbsp;</td>
                            <td style="width: 162px; height: 23px">
                                LastName</td>
                            <td style="height: 23px">
                                <asp:TextBox ID="txtLName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Gender</td>
                            <td>
                                <asp:RadioButton ID="rbtnMale" runat="server" Text="Male" GroupName="r" />
                                &nbsp;
                                <asp:RadioButton ID="rbtnFemale" runat="server" Text="Female" GroupName="r" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                DeptId</td>
                            <td>
                                <asp:DropDownList ID="ddlDeptId" Class="form-control" runat="server" >
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="ddlDeptId" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Employee Name</td>
                            <td>
                                <asp:TextBox ID="txtUserName" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Password</td>
                            <td>
                                <asp:TextBox ID="txtPassword" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Confirm Password</td>
                            <td>
                                <asp:TextBox ID="txtCPassword" Class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtFName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Phone</td>
                            <td>
                                <asp:TextBox ID="txtPhone" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="txtPhone" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtPhone" ErrorMessage="only 10 digits" 
                                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                Email</td>
                            <td>
                                <asp:TextBox ID="txtEmail" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="id formate not correct" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr style="display:none">
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px;">
                                Address</td>
                            <td>
                                <asp:TextBox ID="txtAdress" Visible="false" Class="form-control" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px; height: 29px">
                                </td>
                            <td style="width: 162px; height: 29px">
                                City</td>
                            <td style="height: 29px">
                                <asp:TextBox ID="txtCity" Class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                State</td>
                            <td>
                                <asp:DropDownList ID="ddlState" Class="form-control" runat="server" >
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="ddlState" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnAdd" runat="server"  class="btn btn-primary" onclick="btnAdd_Click" 
                                    Text="Add"  Font-Bold="True" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClear" runat="server" class="btn btn-defaut" onclick="btnClear_Click" Text="Clear" 
                                    ValidationGroup="g" Font-Bold="True" />
                            </td>
                        </tr>
                        
                        <tr>
                            <td style="width: 46px; height: 28px;">
                                </td>
                            <td style="width: 162px; height: 28px;">
                                </td>
                            <td style="height: 28px">
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF3399"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 46px">
                                &nbsp;</td>
                            <td style="width: 162px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                     
                        
                        
                    </table>
                </asp:Panel></td>
        <td>
            &nbsp;</td>
    </tr>
</table>
    <%--</form>--%>
</asp:Content>

