<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PE.aspx.cs" Inherits="DURANDAL_IO.PE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        img {
            margin-right: 1em;
            margin-bottom: 1em;
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
            <h1>Palatinus Equinox</h1>
            <h2>Overview</h2>
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td><img src="./Images/PE Portrait.png" alt="PE Portrait" width="100px" height="176px" style="padding-right:2em;" /></td>
                        <td>
                            <p>Durandal battlesuit added in Version 5.5.</p>
                            <p>Melee Physical DMG dealer.</p>
                            <p>Charged ATK after Ultimate Evasion or Sprint deals high DMG.</p>
                            <p>Ultimate directly damages Nihilus Seeds.</p>
                            <p>Can suppress enemies with Throws.</p>
                        </td>
                        <td><img src="./Images/PE_Chart.png" alt="PE Chart" width="250px" height="150px" style="padding-left:2em;" /></td>
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
                            <strong>Leader: Stellar Crusader</strong><br />
                            <img src="./Images/PE_Leader_Skill.png" alt="PE Leader Skill" width="100px" height="100px" />
                        </td>
                        <td style="padding-left: 1em;">
                            Leader Bonus: Team deals <b>21.0%</b> bonus Physical DMG. 
                            Weapon skills have <b>32.0%</b> bonus Crit Rate.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Special: Glorious Schariac</strong><br />
                            <img src="./Images/PE_Special Skill.png" alt="PE Special Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            The black armor turns into a war horse for mounted combat.<br />
                            SEQ 1: <b>150% + 200%</b> ATK of Physical DMG.<br />
                            SEQ 2: <b>3 × 120%</b> ATK of Physical DMG.<br />
                            SEQ 3: <b>400%</b> ATK of Physical DMG.<br />
                            SEQ 4: <b>600%</b> ATK of Physical DMG.<br /><br />

                            In Flash State, tap [EVA] to induce Stomp or hold [ATK] to induce Sprint. Release [ATK] in Sprint State to unleash Elite Thrust.<br />
                            Stomp: Deals <b>350%</b> ATK of Physical DMG and gather enemies nearby. Hold [ATK] to induce Sprint.<br />
                            Sprint: Deals N × <b>110%</b> ATK of Physical DMG (N stands for hits and caps at <b>10</b>). Hitting enemies consumes ICHOR.<br />
                            Elite Thrust: <b>800%</b> ATK of Physical DMG.<br />
                            Stomp, Sprint, and Elite Thrust are all considered Charged ATK with Adamance and Iron Body.<br /><br />

                            To walk slowly: Steer the left joystick if using a phone or a controller. Hold Shift and a direction key if using a keyboard.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Passive: Aria Palantinus</strong><br />
                            <img src="./Images/PE_Passive Skill.png" alt="PE Passive Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Passive bonuses apply automatically.<br />
                            ICHOR: Maxes at <b>300</b> and auto-restores over time. Casting weapon skill restores <b>50</b> ICHOR. <br />
                            In Knight Form, Palatinus Equinox restores more ICHOR when moving and enters Flash State when it's fully charged.<br />
                            ICHOR is reset when Palatinus Equinox switches form or exits.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Ultimate: Equinox March</strong><br />
                            <img src="./Images/PE_Ultimate Skill.png" alt="PE Ultimate Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Mount the war horse and reach max speed to deal massive Physical DMG.<br />
                            Tap: Switch between Knight Form and Guardian Form. Knight to Guardian triggers Shield Ram. 
                            Guardian to Knight enables active Ultimate Evasion Skill.<br /><br />

                            Hold: Perform a mighty blow to deal <b>2,000%</b> ATK of Physical DMG in a large area and suspend all skill timers as well as the stage timer.<br /><br />

                            SP cost: <b>100</b>. CD: <b>20s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Evasion: Duality of Antinomy</strong><br />
                            <img src="./Images/PE_Evasion Skill.png" alt="PE Evasion Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Guardian Form for defense and Knight Form for evasion.<br />
                            Ultimate Evasion Skill: Triggers <b>2s</b> of global Time Fracture and fully charges ICHOR. CD: <b>15s</b>.<br /><br />

                            Guardian Form: Backward evasion triggers Defense and forward evasion triggers Shield Ram.<br />
                            Taking hits during Defense or hitting enemies with Shield Ram triggers Retaliation which negates incoming attack, deals <b>120%</b> ATK of Physical DMG, and triggers Ultimate Evasion Skill. 
                            Shield Ram can also trigger Ultimate Evasion Skill passively.<br />
                            Tap [ATK] after Retaliation to perform Up Thrust (or Equinox Severance when Ultimate Evasion Skill is triggered)<br /><br />

                            Knight Form: Active evasion triggers Ultimate Evasion Skill (Leap Stomp cannot).<br />
                            During Ultimate Evasion Skill: Tap a direction key to trigger Flash State; Tap [EVA] to trigger Stomp; Hold [ATK] to trigger Sprint.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Basic: Immortal Kaslana</strong><br />
                            <img src="./Images/PE_Basic Skill.png" alt="PE Basic Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Fight with the lance and the shield.<br />
                            SEQ 1: <b>150% + 200%</b> ATK of Physical DMG.<br />
                            SEQ 2: <b>220%</b> ATK of Physical DMG.<br />
                            SEQ 3: <b>8 × 80%</b> ATK of Physical DMG.<br />
                            Enemies are also gathered briefly.<br />
                            SEQ 4: <b>300%</b> ATK of Physical DMG.<br /><br />

                            At full ICHOR, hold [ATK] to cast Equinox Severance which triggers <b>3s</b> of global Time Fracture and deals <b>300% + 300% + 200% + 1200%</b> ATK of Physical DMG.<br />
                            Shield Ram: <b>150%</b> ATK of Physical DMG.<br />
                            Up Thrust: <b>750%</b> ATK of Physical DMG.
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
                            <img alt="Midnight Ataegina" src="./Images/Midnight_Ataegina.png" width="132" height="116">
                            <img alt="Bronya Zaychik Stigmata (T)" src="./Images/Stigmata_Bianka Theatre_T.png" width="132" height="116">
                            <img alt="Bianka Theatre Stigmata (M)" src="./Images/Stigmata_Bianka Theatre_M.png" width="132" height="116">
                            <img alt="Bianka Theatre Stigmata (B)" src="./Images/Stigmata_Bianka Theatre_B.png" width="132" height="116">
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
                                <div style="width: 100%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            100%
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
                            <img alt="Abyss Flower - Liminal Spiral" src="./Images/Abyss_Flower_-_Liminal_Spiral.png" width="132" height="116">
                            <img alt="Elysia Stigmata (T)" src="./Images/Stigmata_Elysia_T.png" width="132" height="116">
                            <img alt="Dante Stigmata (M)" src="./Images/Stigmata_Dante_M.png" width="132" height="116">
                            <img alt="Elysia Stigmata (B)" src="./Images/Stigmata_Elysia_B.png" width="132" height="116">
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
                                <div style="width: 70%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            70%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 85%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            85%
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><br />Transitional Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Abyss Lance" src="./Images/Abyss_Lance.png" width="132" height="116">
                            <img alt="Jingwei Stigmata (T)" src="./Images/Stigmata_Jingwei_T.png" width="132" height="116">
                            <img alt="Marco Polo Stigmata (M)" src="./Images/Stigmata_Marco_Polo_M.png" width="132" height="116">
                            <img alt="Fu Hua - Pride Stigmata (B)" src="./Images/Stigmata_Fu_Hua_-_Pride_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 70%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            70%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 30%; height: 100%; background-color: #ffc100;"></div>
                            </div>
                            30%
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
                    <p>1.   What kind of damage does Palatinus Equinox deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: Physical -->
                    <asp:RadioButton ID="Option1" runat="server" Text="Fire" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option2" runat="server" Text="Ice" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option3" runat="server" Text="Lightning" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option4" runat="server" Text="Physical" GroupName="Q1" />
                </div>
                <div class="question">
                    <p>2.   What is the recommended weapon for Palatinus Equinox?</p>
                </div>
                <div class="options">
                    <!-- Correct: Midnight Ataegina -->
                    <asp:RadioButton ID="Option5" runat="server" Text="Midnight Ataegina" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option6" runat="server" Text="Abyss Flower - Liminal Spiral" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option7" runat="server" Text="Abyss Lance" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option8" runat="server" Text="Markov Type A" GroupName="Q2" />
                </div>
                <div class="question">
                    <p>3.    Casting weapon skill restores how many ICHOR?</p>
                </div>
                <div class="options">
                    <!-- Correct: 50 -->
                    <asp:RadioButton ID="Option9" runat="server" Text="0" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option10" runat="server" Text="50" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option11" runat="server" Text="70" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option12" runat="server" Text="100" GroupName="Q3" />
                </div>
                <div class="question">
                    <p>4.   What is the SP cost of Palatinus Equinox's Ultimate: Equinox March?</p>
                </div>
                <div class="options">
                    <!-- Correct: 100 -->
                    <asp:RadioButton ID="Option13" runat="server" Text="0" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option14" runat="server" Text="50" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option15" runat="server" Text="100" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option16" runat="server" Text="150" GroupName="Q4" />
                </div>
                <div class="question">
                    <p>5.   What can Palatinus Equinox's ultimate do?</p>
                </div>
                <div class="options">
                    <!-- Correct: All of the above -->
                    <asp:RadioButton ID="Option17" runat="server" Text="Directly damages Nihilus Seeds" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option18" runat="server" Text="Perform a mighty blow to deal 2,000% ATK of Physical DMG in a large area" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option19" runat="server" Text="Suspend all skill timers as well as the stage timer" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option20" runat="server" Text="All of the above" GroupName="Q5" />
                </div>
                <div class="controls">
                    <asp:Button ID="Button1" runat="server" OnClick="ClearButton_Click" Text="Clear"  />
                    <asp:Button ID="Button2" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                </div>
                <asp:Panel ID="ResultPanel" runat="server" GroupingText="Result">
                    <asp:Label ID="result" runat="server" ></asp:Label>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

