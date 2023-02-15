﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Event_3.aspx.cs" Inherits="DURANDAL_IO.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      

        .background-h2 {
            /*background-color: #47CBEE;
            color: #1F2326;*/
            /*width: inherit;*/
        }
         img.displayed
         {
            display: block;
            margin-left: auto;
            margin-right: auto;
         }

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
        html { 
            overflow-y: scroll;  
            overflow-x: hidden;
            background: #4c63a6;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="herrscher-info">
            <h1>Ai-chan Newsflash: New Herrscher battlesuit Herrscher of Finality Debuts</h1>
            <table style="margin: 0" cellspacing="0" cellpadding="1px">
                <img src=".\Images\Ai-chan_Newsflash_2.png" alt="BS" height="160px" width="771px"/>
                    <h3>Feb 5, 2023</h3>
                <tbody>
                    <tr>
                        <td style="text-align: left;">
                          <p>
                            Dear Captains, Version Kiana "From Finality, the Origin" is coming soon! Today's episode is all about Kiana's S-rank Herrscher battlesuit Herrscher <br />
                              of Finality and ELF Kiana Kaslana! Read on to learn more!.
                            </p><br />
                            <p>
                            <p style="color:darkorange;">※※※※※ Herrscher of Finality ※※※※※<br /></p>
                            She holds the key to humanity's transcendence beyond Finality and a brighter future.<br />
                            "The authority comes from everyone's hard work... I'll take good care of it."
                            </p><br />
                            <img class="displayed" src=".\Images\Event11.png" alt="BS" />
                            <br /> <br /><br />
                            <p style="color:darkorange;">※※※※ Skill Showcase ※※※※<br /></p>
                           <p> Herrscher of Finality is an S-rank Herrscher battlesuit for Kiana Kaslana. She is an IMG-type Fire DMG dealer who attacks with pistols and a sword.<br />
                            Herrscher of Finality can trigger Absolute Time Fracture in which time stays completely still.<br /> <br /> 
                            ◆  [Basic ATK: Supreme Blade, Reforged] <br />
                            Herrscher of Finality's Basic ATK launches a 5-sequence combo that deals Fire DMG.
                           </p><br />
                            <img class="displayed" src=".\Images\skill5.gif" alt="BS" />
                            <p><br />
                                Herrscher of Finality attacks in mid-air. After using Basic ATK in mid-air, tap [ULT] to trigger plunge ATK. After using Basic ATK on the ground, tap <br />
                                [ULT] to trigger upward ATK.
                            </p>
                            <img class="displayed" src=".\Images\skill8.gif" alt="BS" />
                            <p><br />
                             ◆ [Combo ATK: Searching Drifter, Answered]<br /><br />
                             Time Flint stance & Moon Blade stance platforms and attack enemies.When Herrscher of Finality's Descent is maxed, hold [ATK] to cast <br /> 
                                Combo ATK so that she can switch between Time Flint stance and Moon Blade stance.
                                When Herrscher of Truth and Herrscher of Origin<br />  are on the same team, Combo ATK is enhanced in Time Flint stance and Moon Blade stance.
                            </p>
                            <img class="displayed" src=".\Images\skill6.gif" alt="BS" /><br /><br />
                            <img class="displayed" src=".\Images\skill3.gif" alt="BS" />
                             <p><br />
                             Herrscher of Finality gets Time Wave when casting Combo ATK. With 2 Time Waves, hold [EVA] to trigger Absolute Time Fracture, during which<br />
                             she gains invincibility and triggers Time-frozen Domain. After Time-frozen Domain expires or at 0 Descent, she will cast Combo ATK and end<br />
                             Absolute Time Fracture.<br />
                            </p>
                            <img class="displayed" src=".\Images\skill2.gif" alt="BS" />
                            <p>
                            When Herrscher of Finality is in Absolute Time Fracture, she will switch to Finale stance in which she casts Combo ATK to deal Fire DMG to<br />enemies
                            </p>
                            <img class="displayed" src=".\Images\skill7.gif" alt="BS" />
                            <p><br /><br />
                            ◆ [Ultimate: Deadly Finality, Surmounted]<br />
                            Herrscher of Finality jumps up and quickly attacks under the cold moon. Her lethal attacks deal Fire DMG, and she can trigger<br />  
                                Time-frozen Domain. When Herrscher of Origin and Herrscher of Truth are on the same team, exit no longer resets Time Waves.
                            </p>
                            <img class="displayed" src=".\Images\skill4.gif" alt="BS" />
                            <p><br />
                            When Herrscher of Origin and Herrscher of Truth are on the same team, Ultimate is replaced by Joint Ultimate. <br /> 
                            After casting Joint Ultimate, the three characters will jointly attack to deal massive Fire, Ice and Lightning DMG.
                            </p>
                            <img class="displayed" src=".\Images\skill1.gif" alt="BS" />
                            <p><br /> 
                            <p style="color:darkorange;">※※※※※ Battlesuits and Equipment ※※※※※<br /></p>
                            In the new version, you can play the limited-time Supply event Hope of Finality to get a Herrscher of Finality Character Card.<br />
                            Aside from Battlesuit Supply, Focus Supply for Herrscher of Finality's recommended gear will also be available. You can pull her <br /> 
                            recommended weapon Key of Anonymity and recommended stigma set In the Name of Finality from Focus Supply.<br /><br /> <br /> 
                            <img class="displayed" src=".\Images\Event10.png" alt="BS" />
                            </p><br /> 
                            <p style="color:darkorange;">※※※※※ New ELF Kiana Kaslana ※※※※※<br /></p>
                            She's the new addition to the ELF lineup.<br />
                            <img class="displayed" src=".\Images\Event12.png" alt="BS" />
                            <p style="color:darkorange;">※※※※ Skills Preview ※※※※<br /></p>
                            <p>
                            ◆ Basic ATK: Kiana, Go!<br />
                            Kiana Kaslana has 2 Basic ATK variations. She can fire 3 bullets or swing the bat to attack enemies and deal DMG.<br />
                            ◆ Ultimate: Baffling Luck
                                ELF hits a home run and the baseball explodes, gathering nearby enemies and creating an area.<br />  
                                The second explosion later will gather nearby enemies. Casting Ultimate reduces switch CD by 8s and increases Elemental DMG <br /> taken by enemies.
                            </p><br /><br /><br />

                    </tr>
                </tbody>
            </table>
        </div>
</asp:Content>