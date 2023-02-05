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

        .fit-screen {
           /* width: 100vw;
            overflow-y: hidden;
            display: flex;
            justify-content: center;*/
            max-width:100vw;
            height: 100vh;
            overflow: scroll;
            display: grid;
            justify-content: center;
            grid-template-columns: repeat(auto-fit,minmax(264px,1fr));

        }

        .fit-screen ::-webkit-scrollbar {
            display: none;
        }


   /*     @media screen and (max-width:400px) {
            .fit-screen {
                grid-template-columns: 100%;
            }
        }*/

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
    <div class="fit-screen">
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
            <a href="/builds/HoH">
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
            <a href="/builds/HoF">
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
            <a href="/builds/HoH">
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