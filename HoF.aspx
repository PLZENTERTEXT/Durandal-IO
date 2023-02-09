<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HoF.aspx.cs" Inherits="DURANDAL_IO.HoF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
            margin-right: 1em;
            margin-bottom: 1em;
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

        .skill-section {
            align-items: center;
            justify-content: center;
            margin: auto;
            padding-top: 3em;
            text-align: center;
        }
        
        .description {
            padding-left: 1em;
            padding-top: 3em;
        }

        .question {
            margin-top: 50px;
        }

        .options {
            margin-top: 20px;
        }

        .controls {
            margin-top: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fit-screen">
        <div class="herrscher-info">
            <h1>Herrscher of Flamescion</h1>
            <h2>Overview</h2><br />
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td><img src="./Images/HoF Portrait.png" alt="HoF Portrait" width="100px" height="176px" style="padding-right:2em;" /></td>
                        <td>
                            <p>Kiana Kaslana battlesuit added in Version 5.0.</p>
                            <p>Melee Fire DPS.</p>
                            <p>Capable of aerial combat.</p>
                            <p>Turns into Herrscher form for DPS spike.</p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="herrscher-info">
            <h2>Skills</h2><br />
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td style="align-items: center; justify-content: center; margin: auto; text-align: center;">
                            <strong>Leader: Nameless Knight-Errant's Path</strong>
                            <img src="./Images/HoF_Leader_Skill.png" alt="HoF Leader Skill" width="100px" height="100px" />
                        </td>
                        <td style="padding-left: 1em;">
                            Leader Bonus: Team deals <b>34.0%</b> bonus Elemental DMG. 
                            Every non-Kiana battlesuit grants <b>25.0</b> bonus initial SP to the team 
                            (<b>50.0</b> max; can only be triggered once every <b>10</b> minutes in Open World).
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Special: Blazing Chariot's Trail</strong>
                            <img src="./Images/HoF_Special Skill.png" alt="HoF Special Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Launch power attacks at <b>0</b> Heat.
                            Heat: Starts at <b>0</b>. Reduced by <b>21</b> per second when not in Overheat and by <b>10</b> per second when in Overheat.
                            Base form Combo ATK: Increase <b>45</b> Heat and consume <b>15%</b> of current HP to deal <b>300%</b> ATK of Fire DMG, trigger <b>2.5s</b> of global Time Fracture, and enter Herrscher form lasting <b>11.5s</b>.
                            In Herrscher form, Valkyrie has different moves, higher Ignore Interrupt, and loses <b>1%</b> of current HP per second.
                            Herrscher form Combo ATK: Increase <b>100</b> Heat and trigger <b>3.5s</b> of global Time Fracture.
                            Ground: <b>1,200%</b> ATK of Fire DMG.
                            Airborne: Knock enemies airborne and create a black hole gathering enemies and dealing <b>1,200%</b> ATK of Fire DMG.
                            Valkyrie enters Overheat when Herrscher form ends and Heat increases by <b>100</b>. Switching out ends Herrscher form.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Passive: Fiery Hymn's Pledge</strong>
                            <img src="./Images/HoF_Passive Skill.png" alt="HoF Passive Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Passive bonuses apply automatically.
                            Valkyrie's Basic/Combo ATKs and Charged/Combo ATKs from teammates inflict Ember Brand lasting <b>6s</b> on enemies.
                            Ember Brand inflicted in Herrscher form deals Fire DMG equal to <b>5%</b> of Valkyrie's ATK per <b>0.5</b>s. <b>10</b> stacks max.
                            The following attacks can detonate Ember Brand on enemies in a large area (without consuming it) to deal <b>120%</b> ATK of Fire DMG: 
                                Last sequence of Herrscher form Basic ATK (CD: <b>2s</b>), QTE, last sequence of base form ground Basic ATK, and Combo ATK.
                            When in Overheat, Heat drops by <b>15</b> every <b>2s</b>.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Ultimate: The Blade Supreme, Rekindled</strong>
                            <img src="./Images/HoF_Ultimate Skill.png" alt="HoF Ultimate Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Launch power attacks at <b>0</b> Heat.
                            Launch a powerful attack.
                            Deal <b>2,150%</b> ATK of Fire DMG during which Valkyrie is in Herrscher form and all skill timers on her, 
                            enemies as well as the stage timer are paused. 
                            If cast in Herrscher form, Ultimate will end Herrscher form after the cast.
                            Activation cost: <b>75</b> SP. CD: <b>16s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Evasion: Lone Phoenix's Plume</strong>
                            <img src="./Images/HoF_Evasion Skill.png" alt="HoF Evasion Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Quickly evade enemy attacks.Ultimate Evasion triggers <b>4s</b> of global Time Fracture. CD: <b>18s</b>.
                            Ground: Evasion can be performed twice in a row.
                            Airborne: 
                            Base form: Evasion can only be performed once.
                            Herrscher form: No limitations on evasions.
                            Tap [ATK] after evasion to connect into Basic ATK Sequence 3.
                            In Herrscher form, Ultimate Evasion inflicts <b>5</b> stacks of Ember Brand on enemies in a large area and restores <b>2</b> SP. CD: <b>10s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Basic: Tempered Warrior's Strike</strong>
                            <img src="./Images/HoF_Basic Skill.png" alt="HoF Basic Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Quickly evade enemy attacks.Ultimate Evasion triggers <b>4s</b> of global Time Fracture. CD: <b>18s</b>.
                            Ground:
                            Base form: <b>730%</b> ATK of Fire DMG.
                            Herrscher form: <b>970%</b> ATK of Fire DMG.

                            Airborne:
                            Base form: <b>490%</b> ATK of Fire DMG.
                            Herrscher form: <b>900%</b> ATK of Fire DMG.
                            Upward Slash: <b>200%</b> ATK of Fire DMG.
                            Downward Slam: <b>30%</b> + <b>90%</b> x <b>2</b> ATK of Fire DMG.
                         </td>
                    </tr>
                </tbody>
            </table>
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
                    <p>1.   What kind of damage does Herrscher of Flamescion deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: Fire -->
                    <asp:RadioButton ID="Option1" runat="server" Text="Fire" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option2" runat="server" Text="Ice" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option3" runat="server" Text="Lightning" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option4" runat="server" Text="Physical" GroupName="Q1" />
                </div>
                <div class="question">
                    <p>2.   What is the recommended weapon for Herrscher of Flamescion?</p>
                </div>
                <div class="options">
                    <!-- Correct: Domain of Incandescence -->
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Judgment of Shamash" GroupName="Q2" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Fenghuang Pinions" GroupName="Q2" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Domain of the Void" GroupName="Q2" /><br />
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="Domain of Incandescence" GroupName="Q2" />
                </div>
                <div class="question">
                    <p>3.   How much HP does Herrscher Form activation costs?</p>
                </div>
                <div class="options">
                    <!-- Correct: 15% -->
                    <asp:RadioButton ID="RadioButton5" runat="server" Text="10%" GroupName="Q3" /><br />
                    <asp:RadioButton ID="RadioButton6" runat="server" Text="15%" GroupName="Q3" /><br />
                    <asp:RadioButton ID="RadioButton7" runat="server" Text="20%" GroupName="Q3" /><br />
                    <asp:RadioButton ID="RadioButton8" runat="server" Text="25%" GroupName="Q3" />
                </div>
                <div class="question">
                    <p>4.   When your Herrscher of Flamescion's HP is below 60%, how much more Fire DMG does she deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: 35% -->
                    <asp:RadioButton ID="RadioButton9" runat="server" Text="15%" GroupName="Q4" /><br />
                    <asp:RadioButton ID="RadioButton10" runat="server" Text="25%" GroupName="Q4" /><br />
                    <asp:RadioButton ID="RadioButton11" runat="server" Text="35%" GroupName="Q4" /><br />
                    <asp:RadioButton ID="RadioButton12" runat="server" Text="45%" GroupName="Q4" />
                </div>
                <div class="question">
                    <p>5.   What can Herrscher of Flamescion's ultimate do?</p>
                </div>
                <div class="options">
                    <!-- Correct: All of the above -->
                    <asp:RadioButton ID="RadioButton13" runat="server" Text="Pauses buff, debuff and stage timer" GroupName="Q5" /><br />
                    <asp:RadioButton ID="RadioButton14" runat="server" Text="Heals Flamescion if her HP is low" GroupName="Q5" /><br />
                    <asp:RadioButton ID="RadioButton15" runat="server" Text="Dealing 2150% Fire DMG" GroupName="Q5" /><br />
                    <asp:RadioButton ID="RadioButton16" runat="server" Text="All of the above" GroupName="Q5" />
                </div>
                <div class="controls">
                    <asp:Button ID="ClearButton" runat="server" OnClick="ClearButton_Click" Text="Clear"  />
                    <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                </div>
                <asp:Label ID="ScoreLabel" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>