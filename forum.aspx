<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="forum.aspx.cs" Inherits="DURANDAL_IO.forum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .auto-style6 {
            width: 750px;
        }

        .postComment {
            margin: 30px;
        }

        .comments {
            text-align: center;
        }

        .list {
            font-size: 10px;
        }

        .username{
            font-size: 12px;
        }

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

        .content {
            background-color: #1F2326EE;
            border-radius: 8px;
            margin: 3em;
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
        <div class="content" style="margin-top: 8.5em;">
            <asp:Button ID="showPostComment" runat="server" Text="Click Me to Post Comments" BackColor="white" ForeColor="#6666FF" Font-Bold="True" Height="36px" Width="307px" OnClick="showPostComment_Click" />
            
            <div runat="server" id="promptToLogin" visible="false" style="margin-top:20px;">
                <div class="instruction">
                    <h3>You must be logged in to comment, press the button below to log in:</h3>
                </div>
                <div class="content">
                    <asp:Button class="logIn" Style="margin-top: 30px; margin-bottom: 30px;" ID="logIn" runat="server" Text="Click here to log in" BackColor="white" ForeColor="#6666FF" Font-Bold="True" Height="36px" Width="354px" OnClick="logIn_Click"/>
                </div>
            </div>

            <div runat="server" id="postingComment" visible="false">
                <div class="instruction">
                    <h3>Type out your comment below:</h3><asp:Label ID="errMsg" runat="server" Text="Label" Visible="false"></asp:Label>
                </div>
                <div class="enterText">
                    <asp:TextBox ID="commentTxt" class="auto-style6" runat="server" Height="44px" Rows="3"></asp:TextBox>
                </div>
                <div class="postButton">
                    <asp:Button class="postButton" Style="margin-top: 30px; margin-bottom: 30px;" ID="post" runat="server" Text="Post" BackColor="white" ForeColor="#6666FF" Font-Bold="True" Height="36px" Width="92px" OnClick="post_Click" />

                </div>
            </div>
        </div>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStrings %>" SelectCommand="SELECT [postId], [userName], [postContent], [date] FROM [comment] ORDER BY [date] DESC, [postId] DESC"></asp:SqlDataSource>
        <div class="content">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="postId" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="">Post Content:
            <asp:Label ID="postContentLabel" runat="server" Text='<%# Eval("postContent") %>' />
                        <br />
                        <div class="username">
                        Username:
            <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                        <br /></div>
                        <div class="list">
                            Date:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("date") %>' />
                            &nbsp;&nbsp;&nbsp;Post Number:
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("postId") %>' />
                        </div>
                        <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">postId:
            <asp:Label ID="postIdLabel1" runat="server" Text='<%# Eval("postId") %>' />
                        <br />
                        date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        <br />
                        postContent:
            <asp:TextBox ID="postContentTextBox" runat="server" Text='<%# Bind("postContent") %>' />
                        <br />
                        userName:
            <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                        <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">date:
            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        <br />
                        postContent:
            <asp:TextBox ID="postContentTextBox" runat="server" Text='<%# Bind("postContent") %>' />
                        <br />
                        userName:
            <asp:TextBox ID="userNameTextBox" runat="server" Text='<%# Bind("userName") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                        <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">Post Content:
            <asp:Label ID="postContentLabel" runat="server" Text='<%# Eval("postContent") %>' />
                        <br />
                        <div class="username">
                        Username:
            <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                        <br /></div>
                        <div class="list">
                            Date:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("date") %>' />
                            &nbsp;&nbsp;&nbsp;Post Number:
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("postId") %>' />
                        </div>
                        <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">postContent:
            <asp:Label ID="postContentLabel" runat="server" Text='<%# Eval("postContent") %>' />
                        <br />
                        userName:
            <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                        <br />
                        <div class="list">
                            Date:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("date") %>' />
                            &nbsp;&nbsp;&nbsp;Post Number:
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("postId") %>' />
                        </div>
                        <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>

    </div>
</asp:Content>
