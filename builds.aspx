<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="builds.aspx.cs" Inherits="DURANDAL_IO.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
            vertical-align: middle;
            border-style: none;
        }

        body {
            overflow: scroll;
            overflow-x: hidden;
        }

        a:any-link {
            color: white;
            text-decoration: none;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin-right: -15px;
            margin-left: -15px;
        }

        .builds-profile {
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .img-fluid {
            max-width: 100%;
            width: 100%;
            height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <a href="/builds/HoF">
            <div>
                <img class="img-fluid" alt="HoF Portrait" src="./Images/HoF Portrait.png" width="400" height="400">
            </div>
            <div>
                <h2>Herrscher of Flamescion</h2>
            </div>
        </a>
    </div>
    <div>
        <a href="/builds/HoH">
            <div>
                <img class="img-fluid" alt="HoH Portrait" src="./Images/HoH Portrait.png" width="400" height="400">
            </div>
            <div>
                <h2>Herrscher of Human: Ego</h2>
            </div>
        </a>
    </div>
    <div>
        <a href="/builds/HoF">
            <div>
                <img class="img-fluid" alt="HoT Portrait" src="./Images/HoT Portrait.png" width="400" height="400">
            </div>
            <div>
                <h2>Herrscher of Truth</h2>
            </div>
        </a>
    </div>
    <div>
        <a href="/builds/HoH">
            <div>
                <img class="img-fluid" alt="Palatinus Equinox Portrait" src="./Images/Palatinus Equinox Portrait.png" width="400" height="400">
            </div>
            <div>
                <h2>Palatinus Equinox</h2>
            </div>
        </a>
    </div>
</asp:Content>