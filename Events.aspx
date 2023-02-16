<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="DURANDAL_IO.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     img.displayed
     {
         display:block;
         margin-left:auto;
         margin-right:auto
     }

       .event-banner {
           background-color: #1f2326EE;
           border-radius: 8px;
           margin: 3em;
           color: #fff;
           padding: 2em;
           display: compact;
           align-items: center;
           justify-content: center;
           flex-direction: column
       }

       .auto-style3
       {
          width:1447px;
          overflow-y:hidden;
          display:flex;
          justify-content:stretch;
          max-width:stretch;
          overflow:scroll;
          display:flex;
          align-content:inherit;
          flex-direction:column;
          height:1370px
      }

      html
      {
          overflow-y:scroll;
          overflow-x:hidden;
          background:#4c63a6
      }

      .auto-style9
      {
          margin-left:311px
      }
      
      .auto-style10
      {
          margin-left:0;
          width:1264px
      }
      
      p
      {
          text-align:center;
          font-size:60px;
          margin-top:0
      }

       .flameChasers {
            margin-bottom: 50px;
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

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="auto-style3">
        <div class="event-banner" style="margin-top: 6.0em;">
            <h1 class="auto-style9"><u>Events</u></h1>
            <a href="Event_1.aspx">
                <img class="displayed" src="./Images/Ai-chan_Newsflash.png" alt="Ai-1" width="652px" height="153px"/>
                 </a><br /><br />
                <a href="Event_2.aspx">
                <img class="displayed" src="Images/Ai-chan_Newflash_1.png" alt="Ai-2" width="652px" height="153px" />
                </a><br /><br />
                <a href="Event_3.aspx">
                <img class="displayed" src="Images/Ai-chan_Newsflash_2.png" alt="Ai-3" width="652px" height="153px" />
                </a><br /><br />
            <h1 style="text-align: center">Time Until Next Event:</h1>

            <p id="demo"></p>

<script>
    // Set the date we're counting down to
    var countDownDate = new Date("Apr 1, 2023 00:00:00").getTime();

    // Update the count down every 1 second
    var x = setInterval(function() {

    // Get today's date and time
    var now = new Date().getTime();
    
    // Find the distance between now and the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
    }, 1000);
            </script>

            </div>
           </div>
    
</asp:Content>

