<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Story.aspx.cs" Inherits="DURANDAL_IO.Story" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Child Page</title>
    <style>
        .parent {
          display: flex;
          flex-direction: column;
          height: 100vh;
          background-attachment:fixed;
          overflow:auto;
          color:white;
        }

        .parent-content-area {
          flex: 1;
          padding: 20px;
          margin-top: 10%;
          display: flex;
          flex-direction: column;
        }

        /* Story section */
        .story-section {
          border-radius:20px;
          background: silver;
          margin-bottom: 30px;
          border: 1px solid white;
          padding: 10px;
        }

        .story-section h2 {
          border-bottom: 1px solid white;
          padding-bottom: 10px;
        }

        /* Characters section */
        .characters-section {
          display: flex;
          flex-wrap: wrap;
          flex-direction: row;
          width: 100%;
          justify-content: space-evenly;
        }

        .character {
          border-radius:20px;
          background: linear-gradient(rgba(0, 0, 30, 0.8), rgba(0, 0, 0, 0.8));
          width: 30%;
          padding: 10px;
          border: 1px solid white;
          margin-bottom: 30px;
        }

        .character img {
          width: 100%;
          height: auto;
          margin-bottom: 10px;
        }

        .character h3 {
          margin-top: 0;
          text-align: center;
        }

        p
        {
          font-family: Arial, sans-serif;
          font-size: 16px;
          line-height: 2;
          text-align: justify;
          margin: 1em 0;
          padding: 0;
        }

        img:hover{
            transform: scale(1.2);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="story-section">
        <h2 style="text-align:center">Story</h2>
        <p>In an alternate version of Earth, a malevolent force known as the Honkai has plagued humanity for centuries, corrupting them into undead creatures and unleashing monsters upon the world. Every time civilization becomes too advanced, the Honkai returns to end it. In the game's present day, global factions exist to combat or take advantage of the Honkai's power. These include Schicksal, a European-based peacekeeping organization that deploys human warriors called Valkyries, Anti-Entropy, a former North American branch of Schicksal that prefers to use robots instead of human soldiers, and World Serpent, a shadowy organization manipulating events behind the scenes.

Prior to the game's start, three Herrscher awakenings have occurred in the Current Era. The Herrscher of Reason became the leader of Anti-Entropy, the Herrscher of the Void was defeated by Schicksal and Anti-Entropy in 2000, and the Herrscher of Thunder was prevented from fully awakening and sent to train her powers as a Valkyrie at Schicksal's St. Freya Academy.</p>
    </div>
    <div class="characters-section">
        <div class="character">
          <h3>Kiana Kaslana</h3>
          <img src="./Images/Kiana Kaslana.png" alt="Kiana Kaslana">
          <p>Regardless of the situation, Kiana is consistently spunky and lighthearted. She is also honest to a fault, stating that instead of guessing on a test, she would rather admit to her lack of knowledge and leave answers blank. Due to her goofy and somewhat insolent personality, this gives the people around her some mixed verdict, causing Bronya or Theresa to often get onto her. Kiana rarely filters her thoughts and states or often does, whatever's on her mind, without considering the consequences that may follow. Though her intelligence is often a source of humor, Kiana has shown considerable skill and talent regarding practical battle techniques. It is mentioned that the only reason she has not passed her A-rank Valkyrie exam is because she fails the written portion even while acing the battle portion.

Kiana has also been shown to have a noticeable interest in other girls, especially her fellow Valkyrie, Raiden Mei. She is very often unable to contain her affection towards the other, demonstrating on several occasions to completely disregard even the most tense situations in favor of talking about being with Mei, which the Raiden tolerates - until Kiana's disregard and show of affection gets out of hand. </p>
        </div>
        <div class="character">
          <h3>Raiden Mei</h3>
          <img src="./Images/Raiden Mei.png" alt="Raiden Mei">
          <p>Mei is most easily recognized by her thigh-length black hair (depicted as indigo in game/artwork). She keeps half of it tied up in a ponytail and decorates it with pins or other ornaments. She is the tallest of the Valkyries, standing several centimeters taller than even her instructor and superior captain, Murata Himeko. Due to her many years of practicing and teaching swordsmanship, she has a toned build. </p>
        </div>
        <div class="character">
          <h3>Bronya Zaychik</h3>
          <img src="./Images/Bronya Zaychik.png" alt="Bronya Zaychik">
          <p>Due to an event in her past, Bronya rarely shows emotion except in the direst of circumstances. However, she does have a fondness for sarcasm, oftentimes referring to Kiana as "Kiana Idiotka" and getting called "Bratnya" in return. She also collects and displays HOMU merchandise, something she has in common with Principal Theresa.

Despite her lone wolf personality, Bronya does work well with the other girls and is shown to protect Mei against Kiana's constant advances. Her cold personality and prowess with Project Bunny allow her to take a more back-line role in battle, where she can use her cool head to deploy support abilities or devastating long-range attacks. Before her injuries that lead to her robotic limbs, Bronya is shown to be skilled at hand-to-hand, improvisational combat, and is a supremely skilled sniper. While she is still the main sniper of the Valkyries, she rarely has a need for physical combat and simply uses Project Bunny to occasionally knock back enemies. </p>
        </div>

    </div>
</asp:Content>

