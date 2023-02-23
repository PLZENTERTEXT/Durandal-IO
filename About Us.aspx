<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="DURANDAL_IO.About_Us" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

.parent {
  background-attachment: fixed;
  overflow: auto;
}

.container {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  border-radius: 25px;
  max-width: 75%;
  margin-top: 10%;
  color: white;
}
.about-us-header {
  text-align: center;
  font-size: 32px;
  font-weight: bold;
  margin-top: 50px;
}
.about-us-content {
  text-align: justify;
  margin: 50px;
  font-size: 18px;
}

.container1 {
  display: flex;
  background-color: #1F2326EE;
  display: flex;
  flex-direction: column;
  border-radius: 25px;
}

.container2 {
  display: flex;
  flex-direction: column;
  border-radius: 25px;
  margin-top: 5%;
  color: white;
  align-self: center;
  padding: 20px;
  background-color: #1F2326EE;
}

.about-us-header {
  text-align: center;
  font-size: 32px;
  font-weight: bold;
  margin-top: 50px;
}

.about-us-content {
  text-align: justify;
  margin: 50px;
  font-size: 18px;
}

#search-feedback-div,
#register-div {
  margin-top: 20px;
}

.c2child {
  display: flex;
  flex-direction: column;
  min-width: 75vw;
}

.TextBox {
  background-color: #1F2326EE;
}

#feedback-div {
  display: flex;
  flex-direction: column;
}

.ButtonContainer {
  display: flex;
  justify-content: space-around;
}

.feedbackbutton {
  background-color: #1F2326EE;
  color: white;
  margin-top: 10px;
  width: 40%;
  border-radius: 25px;
  height: 10vh;
}

.largetextbox {
  width: 75vw;
  height: 15vh;
  color: white;
  text-align: center;
}

.smallTextBox {
  width: 50%;
  height: 4vh;
  align-self: center;
  margin: 10px 0;
  border-radius: 10px;
}

input[type="text"] {
  color: white;
}

</style>

</asp:Content>

<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div class="container">
    <div class="container1">
      <div class="about-us-header">About Us</div>
      <div class="about-us-content">
        Durandal is a comprehensive and interactive web-based learning platform
        designed specifically for players of the popular game Honkai Impact. Our
        mission is to provide a one-stop-shop for all your learning needs
        related to the game. We aim to offer a variety of learning resources,
        including guides, tutorials, and interactive learning objects, to help
        you improve your skills and knowledge of the game. Our platform is
        user-friendly and visually appealing, with a responsive design that
        allows you to access it on multiple devices. Our vision is to be a leader
        in the field of digital learning, providing innovative and engaging
        learning resources for students and educators worldwide. We're dedicated
        to making sure you have the best experience possible while learning
        about Honkai Impact. So whether you're a beginner or an experienced
        player, Durandal is the perfect platform for you.
      </div>
    </div>
      <%-- FEEDBACK FEATURE IN APPENDIX - INCOMPLETE --%>
      <%--<div class="container2"  style="margin-bottom: 3em;">
          <asp:Panel class="c2child" ID="FeedbackTextBox1" runat="server">
              <h2 style="text-align: center">Feedback Received</h2>
              <asp:TextBox
                  runat="server"
                  ReadOnly="true"
                  class="TextBox largetextbox"
                  ID="TextBox1"></asp:TextBox>
              <div class="ButtonContainer">
                  <asp:Button
                      runat="server"
                      class="feedbackbutton"
                      OnClick="Search_feedback_button_Click"
                      Text="Search Feedback"></asp:Button>
                  <asp:Button
                      runat="server"
                      ID="register_button"
                      class="feedbackbutton"
                      Text="Register"
                      OnClick="register_button_Click"></asp:Button>
              </div>
          </asp:Panel>

          <asp:Panel
              runat="server"
              ID="FeedBackTextBox2"
              Style="display: none;"
              class="c2child">
              <h2 style="text-align: center">Search</h2>
              <p style="align-self: center">Email</p>
              <asp:TextBox
                  ID="EmailTextBox1"
                  runat="server"
                  placeholder="Email"
                  class="TextBox smallTextBox"></asp:TextBox>
              <p style="align-self: center">Password</p>
              <asp:TextBox
                  ID="PasswordTextBox1"
                  runat="server"
                  TextMode="Password"
                  placeholder="Password"
                  class="TextBox smallTextBox"></asp:TextBox>
              <p style="align-self: center">Updated Feedback (Not Required)</p>
              <asp:TextBox
                  ID="NewFeedback"
                  runat="server"
                  placeholder="Password"
                  class="TextBox smallTextBox"></asp:TextBox>
              <div class="ButtonContainer">
                  <asp:Button
                      ID="search_button"
                      class="feedbackbutton"
                      Style="height: 5vh;"
                      runat="server"
                      Text="Search"
                      OnClick="search_button_Click"></asp:Button>
                  <asp:Button
                      runat="server"
                      ID="cancel_button"
                      class="feedbackbutton"
                      Style="height: 5vh;"
                      Text="Cancel"
                      OnClick="cancel_button_Click1"></asp:Button>
                  <asp:Button
                      ID="Update"
                      class="feedbackbutton"
                      Style="height: 5vh;"
                      runat="server"
                      Text="Update"
                      OnClick="Update_Click"></asp:Button>
                  <asp:Button
                      ID="Delete"
                      class="feedbackbutton"
                      Style="height: 5vh;"
                      runat="server"
                      Text="Delete"
                      OnClick="Delete_Click"></asp:Button>
              </div>
          </asp:Panel>

          <asp:Panel
              runat="server"
              ID="FeedbackTextBox3"
              Style="display: none;"
              class="c2child">
              <h2 style="text-align: center">Register</h2>
              <p style="align-self: center">Email</p>
              <asp:TextBox
                  runat="server"
                  placeholder="Email"
                  class="TextBox smallTextBox"
                  ID="EmailTextBox2"></asp:TextBox>
              <p style="align-self: center">Password</p>
              <asp:TextBox
                  ID="PasswordTextBox2"
                  TextMode="Password"
                  runat="server"
                  placeholder="Password"
                  class="TextBox smallTextBox"></asp:TextBox>
              <p style="align-self: center">Feedback</p>
              <asp:TextBox
                  ID="Feedback"
                  runat="server"
                  placeholder="Feedback"
                  class="TextBox smallTextBox"></asp:TextBox>
              <div class="ButtonContainer">
                  <asp:Button
                      runat="server"
                      Text="Register"
                      class="feedbackbutton"
                      Style="height: 5vh;"
                      OnClick="InsertFeedback1"
                      ID="register_button2"></asp:Button>
                  <asp:Button
                      runat="server"
                      OnClick="cancel_button_Click2"
                      ID="register_cancel_button"
                      class="feedbackbutton"
                      Style="height: 5vh;"
                      Text="Cancel"></asp:Button>
              </div>
          </asp:Panel>
      </div>--%>
  </div>
</asp:Content>