<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="adminRegistration.aspx.cs" Inherits="DURANDAL_IO.adminRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .fit-screen {
            width: 100vw;
            overflow-y: hidden;
            display: flex;
            justify-content: stretch;
            max-width:100vw;
            height: 100vh;
            overflow: scroll;
            display: flex;
            align-content: stretch;
            flex-direction: column;
        }

        .registration-info {
            background-color: #1F2326EE;
            border-radius: 8px;
            margin: 3em;
            margin-top: 8.5em;
            color: white;
            padding: 2em;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fit-screen">
        <div class="registration-info">
        <h1>Registration Page</h1>
            <table>
                <tr>
                    <td>First Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="fname" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="lname" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="gender" runat="server">
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="country" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="username" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Label ID="errMsg" runat="server" Text="errMsg" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Label ID="usertype" runat="server" Text="admin" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="SignUpButton" runat="server" OnClick="SignUpButton_Click" Text="Sign Up" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserTable]"></asp:SqlDataSource>
         </div>
    </div>
</asp:Content>
