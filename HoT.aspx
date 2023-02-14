<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HoT.aspx.cs" Inherits="DURANDAL_IO.HoT" %>
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
            <h1>Herrscher of Truth</h1>
            <h2>Overview</h2>
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td><img src="./Images/HoT Portrait.png" alt="HoT Portrait" width="100px" height="176px" style="padding-right:2em;" /></td>
                        <td>
                            <p>Bronya Zaychik battlesuit added in Version 6.3.</p>
                            <p>Ranged Elemental support.</p>
                            <p>Causes a massive amount of Ice DMG in Continuation form.</p>
                            <p>Ultimate increases Elemental Breach for all team members dealing Lightning and Fire DMG.</p>
                        </td>
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
                            <strong>Leader: Name of the Day: World</strong><br />
                            <img src="./Images/HoT_Leader_Skill.png" alt="HoT Leader Skill" width="100px" height="100px" />
                        </td>
                        <td style="padding-left: 1em;">
                            Leader Bonus: All team members deal <b>25.0%</b> more Elemental DMG: 
                            For every non-Bronya battlesuit on the team, 
                            enemies receive <b>5.0%</b> more Ice DMG from Herrscher of Truth in Continuation form (independent effect).
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Special: Combo: Chariot of Nizhny Tagil</strong><br />
                            <img src="./Images/HoT_Special Skill.png" alt="HoT Special Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Use a powerful attack that corresponds to the Herrscher Form.
                            Extremum form: After Basic ATK SEQ 4, holding [ATK] after QTE, or Vector Calculus, press [ATK] to pull back and deal <b>4 × 40%</b> ATK of Ice DMG.
                            Project Bunny will attack in unison to deal <b>3 × 80%</b> ATK of Ice DMG, then pull enemies and deal <b>2 × 280%</b> ATK of Ice DMG.
                            This attack unlocks a mecha weapon on hit.
                            You can switch characters during Combo ATK and Herrscher of Truth will stay on the field until it ends.
                            <br />
                            Continuation form: Consume <b>100</b> Mech Propulsion to fire a rifle that deals <b>400%</b> ATK of Ice DMG, along with <b>2</b> lasers dealing <b>50%</b> ATK of Ice DMG, 
                                induce global Time Fracture for <b>2s</b>, lock onto <b>10</b> enemies at most, and fire <b>2</b> missiles and <b>1</b> laser at each enemy.
                            Each missile deals <b>100% ATK of Ice DMG and each laser deals <b>40%</b> ATK of Ice DMG, totaling <b>240%</b> ATK of Ice DMG.
                            If fewer than <b>4 enemies are present, lock onto each enemy <b>1</b> more time. Combo ATK ends with a large explosion that deals <b>600%</b> ATK of Ice DMG.
                            <br />
                            In Continuation form, casting Combo ATK grants her [Echo of the World], which increases Ice DMG by <b>30%</b> for <b>18s</b>.
                            Triggering it again refreshes its duration.
                            In Continuation form with hover guns unlocked, casting Combo ATK will summon <b>4</b> hover guns (summoned entity) that deal <b>18%</b> ATK of Ice DMG per attack.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Passive: Dimensional Resonance Drive</strong><br />
                            <img src="./Images/HoT_Passive Skill.png" alt="HoT Passive Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Passive bonuses apply automatically.<br />
                            Herrscher of Truth will battle together with Project Bunny (summoned entity).
                            Project Bunny will fire a machine gun initially, dealing <b>6 × 18%</b> ATK of Ice DMG.<br />
                            In Extremum form, Herrscher of Truth can unlock missiles, lasers, and hover guns in order.
                            After unlocking missiles, Project Bunny's attacks will be accompanied by missiles that deal <b>4 × 15%</b> ATK of Ice DMG.
                            After unlocking lasers, machine gun bullets will be replaced by lasers that deal <b>3 × 40%</b> ATK of Ice DMG.
                            After unlocking hover guns, lasers will be upgraded into power lasers that deal <b>3 × 45%</b> ATK of Ice DMG.
                            Continuation form lasts <b>20s</b>, during which Herrscher of Truth has higher Ignore Interrupt and faster Move Speed, and receives <b>80%</b> less Total DMG.
                            She also gains different buffs according to what weapons are unlocked.
                            She has a Mech Propulsion meter that maxes out at <b>100</b>.
                            Extremum form and Continuation form are both Herrscher forms.<br /><br />

                            Equip a heavy weapon to use this weapon active in Extremum form:
                            Tap [Weapon] to deal <b>850%</b> ATK of Ice DMG to locked-on enemies. CD: <b>14s</b>.
                            Equip a heavy weapon to use this weapon active in Continuation form:
                            Hold [Weapon] to fire continuous lasers that each deal <b>35%</b> ATK of Ice DMG. CD: <b>16s</b>.
                            After unlocking lasers, holding [Weapon] will fire <b>2</b> extra lasers that each deal <b>20%</b> ATK of Ice DMG for each laser fired originally.
                            Upon finishing, an explosion occurs to deal <b>150%</b> ATK of Ice DMG to nearby enemies.
                            After unlocking Hover Gun, with Hover Gun summoned, Hover Gun will fire lasers alongside Weapon Active.
                            Each laser deals <b>15%</b> ATK of Ice DMG.<br /><br />

                            When Herrscher of Truth exits battle or Continuation form ends, the mecha will ram into enemies and generate a black hole that pulls enemies temporarily and deals <b>100% ATK of Ice DMG.
                            Project Bunny will reappear from the black hole and reset mecha weapon unlocks.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Ultimate: Narrative of Infinite Truth</strong><br />
                            <img src="./Images/HoT_Ultimate Skill.png" alt="HoT Ultimate Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Uses the primary cannon to bombard enemies.<br />
                            In Extremum form, tap [ULT] to cast Salvo and transform into Continuation form.
                            Deals <b>800%</b> ATK of Ice DMG to nearby enemies, which restores <b>20</b> SP on hit, induces global Time Fracture for <b>2s</b> (registered as Continuation form Combo ATK).
                            CD: <b>15s</b> (unaffected by CD reduction).
                            Salvo only happens once as she will enter Continuation form by Return Brake afterward.
                            Deals <b>350%</b> ATK of Ice DMG to nearby enemies. CD: <b>15s</b> (unaffected by CD reduction).
                            In Continuation form, tap [ULT] to cast Ultimate that deals <b>10 × 100%</b> ÄTK of Ice DMG to all enemies.
                            During which, all skill and stage timers are paused.<br /><br />

                            SP: 125. CD: 30s. Entering Continuation form refreshes Ultimate CD.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Evasion: Snowy Bunny's Exploits</strong><br />
                            <img src="./Images/HoT_Evasion Skill.png" alt="HoT Evasion Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Quickly dodge attacks. Can be performed twice in a row.<br />
                            After triggering Ultimate Evasion in Extremum form, tap [ATK] to connect into Basic ATK SEQ 4.
                            After which, hold [ATK] to cast Combo ATK.
                            Extremum form Evasion skill: Tap [ATK] to cast Vector Calculus that deals <b>500%</b> ATK of Ice DMG, unlocks a mecha weapon on hit, induces global Time Fracture for <b>3s</b>, and increases Ignore Interrupt for <b>5s</b>.
                            CD: <b>12s</b>.<br />
                            In Continuation form with missiles unlocked, tapping [EVA] will also fire <b>8</b> missiles that each deal <b>10%</b> ATK of Ice DMG.
                            Continuation form Evasion skill: Restores <b>20</b> Mech Propulsion and fires <b>8</b> missiles.
                            If missiles are unlocked, fire <b>28</b> missiles instead. CD: <b>18s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Basic: Silver Wolf's Echoes</strong><br />
                            <img src="./Images/HoT_Basic Skill.png" alt="HoT Basic Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Use a double-headed spear or a multitude of firearms.<br />
                            Extremum form: A a-sequence combo.<br />
                            SEQ 1: Deals <b>100%</b> ATK of Ice DMG.<br />
                            SEQ 2: Deals <b>3 × 120%</b> ATK of Ice DMG.<br />
                            SEQ 3: Deals <b>180%</b> ATK of Ice DMG. Project Bunny attacks in unison to deal <b>50%</b> ATK of Ice DMG.<br />
                            SEQ 4: Deals <b>350%</b> ATK of Ice DMG. Bunny attacks in unison to deal <b>3 × 50%</b> ATK of Ice DMG. Unlocks a mecha weapon on hit.<br /><br />

                            Continuation form: Press or hold [ATK] to launch a 3-sequence combo.<br />
                            SEQ 1: Deals <b>2 × 20%</b> ATK of Ice DMG.<br />
                            SEQ 2: Deals <b>50%</b> ATK of Ice DMG.<br />
                            SEQ 3: Deals <b>3 × 50%</b> ATK of Ice DMG.<br />
                            In this form, Basic ATK restores <b>5 Mech Propulsion and <b>1.6 SP</b> on hit.
                            After lasers are unlocked, Basic ATK SEQ 2 will fire <b>2</b> lasers and Basic ATK SEQ 3 will fire <b>4</b> lasers, each laser dealing <b>15%</b> ATK of Ice DMG.
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
                            <img alt="Domain of Ascension - Truth Continuity" src="./Images/Domain_of_Ascension_-_Truth_Continuity.png" width="132" height="116">
                            <img alt="Bronya Zaychik Stigmata (T)" src="./Images/Stigmata_Bronya Zaychik_T.png" width="132" height="116">
                            <img alt="Bronya Zaychik Stigmata (M)" src="./Images/Stigmata_Bronya Zaychik_M.png" width="132" height="116">
                            <img alt="Bronya Zaychik Stigmata (B)" src="./Images/Stigmata_Bronya Zaychik_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 95%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            95%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 92%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            92%
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
                        <th colspan="2">Auxiliary Equipment<br /></th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Key of Ascension" src="./Images/Key_of_Ascension.png" width="132" height="116">
                            <img alt="Turgenev Stigmata (T)" src="./Images/Stigmata_Turgenev_T.png" width="132" height="116">
                            <img alt="Beach Party Stigmata (M)" src="./Images/Stigmata_Beach Party_M.png" width="132" height="116">
                            <img alt="Turgenev Stigmata (B)" src="./Images/Stigmata_Turgenev_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 81%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            81%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 88%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            88%
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
                        <th colspan="2"><br />Universal Equipment<br /></th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Falcon Flare - FINAL" src="./Images/Falcon_Flare_-_FINAL.png" width="132" height="116">
                            <img alt="Willows Stigmata (T)" src="./Images/Stigmata_Willows_T.png" width="132" height="116">
                            <img alt="Willows Stigmata (M)" src="./Images/Stigmata_Willows_M.png" width="132" height="116">
                            <img alt="Willows Stigmata (B)" src="./Images/Stigmata_Willows_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 73%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            73%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 75%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            75%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 75%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            75%
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><br />Transitional Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Markov Type A" src="./Images/Markov_Type_A_.png" width="132" height="116">
                            <img alt="Scott Stigmata (T)" src="./Images/Stigmata_Scott_T.png" width="132" height="116">
                            <img alt="Scott Stigmata (M)" src="./Images/Stigmata_Scott_M.png" width="132" height="116">
                            <img alt="Scott Stigmata (B)" src="./Images/Stigmata_Scott_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 43%; height: 100%; background-color: #ffc100;"></div>
                            </div>
                            43%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 60%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            60%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 55%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            55%
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="herrscher-info">
            <div id="QuizPanel">
                <h2>Quiz</h2>
                <div class="question">
                    <p>1.   What kind of damage does Herrscher of Truth deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: Ice -->
                    <asp:RadioButton ID="Option1" runat="server" Text="Fire" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option2" runat="server" Text="Ice" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option3" runat="server" Text="Lightning" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option4" runat="server" Text="Physical" GroupName="Q1" />
                </div>
                <div class="question">
                    <p>2.   What is the recommended weapon for Herrscher of Truth?</p>
                </div>
                <div class="options">
                    <!-- Correct: Domain of Ascension: Truth Continuity -->
                    <asp:RadioButton ID="Option5" runat="server" Text="Falcon Flare - FINAL" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option6" runat="server" Text="Key of Ascension" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option7" runat="server" Text="Domain of Ascension: Truth Continuity" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option8" runat="server" Text="Markov Type A" GroupName="Q2" />
                </div>
                <div class="question">
                    <p>3.   Herrscher of Truth has a Mech Propulsion meter that maxes out at what number?</p>
                </div>
                <div class="options">
                    <!-- Correct: 100 -->
                    <asp:RadioButton ID="Option9" runat="server" Text="100" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option10" runat="server" Text="80" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option11" runat="server" Text="60" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option12" runat="server" Text="40" GroupName="Q3" />
                </div>
                <div class="question">
                    <p>4.   Complete this statement: Ultimate increases Elemental Breach for all team members dealing ...</p>
                </div>
                <div class="options">
                    <!-- Correct: Lightning and Fire DMG -->
                    <asp:RadioButton ID="Option13" runat="server" Text="Physical DMG" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option14" runat="server" Text="Lightning and Ice DMG" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option15" runat="server" Text="Ice and Fire DMG" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option16" runat="server" Text="Lightning and Fire DMG" GroupName="Q4" />
                </div>
                <div class="question">
                    <p>5.   What can Herrscher of Truth's ultimate do?</p>
                </div>
                <div class="options">
                    <!-- Correct: All of the above -->
                    <asp:RadioButton ID="Option17" runat="server" Text="In Continuation form, tap [ULT] to cast Ultimate that deals 10 × 100% ÄTK of Ice DMG to all enemies" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option18" runat="server" Text="In Extremum form, tap [ULT] to cast Salvo and transform into Continuation form" GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option19" runat="server" Text="Uses the primary cannon to bombard enemies" GroupName="Q5" /><br />
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
