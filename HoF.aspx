<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HoF.aspx.cs" Inherits="DURANDAL_IO.HoF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
            margin-right: 1em;
            margin-bottom: 1em;
            width: 100px;
            height: 176px;
        }

          /*.fit-screen {*/
           /* width: 100vw;
            overflow-y: hidden;
            display: flex;
            justify-content: center;*/
            /*max-width:100vw;
            height: 100vh;
            overflow: scroll;
            display: flex;
            justify-content: center;
            align-content: center;
            flex-direction: column;
        }*/

        .fit-screen ::-webkit-scrollbar {
            display: none;
        }

        .herrscher-info {
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
        
        .question {
            margin-top: 50px;
        }

        .options {
            margin-top: 20px;
        }

        .options label {
            display: block;
        }

        .completion-bar {
            width: 100%;
            height: 20px;
            background-color: lightgray;
            border-radius: 10px;
            margin-top: 50px;
        }

        .completion {
            width: 0%;
            height: 100%;
            background-color: green;
            border-radius: 10px;
        }

        .controls {
            margin-top: 50px;
        }

        .controls button {
            margin-right: 20px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fit-screen">
        <div class="herrscher-info">
            <img src="./Images/HoF Portrait.png" alt="HoF Portrait" />
            <h1>Herrscher of Flamescion</h1><br />
            <h2>Overview</h2><br />
            <p>Kiana Kaslana battlesuit added in Version 5.0.</p><br />
            <p>Melee Fire DPS.</p><br />
            <p>Capable of aerial combat.</p><br />
            <p>Turns into Herrscher form for DPS spike.</p><br />
        </div>

        <div class="herrscher-info">
            <h2>Skills</h2><br />
            <strong>Leader: Nameless Knight-Errant's Path</strong><br />
            <p>Leader Bonus: Team deals 34.0% bonus Elemental DMG. 
                Every non-Kiana battlesuit grants 25.0 bonus initial SP to the team 
                (50.0 max; can only be triggered once every 10 minutes in Open World).</p><br />
            <strong>Special: Blazing Chariot's Trail</strong><br />
            <p>Launch power attacks at 0 Heat.
                Heat: Starts at 0. Reduced by 21 per second when not in Overheat and by 10 per second when in Overheat.
                Base form Combo ATK: Increase 45 Heat and consume 15% of current HP to deal 300% ATK of Fire DMG, trigger 2.5s of global Time Fracture, and enter Herrscher form lasting 11.5s.
                In Herrscher form, Valkyrie has different moves, higher Ignore Interrupt, and loses 1% of current HP per second.
                Herrscher form Combo ATK: Increase 100 Heat and trigger 3.5s of global Time Fracture.
                Ground: 1,200% ATK of Fire DMG.
                Airborne: Knock enemies airborne and create a black hole gathering enemies and dealing 1,200% ATK of Fire DMG.
                Valkyrie enters Overheat when Herrscher form ends and Heat increases by 100. Switching out ends Herrscher form.</p><br />
            <strong>Passive: Fiery Hymn's Pledge</strong><br />
            <p>Launch power attacks at 0 Heat.
                Passive bonuses apply automatically.
                Valkyrie's Basic/Combo ATKs and Charged/Combo ATKs from teammates inflict Ember Brand lasting 6s on enemies. Ember Brand inflicted in Herrscher form deals Fire DMG equal to 5% of Valkyrie's ATK per 0.5s. 10 stacks max.
                The following attacks can detonate Ember Brand on enemies in a large area (without consuming it) to deal 120% ATK of Fire DMG: Last sequence of Herrscher form Basic ATK (CD: 2s), QTE, last sequence of base form ground Basic ATK, and Combo ATK.
                When in Overheat, Heat drops by 15 every 2s.</p><br />
            <strong>Ultimate: The Blade Supreme, Rekindled</strong><br />
            <p>Launch power attacks at 0 Heat.
                Launch a powerful attack.
                Deal 2,150% ATK of Fire DMG during which Valkyrie is in Herrscher form and all skill timers on her, enemies as well as the stage timer are paused. If cast in Herrscher form, Ultimate will end Herrscher form after the cast.
                Activation cost: 75 SP. CD: 16s.</p><br />
            <strong>Evasion: Lone Phoenix's Plume</strong><br />
            <p>Quickly evade enemy attacks.Ultimate Evasion triggers 4s of global Time Fracture. CD: 18s.
                Ground: Evasion can be performed twice in a row.
                Airborne: 
                Base form: Evasion can only be performed once.
                Herrscher form: No limitations on evasions.
                Tap [ATK] after evasion to connect into Basic ATK Sequence 3.
                In Herrscher form, Ultimate Evasion inflicts 5 stacks of Ember Brand on enemies in a large area and restores 2 SP. CD: 10s.</p><br />
            <strong>Basic: Tempered Warrior's Strike</strong><br />
            <p>Quickly evade enemy attacks.Ultimate Evasion triggers 4s of global Time Fracture. CD: 18s.
                Ground:
                Base form: 730% ATK of Fire DMG.
                Herrscher form: 970% ATK of Fire DMG.

                Airborne:
                Base form: 490% ATK of Fire DMG.
                Herrscher form: 900% ATK of Fire DMG.
                Upward Slash: 200% ATK of Fire DMG.
                Downward Slam: 30% + 90% x 2 ATK of Fire DMG.</p>
        </div>

        <div class="herrscher-info">
            <h2>Equipment</h2><br />
            <table style="margin: 0; text-align: center;" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <th colspan="2">Recommended Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 100%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            100%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 80%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            80%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 100%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            100%
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">Universal Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 80%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            80%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 50%; height: 100%; background-color: #ffc100;"></div>
                            </div>
                            50%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 70%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            70%
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">Transitional Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                            <img alt="Domain of Incandescence (6) (Icon).png" src="" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 60%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            60%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 40%; height: 100%; background-color: #ffc100;"></div>
                            </div>
                            40%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 50%; height: 100%; background-color: #ffc100;"></div>
                            </div>
                            50%
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="herrscher-info">
            <div id="QuizPanel">
                <h1>Quiz</h1>
                <div class="question">
                    <asp:Label ID="QuestionLabel" runat="server" />
                </div>
                <div class="options">
                    <asp:RadioButton ID="Option1" runat="server" Text="Option 1" GroupName="Options" />
                    <asp:RadioButton ID="Option2" runat="server" Text="Option 2" GroupName="Options" />
                    <asp:RadioButton ID="Option3" runat="server" Text="Option 3" GroupName="Options" />
                    <asp:RadioButton ID="Option4" runat="server" Text="Option 4" GroupName="Options" />
                </div>
                <div class="completion-bar">
                <div class="completion" runat="server" ID="Completion" />
                    <asp:Label ID="CompletionLabel" runat="server" />
                </div>
                <div class="controls">
                    <asp:Button ID="BackButton" runat="server" Text="Back" Visible="false" />
                    <asp:Button ID="NextButton" runat="server" OnClick="NextButton_Click" Text="Next"  />
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" Visible="false" />
                </div>
                <asp:Label ID="ScoreLabel" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
