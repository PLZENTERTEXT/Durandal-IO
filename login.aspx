<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DURANDAL_IO.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .fit-screen {
            width: 100vw;
            overflow-y: hidden;
            display: flex;
            justify-content: stretch;
            max-width: 100vw;
            height: 100vh;
            overflow: scroll;
            display: flex;
            align-content: stretch;
            flex-direction: column;
        }

        .login-info {
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
        <div class="login-info">
            <h1>Login Page</h1>
            <a href="memberRegistration.aspx" style="padding:1em; background-color:#47CBEE; color:#1F2326;">Sign Up</a>
            <br />
            <br />
            <table>
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
                        <%--<asp:TextBox ID="pwd" TextMode="Password" runat="server" Width="281px"></asp:TextBox>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br /><asp:Button ID="Button1" runat="server" OnClick="SignInButton_Click" Text="Sign In" />
                    </td>
                    <td>
                    </td>
                    <td>
                        <br /><asp:Label ID="errorMsg" runat="server" Text="[errorMsg]" Visible="False"></asp:Label>
                    </td>
                </tr>
                </table>
            </div>
        </div>
</asp:Content>
