<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Main Story.aspx.cs" Inherits="DURANDAL_IO.Main_Story" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
   
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap" rel="stylesheet"> 

        .parent{
            background-attachment:fixed;
            overflow-y:auto;
        }

        .container{
            display:flex;
            flex-direction:column;
            max-width:75%;
            margin-top:10%;
            color:white;
            font-family:'Yusei Magic',sans-serif;
        }
        .about-us-header {
            border:solid;
            background-color:rgba(0,0,139,0.75);
            border-radius:25px;
            text-align: center;
            font-size: 32px;
            font-weight: bold;
            margin-top: 50px;
        }
        .main-story-block {
            border:solid;
            background-color:rgba(0,0,139,0.75);
            border-radius:25px;
            text-align: justify;
            margin: 50px;
            font-size: 18px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <div class="about-us-header">
            Main Story
         </div>
          <div class="main-story-block">
           a 
    </div>
        <div class="main-story-block">
            a
    </div>
        <div class="main-story-block">
            a
    </div>
        <div class="main-story-block">
            a
    </div>
        <div class="main-story-block">
            a
    </div>
        <div class="main-story-block">
           a 
    </div>
</asp:Content>
