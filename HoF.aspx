<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HoF.aspx.cs" Inherits="DURANDAL_IO.HoF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        img {
            margin-right: 1em;
            margin-bottom: 1em;
        }

        /*.background-h2 {
            padding-right:5em;
            padding-left:5em;
            background-color:#47CBEE;
            color:#1F2326;
        }*/

        .fit-screen {
            width: 100vw;
            overflow-y: hidden;
            display: flex;
            justify-content: stretch;
            max-width:100vw;
            height: 100vh;
            overflow: scroll;
            display: flex;
            align-content: stretch;
            flex-direction: column;
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
            margin-top: 30px;
            margin-bottom: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fit-screen">
        <div class="herrscher-info" style="margin-top: 8.5em;">
            <h1>Herrscher of Flamescion</h1>
            <div class="background-h2"><h2>Overview</h2></div>
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td><img src="./Images/HoF Portrait.png" alt="HoF Portrait" width="100px" height="176px" style="padding-right:2em;" /></td>
                        <td>
                            <p>Kiana Kaslana battlesuit added in Version 5.0.</p>
                            <p>Melee Fire DPS.</p>
                            <p>Capable of aerial combat.</p>
                            <p>Turns into Herrscher form for DPS spike.</p>
                            <p>When HP is below 60%, deals 35% more Fire DMG.</p>
                        </td>
                        <td><img src="./Images/HoF_Chart.png" alt="HoF Chart" width="250px" height="150px" style="padding-left:2em;" /></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="herrscher-info">
            <h2>Skills</h2>
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td style="align-items: center; justify-content: center; margin: auto; text-align: center;">
                            <strong>Leader: Nameless Knight-Errant's Path</strong><br />
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
                            <strong>Special: Blazing Chariot's Trail</strong><br />
                            <img src="./Images/HoF_Special Skill.png" alt="HoF Special Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Launch power attacks at <b>0</b> Heat.<br />
                            Heat: Starts at <b>0</b>. Reduced by <b>21</b> per second when not in Overheat and by <b>10</b> per second when in Overheat.<br />
                            Base form Combo ATK: Increase <b>45</b> Heat and consume <b>15%</b> of current HP to deal <b>300%</b> ATK of Fire DMG, trigger <b>2.5s</b> of global Time Fracture, and enter Herrscher form lasting <b>11.5s</b>.<br />
                            In Herrscher form, Valkyrie has different moves, higher Ignore Interrupt, and loses <b>1%</b> of current HP per second.<br />
                            Herrscher form Combo ATK: Increase <b>100</b> Heat and trigger <b>3.5s</b> of global Time Fracture.<br />
                            Ground: <b>1,200%</b> ATK of Fire DMG.<br />
                            Airborne: Knock enemies airborne and create a black hole gathering enemies and dealing <b>1,200%</b> ATK of Fire DMG.<br />
                            Valkyrie enters Overheat when Herrscher form ends and Heat increases by <b>100</b>. Switching out ends Herrscher form.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Passive: Fiery Hymn's Pledge</strong><br />
                            <img src="./Images/HoF_Passive Skill.png" alt="HoF Passive Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Passive bonuses apply automatically.<br />
                            Valkyrie's Basic/Combo ATKs and Charged/Combo ATKs from teammates inflict Ember Brand lasting <b>6s</b> on enemies.
                            Ember Brand inflicted in Herrscher form deals Fire DMG equal to <b>5%</b> of Valkyrie's ATK per <b>0.5</b>s. <b>10</b> stacks max.<br />
                            The following attacks can detonate Ember Brand on enemies in a large area (without consuming it) to deal <b>120%</b> ATK of Fire DMG: 
                                Last sequence of Herrscher form Basic ATK (CD: <b>2s</b>), QTE, last sequence of base form ground Basic ATK, and Combo ATK.<br />
                            When in Overheat, Heat drops by <b>15</b> every <b>2s</b>.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Ultimate: The Blade Supreme, Rekindled</strong><br />
                            <img src="./Images/HoF_Ultimate Skill.png" alt="HoF Ultimate Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Launch power attacks at <b>0</b> Heat.<br />
                            Launch a powerful attack.<br />
                            Heals Valkyrie if her HP is low.<br />
                            Deal <b>2,150%</b> ATK of Fire DMG during which Valkyrie is in Herrscher form and all skill timers on her, 
                            enemies as well as the stage timer are paused. 
                            If cast in Herrscher form, Ultimate will end Herrscher form after the cast.<br />
                            <br />Activation cost: <b>75</b> SP. CD: <b>16s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Evasion: Lone Phoenix's Plume</strong><br />
                            <img src="./Images/HoF_Evasion Skill.png" alt="HoF Evasion Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Quickly evade enemy attacks.<br />
                            Ultimate Evasion triggers <b>4s</b> of global Time Fracture. CD: <b>18s</b>.<br />
                            Ground: Evasion can be performed twice in a row.<br />
                            Airborne: <br />
                            Base form: Evasion can only be performed once.<br />
                            Herrscher form: No limitations on evasions.<br />
                            Tap [ATK] after evasion to connect into Basic ATK Sequence 3.<br />
                            In Herrscher form, Ultimate Evasion inflicts <b>5</b> stacks of Ember Brand on enemies in a large area and restores <b>2</b> SP. CD: <b>10s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Basic: Tempered Warrior's Strike</strong><br />
                            <img src="./Images/HoF_Basic Skill.png" alt="HoF Basic Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Quickly evade enemy attacks.<br />
                            Ground:<br />
                            Base form: <b>730%</b> ATK of Fire DMG.<br />
                            Herrscher form: <b>970%</b> ATK of Fire DMG.<br /><br />

                            Airborne:<br />
                            Base form: <b>490%</b> ATK of Fire DMG.<br />
                            Herrscher form: <b>900%</b> ATK of Fire DMG.<br />
                            Upward Slash: <b>200%</b> ATK of Fire DMG.<br />
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
                        <th colspan="2">Recommended Equipment<br /></th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Domain of Incandescence" src="./Images/Domain_of_Incandescence.png" width="132" height="116">
                            <img alt="Murata Himeko Stigmata (T)" src="./Images/Stigmata_Murata Himeko_T.png" width="132" height="116">
                            <img alt="Murata Himeko Stigmata (M)" src="./Images/Stigmata_Murata Himeko_M.png" width="132" height="116">
                            <img alt="Murata Himeko Stigmata (B)" src="./Images/Stigmata_Murata Himeko_B.png" width="132" height="116">
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
                        <th colspan="2"><br />Universal Equipment<br /></th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Domain of Incandescence" src="./Images/Domain_of_Incandescence.png" width="132" height="116">
                            <img alt="Leeuwenhoek Stigmata (T)" src="./Images/Stigmata_Leeuwenhoek_T.png" width="132" height="116">
                            <img alt="Thales Stigmata (M)" src="./Images/Stigmata_Thales_M.png" width="132" height="116">
                            <img alt="Leeuwenhoek Stigmata (B)" src="./Images/Stigmata_Leeuwenhoek_B.png" width="132" height="116">
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
                        <th colspan="2"><br />Transitional Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Judgement of Shamash" src="./Images/Judgement_of_Shamash.png" width="132" height="116">
                            <img alt="Kitten Fun Stigmata (T)" src="./Images/Stigmata_Kitten Fun_T.png" width="132" height="116">
                            <img alt="Yodo Dono Stigmata (M)" src="./Images/Stigmata_Yodo Dono_M.png" width="132" height="116">
                            <img alt="Kitten Fun Stigmata (B)" src="./Images/Stigmata_Kitten Fun_B.png" width="132" height="116">
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
                <h2>Quiz</h2>
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
                    <asp:RadioButton ID="Option5" runat="server" Text="Judgment of Shamash" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option6" runat="server" Text="Fenghuang Pinions" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option7" runat="server" Text="Domain of the Void" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option8" runat="server" Text="Domain of Incandescence" GroupName="Q2" />
                </div>
                <div class="question">
                    <p>3.   How much HP does Herrscher Form activation costs?</p>
                </div>
                <div class="options">
                    <!-- Correct: 15% -->
                    <asp:RadioButton ID="Option9" runat="server" Text="10%" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option10" runat="server" Text="15%" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option11" runat="server" Text="20%" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option12" runat="server" Text="25%" GroupName="Q3" />
                </div>
                <div class="question">
                    <p>4.   When your Herrscher of Flamescion's HP is below 60%, how much more Fire DMG does she deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: 35% -->
                    <asp:RadioButton ID="Option13" runat="server" Text="15%" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option14" runat="server" Text="25%" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option15" runat="server" Text="35%" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option16" runat="server" Text="45%" GroupName="Q4" />
                </div>
                <div class="question">
                    <p>5.   What can Herrscher of Flamescion's ultimate do?</p>
                </div>
                <div class="options">
                    <!-- Correct: All of the above -->
                    <asp:RadioButton ID="Option17" runat="server" Text="Pauses buff, debuff and stage timer" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option18" runat="server" Text="Heals Flamescion if her HP is low" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option19" runat="server" Text="Dealing 2150% Fire DMG" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option20" runat="server" Text="All of the above" GroupName="Q5" />
                </div>
                <div class="controls">
                    <asp:Button ID="Button1" runat="server" OnClick="ClearButton_Click" Text="Clear"  />
                    <asp:Button ID="Button2" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                </div>
                <%--<div class="question">
                    <p>1.   What kind of damage does Herrscher of Flamescion deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: Fire -->
                    <asp:RadioButtonList ID="Q1" runat="server">
                        <asp:ListItem Text="Fire" Value="1" />
                        <asp:ListItem Text="Ice" Value="2" />
                        <asp:ListItem Text="Lightning" Value="3" />
                        <asp:ListItem Text="Physical" Value="4" />
                    </asp:RadioButtonList>
                </div>
                <div class="question">
                    <p>2.   What is the best recommended weapon for Herrscher of Flamescion?</p>
                </div>
                <div class="options">
                    <!-- Correct: Domain of Incandescence -->
                    <asp:RadioButtonList ID="Q2" runat="server">
                        <asp:ListItem Text="Judgment of Shamash" Value="1" />
                        <asp:ListItem Text="Fenghuang Pinions" Value="2" />
                        <asp:ListItem Text="Domain of the Void" Value="3" />
                        <asp:ListItem Text="Domain of Incandescence" Value="4" />
                    </asp:RadioButtonList>
                </div>
                <div class="question">
                    <p>3.   How much HP does Herrscher Form activation costs?</p>
                </div>
                <div class="options">
                    <!-- Correct: 15% -->
                    <asp:RadioButtonList ID="Q3" runat="server">
                        <asp:ListItem Text="10%" Value="1" />
                        <asp:ListItem Text="15%" Value="2" />
                        <asp:ListItem Text="20%" Value="3" />
                        <asp:ListItem Text="25%" Value="4" />
                    </asp:RadioButtonList>
                </div>
                <div class="question">
                    <p>4.   When your Herrscher of Flamescion's HP is below 60%, how much more Fire DMG does she deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: 35% -->
                    <asp:RadioButtonList ID="Q4" runat="server">
                        <asp:ListItem Text="15%" Value="1" />
                        <asp:ListItem Text="25%" Value="2" />
                        <asp:ListItem Text="35%" Value="3" />
                        <asp:ListItem Text="45%" Value="4" />
                    </asp:RadioButtonList>
                </div>
                <div class="question">
                    <p>5.   What can Herrscher of Flamescion's ultimate do?</p>
                </div>
                <div class="options">
                    <!-- Correct: All of the above -->
                    <asp:RadioButtonList ID="Q5" runat="server">
                        <asp:ListItem Text="Pauses buff, debuff and stage timer" Value="1" />
                        <asp:ListItem Text="Heals Flamescion if her HP is low" Value="2" />
                        <asp:ListItem Text="Dealing 2150% Fire DMG" Value="3" />
                        <asp:ListItem Text="All of the above" Value="4" />
                    </asp:RadioButtonList>
                </div>
                <div class="controls">
                    <asp:Button ID="ClearButton" runat="server" OnClick="ClearButton_Click" Text="Clear"  />
                    <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                </div>
                <br />--%>
                <asp:Panel ID="ResultPanel" runat="server" GroupingText="Result">
                    <asp:Label ID="result" runat="server" ></asp:Label>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>