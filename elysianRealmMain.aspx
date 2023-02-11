<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="elysianRealmMain.aspx.cs" Inherits="DURANDAL_IO.elysianRealmMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Elysian Realm</title>
    <style>
        body {
            overflow: auto;
        }

        div {
            font-family: 'Open Sans';
        }

        .chara {
            width: 100%;
            border: none;
        }

        .row {
            display: flex;
        }

        .column1 {
            width: 80%;
            float: left;
            margin-left: 10%;
            margin-right: 60px;
        }

        .column2 {
            width: 100%;
        }

        .table2 {
            width: 80%;
        }


        table {
            border-collapse: collapse;
            border-spacing: 0;
            border: 2px solid white;
            width: 100%;
            text-align: center
        }

        .title {
            font-weight: bold;
            text-decoration: underline;
            margin-bottom: 0px;
        }

        .description {
            margin-top: 0px;
        }

        .flameChasers {
            margin-bottom: 50px;
        }

        .comment{
            background-color:#C0C0C0;
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            color:black;
        }

        .auto-style2 {
            height: 163px;
            width: 164px;
        }

        .auto-style4 {
            width: 96px;
        }

        .auto-style5 {
            margin-left: 200px;
            margin-right: 200px;
        }

        .auto-style6 {
            width: 750px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flameChasers">
        <h1>Flame Chasers</h1>
        <p>Click on any of the image below to know more about their signets</p>
        <table class="chara">
            <tr>
                <th><a href="#kevin">
                    <img src="./Images/Flame Chaser/Kevin Kaslana.png" alt="Kevin Kaslana" style="height: 222px; width: 222px" /></a></th>
                <th><a href="#aponia">
                    <img src="./Images/Flame Chaser/Aponia.png" alt="Aponia" style="height: 222px; width: 222px" /></a></th>
                <th><a href="#eden">
                    <img src="./Images/Flame Chaser/Eden.png" alt="Eden" style="height: 200px; width: 222px" /></a></th>
                <th><a href="#su">
                    <img src="./Images/Flame Chaser/Su.png" alt="Su" style="height: 222px; width: 222px" /></a></th>
                <th><a href="#hua">
                    <img src="./Images/Flame Chaser/Hua.png" alt="Hua" style="height: 222px; width: 222px" /></a></th>
            </tr>
            <tr>
                <th>Kevin Kaslana</th>
                <th>Aponia</th>
                <th>Eden</th>
                <th>Su</th>
                <th>Hua</th>
            </tr>
        </table>
    </div>


    <div id="Signet Introduction">
        <h1>Signet Introduction</h1>
        <h2>Kevin Kaslana</h2>
        <a name="kevin"></a>
        <div style="margin-left: 20px">
            <a href="#kevin">
                <asp:Button ID="showHideKevin" runat="server" Text="Show/Hide" BackColor="#6600FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="showHideKevin_Click" /></a>
        </div>
        <div runat="server" id="Kevin" visible="true">
            <div id="Kevin Intro">
                <img src="./Images/Flame Chaser/Kevin Kaslana.png" alt="Kevin Kaslana" style="height: 222px; width: 222px" />
                <p>
                    Kevin Kaslana is the leader of the Thirteen Flame-Chasers and World Serpent. He is the first successful MANTIS. 
                Of the thirteen heroes of Fire Moth he was ranked highest, with the code name <em>"Deliverance"</em>.
                </p>
                <br />
                <table style="border: none; width: 100%; text-align: center">
                    <tr>
                        <td rowspan="2">
                            <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" class="auto-style2" /></td>
                        <td colspan="2">Deliverance signet is focused on giving buffs to your character during and after using  your ultimate ability</td>
                    </tr>
                    <tr>
                        <td colspan="2"><b>Click the buttons below to show and hide the signets</b></td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="showD1" runat="server" Text="Show Deliverance Common Signet" Width="350px" BackColor="Black" ForeColor="#6666FF" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showD1_Click" /></th>
                        <th>
                            <asp:Button ID="showD2" runat="server" Text="Show Deliverance Core One Signet" Width="350px" BackColor="Black" ForeColor="#6666FF" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showD2_Click" /></th>
                        <th>
                            <asp:Button ID="showD3" runat="server" Text="Show Deliverance Core Two Signet" Width="350px" BackColor="Black" ForeColor="#6666FF" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showD3_Click" /></th>
                    </tr>
                </table>
            </div>
            <br />
            <div runat="server" visible="false" id="deliveranceCommon">
                <asp:Button ID="hideD1" runat="server" Text="X" Width="30px" Height="30px" BackColor="#6668FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideD1_Click" Style="margin-left: 200px" />
                <div style="border: 5px solid #6666FF;" class="auto-style5">
                    <h3 style="margin: 0px; text-align: center; background-color: #6666FF">Common Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Goblet of the Giver</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate boosts Total DMG by 35% for 5s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Rochet of the Pilgrim</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate restores <b>3</b> SP per second for <b>5</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Pendant of the Watcher</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate boosts Physical DMG by 30% for 5s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Brand of the Undead</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate boosts Elemental DMG by <b>30</b>% for <b>5</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Mask of the Predator</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate boosts Physical Breach by <b>25</b>% for <b>5</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Artifact of the Inhibitor</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate boosts Elemental Breach by <b>20</b>% for <b>5</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="deliveranceCoreOne">
                <asp:Button ID="hideD2" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#6668FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideD2_Click" />
                <div class="auto-style5" style="border: 5px solid #6666FF;">
                    <h3 style="margin: 0px; text-align: center; background-color: #6666FF">Core One Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Blade of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate triggers Final Battle status during which all buffs provided by Normal Signets of Deliverance increase by <b>50</b>% for <b>5</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Crusade of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            After <b>3</b>s into Final Battle, all buffs provided by Normal Signets of Deliverance increase by <b>90</b>% instead of <b>50</b>%
                                            <br />
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Flock of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Final Battle is also considered burst mode. Total DMG increases by <b>20</b>% in burst mode.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Echo of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Duration of Final Battle and all buffs provided by Normal Signets of Deliverance are extended to <b>8</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="deliveranceCoreTwo">
                <asp:Button ID="hideD3" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#6668FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideD3_Click" />
                <div class="auto-style5" style="border: 5px solid #6666FF;">
                    <h3 style="margin: 0px; text-align: center; background-color: #6666FF">Core Two Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Shadow of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Ultimate or burst mode ATKs hitting enemies <b>50</b> times triggers War of Deliverance status during which all buffs provided by Normal Signets of Deliverance are active.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Dream of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            In War of Deliverance, all buffs provided by Normal Signets of Deliverance are enhanced by <b>50</b>%.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Resolve of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Every hit of Ultimate or burst mode ATKs boosts Total DMG by <b>0.5</b>% (caps at <b>50</b>%).
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Deliverance.png" alt="Deliverance signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Triumph of the Deliverer</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Entering War of Deliverance makes Valkyrie attacks ignore enemy DEF and Elemental Resists for <b>6</b>s, after which all enemies take <b>20</b>% bonus Total DMG.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <h2>Aponia</h2>
        <a name="aponia"></a>
        <div style="margin-left: 20px">
            <asp:Button ID="Button12" runat="server" Text="Show/Hide" BackColor="#6600FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="showHideAponia_Click" />
        </div>
        <div runat="server" id="Aponia" visible="true">
            <div id="Aponia Intro">
                <br />
                <img src="./Images/Flame Chaser/Aponia.png" alt="Eden" style="height: 222px; width: 222px" />
                <p>
                    Aponia is a member of Fire Moth and a psychic MANTIS. She is ranked 3rd among the Thirteen Flame-Chasers, her codename being <em>"Discipline"</em>.  
                </p>
                <br />
                <table style="border: none; width: 100%; text-align: center">
                    <tr>
                        <td rowspan="2">
                            <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" class="auto-style2" /></td>
                        <td colspan="2">Discipline signet is focused on giving stackablebuffs to your character that are decreased when comitting certain actions</td>
                    </tr>
                    <tr>
                        <td colspan="2"><b>Click the buttons below to show and hide the signets</b></td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="Button14" runat="server" Text="Show Discipline Common Signet" Width="350px" BackColor="Black" ForeColor="#87919B" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showA1_Click" /></th>
                        <th>
                            <asp:Button ID="Button15" runat="server" Text="Show Discipline Core One Signet" Width="350px" BackColor="Black" ForeColor="#87919B" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showA2_Click" /></th>
                        <th>
                            <asp:Button ID="Button16" runat="server" Text="Show Discipline Core Two Signet" Width="350px" BackColor="Black" ForeColor="#87919B" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showA3_Click" /></th>
                    </tr>
                </table>
            </div>
            <br />
            <div runat="server" visible="false" id="disciplineCommon">
                <asp:Button ID="Button17" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#87919B" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideA1_Click" />
                <div class="auto-style5" style="border: 5px solid #87919B;">
                    <h3 style="margin: 0px; text-align: center; background-color: #87919B;">Common Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">First, No Betrayal</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Exhortation increases by <b>5</b> per second and caps at <b>200</b>. Basic ATK's Total DMG increases by <b>0.3</b>% of Exhortation. Triggering Ultimate Evasion Skill reduces <b>50</b>% Exhortation.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Second, No Deception</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Exhortation increases by <b>5</b> per second and caps at <b>200</b>. Character has Total DMG Reduction equal to <b>0.3</b>% of Exhortation. Summoning entities reduces <b>50</b>% Exhortation.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Third, No Brutality</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Exhortation increases by <b>5</b> per second and caps at <b>200</b>. Character has bonus SP regen per second equal to <b>1</b>% of Exhortation. Reaching <b>160</b> combo hits reduces <b>50</b>% Exhortation.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Fourth, No Insolence</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Exhortation increases by <b>5</b> per second and caps at <b>200</b>. Ultimate's Physical DMG and Elemental DMG increase by <b>0.3</b>% of Exhortation. Using weapon skills reduces <b>50</b>% Exhortation.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2" class="auto-style4">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Fifth, No Falsehood</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Valkyries start with <b>70</b> bonus Exhortation. Whenever Exhortation is reduced, enemies take <b>25</b>% bonus Total DMG for <b>5</b>s. Can be refreshed.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Sixth, No Decadence</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Boosts Valkyrie Total DMG by <b>30</b>% and keeps Exhortation from decreasing for <b>15</b>s upon QTE hitting an enemy. Triggering it again resets the duration.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="disciplineCoreOne">
                <asp:Button ID="Button18" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#87919B" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideA2_Click" />
                <div class="auto-style5" style="border: 5px solid #87919B;">
                    <h3 style="margin: 0px; text-align: center; background-color: #87919B">Core One Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: You Shall Be Subject to Numerous Disciplines</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Reaching <b>120</b> Exhortation induces Mortification where Valkyrie Total DMG increases by <b>25</b>% of Exhortation. Also, for every Signet of Discipline unlocked, Valkyries deal <b>5</b>% bonus Physical DMG and Elemental DMG.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">You Shall Be Bound by Thy Body</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                In Mortification, Basic ATK has <b>30</b>% Physical Breach and Elemental Breach but Ultimate deals <b>20</b>% less Total DMG.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">You Shall Be Committed to Thy Life</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                Exhortation starts at <b>40</b> and won't drop below <b>40</b>.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">You Shall Be Witnessed by Thy Heart</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            In Mortification, Ultimate deals <b>40</b>% bonus Total DMG but Basic ATK deals <b>20</b>% less Physical and Elemental DMG.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="disciplineCoreTwo">
                <a href="#su">
                    <asp:Button ID="Button19" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#87919B" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideA3_Click" /></a>
                <div class="auto-style5" style="border: 5px solid #87919B;">
                    <h3 style="margin: 0px; text-align: center; background-color: #87919B">Core Two Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: You Shall Receive Disciplines' Blessing</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Normal Signet of Discipline grants Exhortation <b>100</b>% increase per second. When Exhortation exceeds <b>150</b>, "You Shall Know Your Sins" will trigger every <b>5</b>s around the Valkyrie, dealing <b>1400</b>% ATK of Adaptive DMG. The Valkyrie deals <b>10</b>% more Total DMG for each enemy hit, for a total of <b>70</b>%, for <b>10</b>s. Triggering it again resets the duration.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">You Shall Answer Prayers</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                Triggering You Shall Know Your Sins causes the Valkyrie to enter Penance for <b>8</b>s. In Penance, the Valkyrie takes <b>30</b>% less Total DMG and deals <b>40</b>% more Physical and Elemental DMG to enemies. Valkyrie deals <b>800</b>% ATK of Adaptive DMG to attacking enemies when hit; CD: <b>5</b>s. Triggering it again resets the duration.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">You Shall Punish Evil</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                Enemies struck by You Shall Know Your Sins two or more times take <b>40</b>% more Total DMG. <b>5</b> SP is restored when these enemies are hit by You Shall Know Your Sins.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Discipline.png" alt="Discipline signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">You Shall Follow Good</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            You Shall Know Your Sins' Total DMG dealt increases <b>40</b>% and increases Physical and Elemental Breach by <b>0.25</b>% of Exhortation for <b>6</b>s upon hitting an enemy. Triggering it again resets the duration.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <h2>Eden</h2>
        <a name="eden"></a>
        <div style="margin-left: 20px">
            <asp:Button ID="showHideEden" runat="server" Text="Show/Hide" BackColor="#6600FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="showHideEden_Click" />
        </div>
        <div runat="server" id="Eden" visible="true">
            <div id="Eden Intro">
                <br />
                <img src="./Images/Flame Chaser/Eden.png" alt="Eden" style="height: 222px; width: 222px" />
                <p>
                    Eden is another member of The Thirteen Flame-Chasers. She is ranked fourth amongst the thirteen, and was once "the brightest star" of the Previous Era. Her codename is <em>"Gold"</em>.
                </p>
                <br />
                <table style="border: none; width: 100%; text-align: center">
                    <tr>
                        <td rowspan="2">
                            <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" class="auto-style2" /></td>
                        <td colspan="2">Gold signet is focused on giving buffs to your character when using and regenerating SP</td>
                    </tr>
                    <tr>
                        <td colspan="2"><b>Click the buttons below to show and hide the signets</b></td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="Button1" runat="server" Text="Show Gold Common Signet" Width="350px" BackColor="Black" ForeColor="gold" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showG1_Click" />
                        </th>
                        <th>
                            <asp:Button ID="Button2" runat="server" Text="Show Gold Core One Signet" Width="350px" BackColor="Black" ForeColor="gold" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showG2_Click" /></th>
                        <th>
                            <asp:Button ID="Button3" runat="server" Text="Show Gold Core Two Signet" Width="350px" BackColor="Black" ForeColor="gold" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showG3_Click" /></th>
                    </tr>
                </table>
            </div>
            <br />
            <div runat="server" visible="false" id="goldCommon">
                <asp:Button ID="Button4" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="goldenrod" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideG1_Click" />
                <div class="auto-style5" style="border: 5px solid goldenrod;">
                    <h3 style="margin: 0px; text-align: center; background-color: goldenrod">Common Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Recitatif of Eden</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Every <b>10</b> SP left boosts Total DMG by <b>3.0</b>%.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Recitatif of Creeks</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Every <b>10</b> SP left boosts Physical &amp; Elemental DMG by <b>2.5</b>%.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Recitatif of Birds</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Every <b>10</b> SP reduces Total DMG taken by <b>2.5</b>%.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Recitatif of Fruit Trees</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">The lower the SP, the more SP can be restored from attack (SP regen boost maxed at <b>100</b>%)</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2" class="auto-style4">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Recitatif of Good Wine</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Restore <b>1.5</b> SP per second.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Recitatif of Fine Jade</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Initial SP and max SP increased by <b>30</b>.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="goldCoreOne">
                <asp:Button ID="Button5" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="goldenrod" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideG2_Click" />
                <div class="auto-style5" style="border: 5px solid goldenrod;">
                    <h3 style="margin: 0px; text-align: center; background-color: goldenrod">Core One Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Aria of Gold</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Restoring <b>100</b> SP in total triggers <b>3</b> Lightning of Aria bolts each dealing <b>450</b>% ATK of Lightning DMG and inflicting <b>6</b>s of Intoxicate randomly. Intoxicated enemies take <b>15</b>% bonus Total DMG.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Aria of Dawn</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            If the <b>3</b> Lightning of Aria bolts hit the same target, Thunder Symphony will be triggered to deal <b>1200</b>% Lightning DMG in a large area and inflict <b>3</b>s of Paralyze.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Aria of Soil</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Intoxicated enemies take only <b>10</b>% bonus Total DMG but it can stack up to <b>3</b> times.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Aria of Life</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Every hit on an Intoxicated enemy restores <b>1.0</b> SP for the Valkyrie.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="goldCoreTwo">
                <asp:Button ID="Button6" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="goldenrod" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideG3_Click" />
                <div class="auto-style5" style="border: 5px solid goldenrod;">
                    <h3 style="margin: 0px; text-align: center; background-color: goldenrod">Core Two Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Echo of Gold</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Consuming SP restores the same charges and triggers Final Echo status during which Total DMG increases <b>8</b>% (<b>160</b>% max) at the cost of charges equal to the remaining duration per second. Insufficient charges reset the effect and end Final Echo.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Echo of Silent Night</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                After lasting over <b>7</b>s, Final Echo reduces the ATK, DEF, and Elemental Resists of enemies nearby by <b>2</b>% per second (<b>40</b>% max) until it ends.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Echo of Withered Soil</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            After lasting over <b>7</b>s, Final Echo boosts SP cap by <b>50</b>% and restores <b>1</b>% SP per second until it ends.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Gold.png" alt="Gold signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Echo of Shrill Wind</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">After lasting over <b>7</b>s, Final Echo deals <b>300</b>% ATK of Lightning DMG per second until it ends.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <h2>Su</h2>
        <a name="su"></a>
        <div style="margin-left: 20px">
            <asp:Button ID="showHideSu" runat="server" Text="Show/Hide" BackColor="#6600FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="showHideSu_Click" />
        </div>
        <div runat="server" id="Su" visible="true">
            <div id="Su Intro">
                <br />
                <img src="./Images/Flame Chaser/Su.png" alt="Hua" style="height: 222px; width: 222px" />
                <p>
                    Su is a secondary character in the manga Second Key. He was a MANTIS and a former scientist of MOTH from the Previous Era. Ranked 7th among the Thirteen Flame-Chasers, his codename is <em>"Bodhi"</em>. 
                </p>
                <br />
                <table style="border: none; width: 100%; text-align: center">
                    <tr>
                        <td rowspan="2">
                            <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" class="auto-style2" /></td>
                        <td colspan="2">Bohdi signet is focused on giving buffs to your character when you reach high combo hit count</td>
                    </tr>
                    <tr>
                        <td colspan="2"><b>Click the buttons below to show and hide the signets</b></td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="Button7" runat="server" Text="Show Bohdi Common Signet" Width="350px" BackColor="Black" ForeColor="forestgreen" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showB1_Click" /></th>
                        <th>
                            <asp:Button ID="Button8" runat="server" Text="Show Bohdi Core One Signet" Width="350px" BackColor="Black" ForeColor="forestgreen" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showB2_Click" /></th>
                        <th>
                            <asp:Button ID="Button9" runat="server" Text="Show Bohdi Core Two Signet" Width="350px" BackColor="Black" ForeColor="forestgreen" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showB3_Click" /></th>
                    </tr>
                </table>
            </div>
            <br />
            <div runat="server" visible="false" id="bohdiCommon">
                <asp:Button ID="Button10" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="forestgreen" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideB1_Click" />
                <div class="auto-style5" style="border: 5px solid forestgreen;">
                    <h3 style="margin: 0px; text-align: center; background-color: forestgreen">Common Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Motto of Pubbe-Nivasanussati</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Combo hits are reset at <b>150</b> to boost Total DMG by <b>55</b>% for <b>10</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Motto of Dibba-Cakkhu</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Combo hits are reset at <b>150</b> to boost Total DMG taken by all enemies by <b>35</b>% for <b>10</b>s.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Motto of Dibba-Sota</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Combo hits are reset at <b>150</b> to reduce Total DMG taken by the Valkyrie by <b>32</b>% for <b>10</b>s.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Motto of Ceto-Pariya-Nana</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Combo hits are reset at <b>150</b> to restore <b>30</b> SP.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2" class="auto-style4">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Motto of Iddhi-Vidha</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Combo hits are increased to <b>60</b> when below <b>60</b>. CD: <b>10</b>s.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Motto of Asavakkhaya</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Attacks grant <b>25</b> bonus combo hits on hit. CD: <b>5</b>s
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="bohdiCoreOne">
                <asp:Button ID="Button11" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="forestgreen" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideB2_Click" />
                <div class="auto-style5" style="border: 5px solid forestgreen;">
                    <h3 style="margin: 0px; text-align: center; background-color: forestgreen">Core One Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Maxim of Bodhi</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Reaching <b>60</b>/<b>100</b>/<b>150</b> combo count unleashes Karma Wheels around Valkyrie to knock enemies down and deal <b>500</b>%/<b>1000</b>%/<b>1600</b>% ATK of adaptive DMG.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Maxim of Santam</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                Karma Wheels deal <b>100</b>% bonus DMG to shields and <b>500</b>% ATK of bonus adaptive DMG to unshielded enemies.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Maxim of Anitya</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                Enemies hit by Karma Wheels are unable to recover their shields for <b>3</b>s.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Maxim of Anatman</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            The next attack within <b>8</b>s from an enemy hit by Karma Wheels deals <b>50</b>% less Total DMG.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="bohdiCoreTwo">
                <a href="#su">
                    <asp:Button ID="Button13" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="forestgreen" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideB3_Click" /></a>
                <div class="auto-style5" style="border: 5px solid forestgreen;">
                    <h3 style="margin: 0px; text-align: center; background-color: forestgreen">Core Two Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Dictum of Bodhi</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Reaching <b>60</b>/<b>100</b>/<b>150</b> combo hits unleashes Bodhi: Eyes Open on a random enemy, dealing <b>800</b>%/<b>900</b>%/<b>1000</b>% ATK of adaptive DMG and inflicting Trance. Affected enemies contribute <b>1</b> bonus combo hit on hit for <b>3</b>s.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Dictum of Anitya</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                For every debuff on the target enemy, it takes <b>150</b>% ATK of bonus adaptive DMG when hit by Bodhi: Eyes Open.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Dictum of Anatman</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                The Bodhi: Eyes Open lasts for <b>3</b>s longer. For every debuff on the target enemy, it takes <b>5</b>% bonus Total DMG.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Bohdi.png" alt="Bohdi signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Dictum of Santam</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Bodhi: Eyes Open inflicts <b>3</b> random debuffs lasting <b>3</b>s on hit.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <h2>Hua</h2>
        <a name="hua"></a>
        <div style="margin-left: 20px">
            <asp:Button ID="Button20" runat="server" Text="Show/Hide" BackColor="#6600FF" ForeColor="white" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="showHideHua_Click" />
        </div>
        <div runat="server" id="Hua" visible="true">
            <div id="Hua Intro">
                <br />
                <img src="./Images/Flame Chaser/Hua.png" alt="Hua" style="height: 222px; width: 222px" />
                <p>
                    Fu Hua is a secondary character in Honkai Impact 3rd. She is a MANTIS, and ranked 12th in the Thirteen Flame-Chasers. She is codenamed <em>"Vicissitude"</em>. 
                </p>
                <br />
                <table style="border: none; width: 100%; text-align: center">
                    <tr>
                        <td rowspan="2">
                            <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" class="auto-style2" /></td>
                        <td colspan="2">Vicissitude signet is focused on giving stackable buffs to your character that are reduced when getting hit</td>
                    </tr>
                    <tr>
                        <td colspan="2"><b>Click the buttons below to show and hide the signets</b></td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="Button21" runat="server" Text="Show Vicissitude Common Signet" Width="350px" BackColor="Black" ForeColor="#E6E6FA" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showV1_Click" /></th>
                        <th>
                            <asp:Button ID="Button22" runat="server" Text="Show Vicissitude Core One Signet" Width="350px" BackColor="Black" ForeColor="#E6E6FA" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showV2_Click" /></th>
                        <th>
                            <asp:Button ID="Button23" runat="server" Text="Show Vicissitude Core Two Signet" Width="350px" BackColor="Black" ForeColor="#E6E6FA" Font-Bold="True" Font-Names="Viner Hand ITC" OnClick="showV3_Click" /></th>
                    </tr>
                </table>
            </div>
            <br />
            <div runat="server" visible="false" id="vicissitudeCommon">
                <asp:Button ID="Button24" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#E6E6FA" ForeColor="#87919B" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideV1_Click" />
                <div class="auto-style5" style="border: 5px solid  	#E6E6FA;">
                    <h3 style="margin: 0px; text-align: center; background-color: #E6E6FA; color: #87919B">Common Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Long Trip</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Total DMG increases by <b>1.0</b>% per second. <b>40</b> stacks max. Taking DMG reduces <b>10</b> stacks.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Days Gone</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Physical DMG increases by <b>0.8</b>% per second. <b>40</b> stacks max. Taking DMG reduces <b>10</b> stacks.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Dark Garb No More</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Elemental DMG increases by <b>0.8</b>% per second. <b>40</b> stacks max. Taking DMG reduces <b>10</b> stacks.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">No One to Share</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Physical Breach increases by <b>0.6</b>% per second. <b>40</b> stacks max. Taking DMG reduces <b>10</b> stacks.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2" class="auto-style4">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Old Dreams Again</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Elemental Breach increases by <b>0.6</b>% per second. <b>40</b> stacks max. Taking DMG reduces <b>10</b> stacks.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Lost and Found</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Total DMG taken decreases by <b>0.8</b>% per second. <b>40</b> stacks max. Taking DMG reduces <b>10</b> stacks.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="vicissitudeCoreOne">
                <asp:Button ID="Button25" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#E6E6FA" ForeColor="#87919B" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideV2_Click" />
                <div class="auto-style5" style="border: 5px solid #E6E6FA;">
                    <h3 style="margin: 0px; text-align: center; background-color: #E6E6FA; color: #87919B;">Core One Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Vivid Vicissitude</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Valkyrie obtain <b>1</b> stack of Soldier's Resolve per <b>10</b> seconds. <b>6</b> stacks max. When taking DMG, Soldier's Resolve loses <b>1</b> stack to neutralize the DMG and deal adaptive DMG equal to the number of remaining stacks x <b>650</b>% ATK to surrounding enemies.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Forgotten and Forsaken</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                All buffs provided by Normal Signets of Vicissitude can stack up to <b>60</b> times, and at <b>30</b> stacks or more, Soldier's Resolve stacks once per <b>8</b> seconds.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Fleeting Fantasy</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                Valkyrie has <b>1</b> initial stack of Soldier's Resolve.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Fallen Flowers</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Every stack of Soldier's Resolve grants <b>1</b> bonus stack per second to all buffs provided by Normal Signets of Vicissitude.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div runat="server" visible="false" id="vicissitudeCoreTwo">
                <a href="#su">
                    <asp:Button ID="Button26" runat="server" Style="margin-left: 200px" Text="X" Width="30px" Height="30px" BackColor="#E6E6FA" ForeColor="#87919B" Font-Names="Viner Hand ITC" BorderStyle="Groove" OnClick="hideV3_Click" /></a>
                <div class="auto-style5" style="border: 5px solid #E6E6FA;">
                    <h3 style="margin: 0px; text-align: center; background-color: #E6E6FA; color: #87919B">Core Two Signet</h3>
                    <div class="row" style="margin-top: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Core: Suffering Mass</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">Valkyries start with <b>6</b> Soldier's Remembrance stacks which boost all buffs from Normal Signets of Vicissitude to full stacks. Taking DMG reduces <b>1</b> Soldier's Remembrance stack and grants <b>0.5</b>s invincibility.</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Broken Dream</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                With Soldier's Remembrance stacks, the max stacks of all buffs from Normal Signets of Vicissitude increase by <b>20</b>. Losing all Soldier's Remembrance stacks reduces the max stacks by <b>10</b> but restores <b>1</b> Soldier's Remembrance stack. Can be triggered once every battle.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
                        <div class="column1">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Worldly Troubles</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>
                                            <p class="description">
                                                With Soldier's Remembrance stacks, Total DMG increases by <b>50</b>% of the Total DMG Reduction percentage from all Signets.
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="column2">
                            <table class="table2">
                                <tr>
                                    <td rowspan="2">
                                        <img src="Images/Flame Chaser/Signet/Vicissitude.png" alt="Vicissitude signet" style="width: 100px; height: 100px" />
                                    </td>
                                    <td>
                                        <p class="title">Go with the Flow</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="description">
                                            Absorbing DMG more times extends the invincibility from Soldier's Remembrance. Every time it absorbs DMG extends the invincibility by <b>0.3</b>s.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="commentSection">
        <div class="postComment">
            <h1><u>Comment Section</u></h1>
            <div class="textbox">
                <div class="showPostComment">
                    <asp:Button ID="showPostComment" runat="server" Text="Click Me to Post Comments" BackColor="white" ForeColor="#6666FF" Font-Bold="True" Height="36px" Width="307px" OnClick="showPostComment_Click" />
                </div>
                <div runat="server" id="postingComment" visible="false">
                    <div class="instruction">
                        <h3>Type out your comment below:</h3>
                    </div>
                    <div class="enterText">
                        <textarea id="commentTxt" name="S1" rows="3" class="auto-style6"></textarea>
                    </div>
                    <div class="postButton">
                        <asp:Button class="postButton" Style="margin-top: 30px;margin-bottom:30px;" ID="post" runat="server" Text="Post" BackColor="white" ForeColor="#6666FF" Font-Bold="True" Height="36px" Width="92px" />
                    </div>
                </div>
            </div>
        </div>
        <asp:Button ID="clickToShowComment" runat="server" Text="Click Me to Show Comments" BackColor="white" ForeColor="#6666FF" Font-Bold="True" Height="36px" Width="307px" OnClick="clickToShowComment_Click" />
        <div runat=server id ="showComment" style="margin-top:20px;" visible="false">
            <div class="comment" id="comment1">
                <asp:Label ID="postID1" runat="server" Text="#postID" style="font-size:12px;"></asp:Label> <br />
                <asp:Label ID="userName1" runat="server" Text="userName" style="margin-bottom:20px;text-decoration:underline;font-weight:bold;"></asp:Label> <br />
                <asp:Label ID="commentContent1" runat="server" Text="commentContent"></asp:Label>
            </div>
            <div class="comment" id="comment2" style="margin-top:20px">
                <asp:Label ID="postID2" runat="server" Text="#postID" style="font-size:12px;"></asp:Label> <br />
                <asp:Label ID="userName2" runat="server" Text="userName" style="margin-bottom:20px;text-decoration:underline;font-weight:bold;"></asp:Label> <br />
                <asp:Label ID="commentContent2" runat="server" Text="commentContent"></asp:Label>
            </div>
            <div class="comment" id="comment3" style="margin-top:20px">
                <asp:Label ID="postID3" runat="server" Text="#postID" style="font-size:12px;"></asp:Label> <br />
                <asp:Label ID="userName3" runat="server" Text="userName" style="margin-bottom:20px;text-decoration:underline;font-weight:bold;"></asp:Label> <br />
                <asp:Label ID="commentContent3" runat="server" Text="commentContent"></asp:Label>
            </div>
            <div class="comment" id="comment4" style="margin-top:20px">
                <asp:Label ID="postID4" runat="server" Text="#postID" style="font-size:12px;"></asp:Label> <br />
                <asp:Label ID="userName4" runat="server" Text="userName" style="margin-bottom:20px;text-decoration:underline;font-weight:bold;"></asp:Label> <br />
                <asp:Label ID="commentContent4" runat="server" Text="commentContent"></asp:Label>
            </div>
            <div class="comment" id="comment5" style="margin-top:20px">
                <asp:Label ID="postID5" runat="server" Text="#postID" style="font-size:12px;"></asp:Label> <br />
                <asp:Label ID="userName5" runat="server" Text="userName" style="margin-bottom:20px;text-decoration:underline;font-weight:bold;"></asp:Label> <br />
                <asp:Label ID="commentContent5" runat="server" Text="commentContent"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
