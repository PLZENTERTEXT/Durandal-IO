<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HoH.aspx.cs" Inherits="DURANDAL_IO.HoH" %>
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
            <h1>Herrscher of Human: Ego</h1>
            <h2>Overview</h2>
            <table style="margin: 0" cellspacing="0" cellpadding="2px">
                <tbody>
                    <tr>
                        <td><img src="./Images/HoH Portrait.png" alt="HoH Portrait" width="100px" height="176px" style="padding-right:2em;" /></td>
                        <td>
                            <p>Elysia battlesuit added in Version 6.0.</p>
                            <p>A ranged Ice DMG dealer.</p>
                            <p>Casting weapon skill after using Charged ATKs triggers Ego Blossom and deals considerable DMG.</p>
                            <p>Unleashing Ultimate enters Herrscher of Origin Form, in which she continuously deals massive DMG.</p>
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
                            <strong>Leader: Wandering Dream</strong><br />
                            <img src="./Images/HoH_Leader_Skill.png" alt="HoH Leader Skill" width="100px" height="100px" />
                        </td>
                        <td style="padding-left: 1em;">
                            Leader Bonus: Increases every Ice DMG battlesuit's initial SP by <b>50.0</b>.
                            In Open World, this effect is triggered once every 10min.
                            Increases the team's Ice DMG by <b>30.0%</b>, and while Stars of the Past is in effect, increases the team's Ice DMG by another <b>10.0%</b>.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Special: Charged ATK: Infinite Helix</strong><br />
                            <img src="./Images/HoH_Special Skill.png" alt="HoH Special Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Use a powerful attack that corresponds to the Herrscher Form.<br />
                            Herrscher of Human Form:<br />
                            Hold [ATK] to create a crystal ballista.
                            Once charging is complete, fire a pristine arrow that penetrates every enemy along its trajectory, 
                            dealing <b>330% + 2 × 100%</b> ATK of Ice DMG and inflicting <b>1</b> Pristine Seed stack.
                            Hold [ATK] to fire consecutively, during which you can move.<br />
                            Herrscher of Origin Form:<br />
                            When Herrscher Charge is maxed, hold [ATK] to empty Herrscher Charge and summon Spirit of Origin to attack, 
                            dealing <b>700%</b> ATK of Ice DMG. Hitting enemies resets Waltz of the Stars's CD. This also creates a frost zone forward, 
                            adding <b>3</b> Pristine Seed stacks to all enemies in the zone.
                            Frost zone lasts for <b>6s</b>.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Passive: Enlightened Salvation</strong><br />
                            <img src="./Images/HoH_Passive Skill.png" alt="HoH Passive Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Passive bonuses apply automatically.
                            A balanced archer that has <b>2</b> shoot attempts.
                            If less than <b>2</b> shoot attempts remain, recover <b>1</b> attempt every <b>10s</b>.<br />
                            Base Shooting Multiplier Correction: <b>100%</b>.<br />
                            Aimed Base Shooting Multiplier Correction: <b>100%</b>.<br /><br />

                            Herrscher of Human: Ego has two Herrscher Forms: Herrscher of Human Form and Herrscher of Origin Form.<br /> 
                            Cast Ultimate to switch between them. 
                            Her Charged ATK inflicts Pristine Seed stacks that last 15s and cap at <b>3</b>. 
                            At <b>3</b> stacks, enemies enter Pristine Bloomage state for <b>2.5s</b>. 
                            In Herrscher of Origin Form, Pristine Bloomage lasts for <b>3.5s</b> and immobilizes enemies.<br /> 
                            Hitting enemies in Pristine Bloomage state with weapon skill or special Weapon skill triggers Ego Blossom. 
                            In Herrscher of Human Form, it deals <b>200% + 120%</b> ATK of Ice DMG in an area. 
                            In Herrscher of Origin Form, it deals <b>500%</b> ATK of Ice DMG. When Pristine Bloomage is removed, <b>1</b> Pristine Seed stack remains. 
                            Inflicting Pristine Seed again refreshes its duration.
                        </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Ultimate: Radiant Destiny</strong><br />
                            <img src="./Images/HoH_Ultimate Skill.png" alt="HoH Ultimate Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Switch between <b>2</b> Herrscher forms.<br />
                            On casting Ultimate, enter Herrscher of Origin form, create Stars of the Past, deal <b>500%</b> ATK of Ice DMG, and inflict Pristine Bloomage and <b>6</b> Rime Trauma. 
                            During which all skill timers and the stage timer is paused. 
                            In Herrscher of Origin form, she is also in burst mode and gains Herrscher Charge (Max: <b>400</b>; Initial: <b>0</b>). 
                            She regains Herrscher Charge over time, regaining <b>80</b> per second within the first <b>5s</b> and <b>60</b> per second after <b>5s</b>. 
                            During which, she fights with a staff instead a bow. 
                            Tap Weapon to cast Waltz of the Stars, which deals a total of <b>500%</b> ATK of Ice DMG on the first cast, and <b>1400%</b> ATK of Ice DMG afterward. 
                            Exiting Herrscher of Origin form clears this effect. Waltz of the Stars CD: <b>20s</b> (unaffected by CD reduction).<br />
                            When on the field in Herrscher of Origin form for over <b>5s</b>, tap [ULT] again or wait until <b>17s</b> to cast Finisher, dealing <b>1100%</b> ATK of Ice DMG. 
                            During which, all skill timers and the stage timer is paused. In the meantime, if she is switched out, she will still cast Finisher, only dealing <b>100%</b> ATK of Ice DMG. 
                            Casting Finisher ends Herrscher of Origin form, activates Herrscher of Human form, and cancels Stars of the Past.<br /><br />

                            While Stars of the Past is in effect, gain the following buffs:<br />
                            Restore <b>0.5</b> SP to every Ice DMG dealer every second.<br />
                            Inflict <b>0.5</b> Rime Trauma on every enemy every second.<br />
                            Ice DMG ELF deals <b>50%</b> more Ice DMG.<br />
                            Ice DMG battlesuit deals an extra <b>5%</b> DMG (an HP loss effect).<br />
                            Enemy receives an extra <b>100</b> × ATK of DMG (HP loss effect) on being frozen. This effect immediately applies to frozen enemies once when Stars of the Past is created.
                            She cannot be defeated in Herrscher of Origin form.<br /><br />

                            SP: <b>125</b>. CD: <b>10s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Evasion: Rising Starbeams</strong><br />
                            <img src="./Images/HoH_Evasion Skill.png" alt="HoH Evasion Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                             Quickly dodge enemy attacks up to twice in a row.<br />
                             Ultimate Evasion Skill:<br />
                             In Herrscher of Human form, causes Global Time Fracture for <b>3s</b>. 
                             Within <b>10s</b>, the next Charged ATK shoots an enhanced pristine arrow that deals <b>400% + 2 × 100%</b> ATK of Ice DMG and inflicts <b>3</b> Pristine Seed stacks. 
                             CD: <b>18s</b>.<br />
                             In Herrscher of Origin form, creates a starry vortex to pull enemies for <b>5s</b>. CD: <b>18s</b>.
                         </td>
                    </tr>
                    <tr>
                        <td class="skill-section">
                            <strong>Basic: Shattered Transience</strong><br />
                            <img src="./Images/HoH_Basic Skill.png" alt="HoH Basic Skill" width="100px" height="100px" />
                        </td>
                        <td class="description">
                            Attack with a bow or staff.<br />
                            Herrscher of Human form: Use a bow to shoot arrows <b>4</b> times.<br />
                            SEQ 1: Deals <b>100%</b> ATK of Ice DMG.<br />
                            SEQ 2: Deals <b>2 × 60%</b> ATK of Ice DMG.<br />
                            SEQ 3: Deals <b>150%</b> ATK of Ice DMG.<br />
                            SEQ 4: Deals <b>200%</b> ATK of Ice DMG.<br />
                            Herrscher of Origin: Use a staff to cast magic 4 times.<br />
                            SEO 1: Deals <b>150%</b> ATK of Ice DMG.<br />
                            SEQ 2: Deals <b>8 × 40%</b> ATK of Ice DMG.<br />
                            SEQ 3: Deals <b>4 × 60%</b> ATK of Ice DMG.<br />
                            SEO 4: Deals <b>200%</b> ATK of Ice DMG, and then <b>200%</b> ATK of Ice DMG gradually.
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
                            <img alt="Domain of Ego - Flawless Return" src="./Images/Domain_of_Ego_-_Flawless_Return.png" width="132" height="116">
                            <img alt="Elysia Pristine Stigmata (T)" src="./Images/Stigmata_Elysia Pristine_T.png" width="132" height="116">
                            <img alt="Elysia Pristine Stigmata (M)" src="./Images/Stigmata_Elysia Pristine_M.png" width="132" height="116">
                            <img alt="Elysia Pristine Stigmata (B)" src="./Images/Stigmata_Elysia Pristine_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 93%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            93%
                        </td>
                    </tr>
                    <tr>
                        <td>Functionality</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 95%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            95%
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
                            <img alt="Domain of Incandescence" src="./Images/Call_of_Crescent.png" width="132" height="116">
                            <img alt="Welt Yang Stigmata (T)" src="./Images/Stigmata_Welt Yang_T.png" width="132" height="116">
                            <img alt="Welt Yang Stigmata (M)" src="./Images/Stigmata_Welt Yang_M.png" width="132" height="116">
                            <img alt="Isaac Newton Stigmata (B)" src="./Images/Stigmata_Isaac Newton_B.png" width="132" height="116">
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
                                <div style="width: 65%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            65%
                        </td>
                    </tr>
                    <tr>
                        <td>Compatibility</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 80%; height: 100%; background-color: #f3755e;"></div>
                            </div>
                            80%
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><br />Transitional Equipment</th>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img alt="Light String" src="./Images/Light_String.png" width="132" height="116">
                            <img alt="Scott Stigmata (T)" src="./Images/Stigmata_Scott_T.png" width="132" height="116">
                            <img alt="Scott Stigmata (M)" src="./Images/Stigmata_Scott_M.png" width="132" height="116">
                            <img alt="Scott Stigmata (B)" src="./Images/Stigmata_Scott_B.png" width="132" height="116">
                        </td>
                    </tr>
                    <tr>
                        <td>Offensive Ability</td>
                        <td>
                            <div style="margin: auto; width: 88px; height: 10px; border: 1px solid; border-radius: 2px;" class="infobox-solid">
                                <div style="width: 47%; height: 100%; background-color: #ff9900;"></div>
                            </div>
                            647%
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
                                <div style="width: 65%; height: 100%; background-color: #ffc100;"></div>
                            </div>
                            65%
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="herrscher-info">
            <div id="QuizPanel">
                <h2>Quiz</h2>
                <div class="question">
                    <p>1.   What kind of damage does Herrscher of Human: Ego deals?</p>
                </div>
                <div class="options">
                    <!-- Correct: Ice -->
                    <asp:RadioButton ID="Option1" runat="server" Text="Fire" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option2" runat="server" Text="Ice" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option3" runat="server" Text="Lightning" GroupName="Q1" /><br />
                    <asp:RadioButton ID="Option4" runat="server" Text="Physical" GroupName="Q1" />
                </div>
                <div class="question">
                    <p>2.   What is the recommended weapon for Herrscher of Human: Ego?</p>
                </div>
                <div class="options">
                    <!-- Correct: Domain of Ego - Flawless Return -->
                    <asp:RadioButton ID="Option5" runat="server" Text="Domain of Ego - Flawless Return" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option6" runat="server" Text="Call of Crescent" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option7" runat="server" Text="Light String" GroupName="Q2" /><br />
                    <asp:RadioButton ID="Option8" runat="server" Text="Domain of Incandescence" GroupName="Q2" />
                </div>
                <div class="question">
                    <p>3.   In Herrscher of Human form, her evasion causes a Global Time Fracture that lasts for how long?</p>
                </div>
                <div class="options">
                    <!-- Correct: 3s -->
                    <asp:RadioButton ID="Option9" runat="server" Text="10s" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option10" runat="server" Text="3s" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option11" runat="server" Text="Until an enemy is defeated" GroupName="Q3" /><br />
                    <asp:RadioButton ID="Option12" runat="server" Text="Until her Herrscher of Human form ends" GroupName="Q3" />
                </div>
                <div class="question">
                    <p>4.  What is the recommended stigmata set for Herrscher of Human?</p>
                </div>
                <div class="options">
                    <!-- Correct: Elysia Pristine Stigmata Set -->
                    <asp:RadioButton ID="Option13" runat="server" Text="Elysia Pristine Stigmata Set" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option14" runat="server" Text="Scott Stigmata Set" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option15" runat="server" Text="Welt Yang Stigmata Set" GroupName="Q4" /><br />
                    <asp:RadioButton ID="Option16" runat="server" Text="Isaac Newton Stigmata Set" GroupName="Q4" />
                </div>
                <div class="question">
                    <p>5.    While Stars of the Past is in effect, what buffs does Herrscher of Human gain?</p>
                </div>
                <div class="options">
                    <!-- Correct: All of the above -->
                    <asp:RadioButton ID="Option17" runat="server" Text="Restore 0.5 SP to every Ice DMG dealer every second." GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option18" runat="server" Text="HInflict 0.5 Rime Trauma on every enemy every second." GroupName="Q5" /><br />
                    <asp:RadioButton ID="Option19" runat="server" Text=" Enemy receives an extra 100 × ATK of DMG (HP loss effect) on being frozen." GroupName="Q5" /><br />
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
