<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="builds.aspx.cs" Inherits="DURANDAL_IO.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        img {
            vertical-align: middle;
            border-style: none;
            width: 139px;
            height: 253px;
        }

        h2 {
            text-align: center;
        }

        .fit-screen-builds {
            width: 100vw;
            overflow-y: hidden;
            display: flex;
            justify-content: center;
            height: 100vh;
            min-height: 455px;
            overflow: hidden;
            display: grid;
            justify-content: center;
            grid-template-columns: repeat(auto-fit,minmax(264px,1fr));

        }

        .fit-screen-builds ::-webkit-scrollbar {
            display: none;
        }

        .content-box {
            display:flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            max-width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fit-screen-builds">
        <div class="content-area">
            <a href="HoF.aspx">
                <div class="content-box">
                    <!-- So it centers stuff inside the a tag -->
                    <div>
                        <img alt="HoF Portrait" src="./Images/HoF Portrait.png">
                    </div>
                    <div>
                        <h2>Herrscher of Flamescion</h2>
                    </div>
                </div>
            </a>
        </div>
        <div class="content-area">
            <a href="HoH.aspx">
                <div class="content-box">
                    <div>
                        <img alt="HoH Portrait" src="./Images/HoH Portrait.png">
                    </div>
                    <div>
                        <h2>Herrscher of Human: Ego</h2>
                    </div>
                </div>
            </a>
        </div>
        <div class="content-area">
            <a href="HoT.aspx">
                <div class="content-box">
                    <div>
                        <img alt="HoT Portrait" src="./Images/HoT Portrait.png">
                    </div>
                    <div>
                        <h2>Herrscher of Truth</h2>
                    </div>
                </div>
            </a>
        </div>
        <div class="content-area">
            <a href="PE.aspx">
                <div class="content-box">
                    <div>
                        <img alt="Palatinus Equinox Portrait" src="./Images/Palatinus Equinox Portrait.png">
                    </div>
                    <div>
                        <h2>Palatinus Equinox</h2>
                    </div>
                </div>
            </a>
        </div>
    </div>
</asp:Content>