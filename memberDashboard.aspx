<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="memberDashboard.aspx.cs" Inherits="DURANDAL_IO.memberDashboard" %>
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

        .dashboard-info {
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

        .buttons {
            padding: 1em;
            background-color: #47CBEE;
            color: #1F2326; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fit-screen">
        <div class="dashboard-info">
            <h1>My Dashboard</h1>
            <asp:Label ID="uname" runat="server" Text="[uname]"></asp:Label>
            <br />
            <br />
            <table>
                <tr>
                    <td><a href="editUserProfile.aspx" class="buttons" style="margin-right:2em;">Edit Profile</a></td>
                    <td><asp:LinkButton ID="SignOutButton" class="buttons" runat="server" OnCommand="SignOut_Command">Sign Out</asp:LinkButton></td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </div>
</asp:Content>
