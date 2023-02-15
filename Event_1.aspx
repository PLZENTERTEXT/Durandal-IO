<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Event_1.aspx.cs" Inherits="DURANDAL_IO.WebForm5" %>
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
            height: 90vh;
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
              <table style="margin: 0" cellspacing="0" cellpadding="1px">
                <img src=".\Images\Ai-chan_Newsflash.png" alt="BS" height="160px" width="771px"/>
                <h1>Ai-chan's Newsflash: Part 1 Finale Toward a New Tomorrow</h1>
                    <h3>Feb 9, 2023</h3>
                <tbody>
                    <tr>
                        <td style="text-align: left;">
                          <p>
                            Dear Captain, today Ai-chan introduces to you the new story in Story Chapter XXXV <br />
                            The main story event is scheduled to begin in the middle of Version Kiana. As the story progresses, Part 1 of the main story is close to its Finale.<br />
                            Now let's check out the details!
                            </p>
                            <br />
                            <p>
                            <p style="color:darkorange;">※※※※※ Story Chapter XXXV Toward a New Tomorrow ※※※※※<br /></p>
                            "The Cocoon is just a mirror of yours after all." <br />
                               "How you embrace humanity is how the Cocoon embraces humanity."
                            </p>
                            <img class="displayed" src=".\Images\Event5.png" alt="BS" />
                            <br /> <br /><br />
                            <p style="color:darkorange;">※※※※※ Part 1 Finale Special Rewards Preview ※※※※※<br /></p>
                            "★★★ Part 1 Finale Login Event ★★★ <br />
                           <p> Part 1 Finale login event will begin in early MAR. You can log in to get 300 Crystals and 2,400 Asterite.<br />
                            During the event of Story Chapter XXXV, you can also log in to check out Part 1 Finale Special Letter below the bridge and get Focused Supply <br /> Card x5.
                           </p>
                            <img class="displayed" src=".\Images\Event4.png" alt="BS" />
                            <p><br />
                                ★★★ Story Chapter XXXV Event Rewards ★★★ <br />
                                Play Story Chapter XXXV to get bridge theme Train to the Future, Stygian Nymph's outfit Estonia in Spring and more.
                            </p>
                            <img class="displayed" src=".\Images\Event3.png" alt="BS" />
                            <p>
                            After Story Chapter XXXV is released and before Version Kiana ends, you can also experience the limited-time bridge theme Above the Moon.
                            </p>
                            <img class="displayed" src=".\Images\Event1.png" alt="BS" />
                             <p>
                             There will also be special items for you to unlock! Please follow announcements for further details.
                            </p> <br />
                            <p style="color:darkorange;">
                            ※※※※※ New Boss: Kevin  ※※※※※
                            </p><p>
                            Kevin now has full control of the power of Finality thanks to Project Stigma. In this battle, he'll show us all the original authority of Finality and go<br /> all out to fight against the protagonists! The giant This Worldly Beast he summons has 3 arms, and he'll mount it to give orders.
                            </p>
                            <img class="displayed" src=".\Images\Event.png" alt="BS" />
                            <p>
                            That's all for this episode of Ai-chan's Newsflash! See you in Version Kiana! <br /><br />
                            ※ The above info is taken from the test server and is subject to change in the live version.
                            </p>
                    </tr>
                </tbody>
            </table>
        </div>
</asp:Content>
