<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editUserProfile.aspx.cs" Inherits="DURANDAL_IO.editUserProfile" %>
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

        .profile-info {
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
        <div class="profile-info">
            <h1>My Profile</h1>
            <asp:Label ID="uname" runat="server" Text="[uname]"></asp:Label>
            <br />
            <asp:LinkButton ID="SignOutButton" runat="server" OnCommand="SignOutButton_Command" style="padding:1em; background-color:#47CBEE; color:#1F2326;">Sign Out</asp:LinkButton>
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
                        <asp:DropDownList ID="gender" runat="server" OnSelectedIndexChanged="Gender_SelectedIndexChanged" AutoPostBack="True">
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
                    <td>Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server" Width="281px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="3"><asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></td>
                </tr>
                <tr>
                    <br />
                    <td><asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="errMsg" runat="server" Text="[errMsg]" Visible="False"></asp:Label>
                        &nbsp;
                        <asp:Label ID="usertype" runat="server" Text="member" Visible="False"></asp:Label>
                        &nbsp;
                        <asp:Label ID="img" runat="server" Text="img" Visible="False"></asp:Label>
                    </td>
                </tr>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserTable]"></asp:SqlDataSource>
            </table>
        </div>
    </div>
</asp:Content>
