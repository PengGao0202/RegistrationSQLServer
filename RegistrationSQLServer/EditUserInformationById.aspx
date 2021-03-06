﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUserInformationById.aspx.cs" Inherits="RegistrationSQLServer.EditUserInformationById" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Update User Information:</h1>
            <br />
            <asp:Panel ID="enterUserInfoPanel" runat="server">
                <table cellpadding="3" border="0">
                    <tr>
                        <td>First name:</td>
                        <td>
                            <asp:TextBox ID="firstNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="firstNameTextBoxValidator" ControlToValidate="firstNameTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a First Name"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>Last name:</td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="lastNameTextBoxValidator" ControlToValidate="lastNameTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a Last Name"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="addressTextBoxValidator" ControlToValidate="addressTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter an address"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>
                            <asp:TextBox ID="cityTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="cityTextBoxValidator" ControlToValidate="cityTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a city"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>State or Province:</td>
                        <td>
                            <asp:TextBox ID="stateOrProvinceTextBox" runat="server" />
                            <asp:RegularExpressionValidator ID="provinceValidator" runat="server" ValidationExpression="[A-z]{2}" ControlToValidate="stateOrProvinceTextBox" ForeColor="Red" ErrorMessage="Please enter 2 characters province code"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="stateOrProvinceTextBoxValidator" ControlToValidate="stateOrProvinceTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a province"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>Zip Code/Postal Code:</td>
                        <td>
                            <asp:TextBox ID="zipCodeTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="zipCodeTextBoxValidator" ControlToValidate="zipCodeTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a zip code"></asp:RequiredFieldValidator>


                        </td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td>
                            <asp:TextBox ID="countryTextBox" runat="server" />
                            <asp:RequiredFieldValidator ID="countryTextBoxValidator" ControlToValidate="countryTextBox" runat="server" ForeColor="Red" ErrorMessage="Please enter a country"></asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="updateInfoButton" runat="server" Text="Update user information" OnClick="UpdateInfoButton_OnClick" /></td>
                    </tr>
                </table>

                <asp:Label ID="lblResultMessage" runat="server" ForeColor="green"></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButtonToInsert" runat="server" OnClick="InsertUserInformationButton_OnClick">InsertNewUser</asp:LinkButton>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
