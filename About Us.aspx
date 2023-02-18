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
  background: linear-gradient(rgba(0, 0, 30, 0.8), rgba(0, 0, 0, 0.8));
  display: flex;
  flex-direction: column;
  border-radius: 25px;
  border: solid;
}

.container2 {
  display: flex;
  flex-direction: column;
  background-color: rgba(0, 0, 139, 0.75);
  border-radius: 25px;
  margin-top: 5%;
  color: white;
  border: solid;
  align-self: center;
  padding: 20px;
  background: linear-gradient(rgba(0, 0, 30, 0.8), rgba(0, 0, 0, 0.8));
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
  background: linear-gradient(rgba(0, 0, 30, 0.8), rgba(0, 0, 0, 0.8));
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
  background: linear-gradient(rgba(0, 0, 30, 0.8), rgba(0, 0, 0, 0.8));
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
        allows you to access it on multiple devices. Registered users can enjoy
        exclusive content, participate in online discussions, and track their
        progress with our progress tracker. We also offer a virtual lab for
        experimenting with different character builds and strategies, as well as
        an interactive calendar of upcoming events and updates to keep you
        informed. We believe that multimedia elements, such as video tutorials
        and podcasts, are essential for providing additional learning resources.
        That's why we've incorporated them into our platform to give you a more
        engaging and interactive learning experience. Our progress tracker
        enables you to set and track your goals, as well as receive feedback and
        support from other players and instructors. Our vision is to be a leader
        in the field of digital learning, providing innovative and engaging
        learning resources for students and educators worldwide. We're dedicated
        to making sure you have the best experience possible while learning
        about Honkai Impact. So whether you're a beginner or an experienced
        player, Durandal is the perfect platform for you.
      </div>
    </div>

    <div class="container2">
      <asp:Panel class="c2child" ID="FeedbackTextBox1" runat="server">
        <h2 style="text-align:center">Feedback Received</h2>
        <asp:TextBox
          runat="server"
          ReadOnly="true"
          class="TextBox largetextbox"
          ID="TextBox1"
        ></asp:TextBox>
        <div class="ButtonContainer">
          <asp:button
            runat="server"
            class="feedbackbutton"
            onclick="Search_feedback_button_Click"
            Text="Search Feedback"
          ></asp:button>
          <asp:button
            runat="server"
            id="register_button"
            class="feedbackbutton"
            Text="Register"
            OnClick="register_button_Click"
          ></asp:button>
        </div>
      </asp:Panel>

      <asp:Panel
        runat="server"
        id="FeedBackTextBox2"
        style="display:none;"
        class="c2child"
      >
        <h2 style="text-align:center">Search</h2>
        <p style="align-self:center">Username</p>
        <asp:TextBox
          ID="EmailTextBox1"
          runat="server"
          placeholder="User ID"
          class="TextBox smallTextBox"
        ></asp:TextBox>
        <p style="align-self:center">Password</p>
        <asp:TextBox
          ID="PasswordTextBox1"
          runat="server"
          TextMode="Password"
          placeholder="Password"
          class="TextBox smallTextBox"
        ></asp:TextBox>
        <p style="align-self:center">Updated Feedback (Not Required)</p>
        <asp:TextBox
          ID="NewFeedback"
          runat="server"
          TextMode="Password"
          placeholder="Password"
          class="TextBox smallTextBox"
        ></asp:TextBox>
        <div class="ButtonContainer">
          <asp:button
            id="search_button"
            class="feedbackbutton"
            style="height:5vh;"
            runat="server"
            Text="Search"
            OnClick="search_button_Click"
          ></asp:button>
          <asp:button
            runat="server"
            id="cancel_button"
            class="feedbackbutton"
            style="height:5vh;"
            Text="Cancel"
            OnClick="cancel_button_Click1"
          ></asp:button>
          <asp:button
            id="Update"
            class="feedbackbutton"
            style="height:5vh;"
            runat="server"
            Text="Update"
            OnClick="Update_Click"
          ></asp:button>
          <asp:button
            id="Delete"
            class="feedbackbutton"
            style="height:5vh;"
            runat="server"
            Text="Delete"
            OnClick="Delete_Click"
          ></asp:button>
        </div>
      </asp:Panel>

      <asp:Panel
        runat="server"
        ID="FeedbackTextBox3"
        Style="display: none;"
        class="c2child"
      >
        <h2 style="text-align: center">Register</h2>
        <p style="align-self: center">Email</p>
        <asp:TextBox
          runat="server"
          placeholder="Email"
          class="TextBox smallTextBox"
          ID="EmailTextBox2"
        ></asp:TextBox>
        <p style="align-self: center">Password</p>
        <asp:TextBox
          ID="PasswordTextBox2"
          runat="server"
          TextMode="Password"
          placeholder="Password"
          class="TextBox smallTextBox"
        ></asp:TextBox>
        <p style="align-self: center">Feedback</p>
        <asp:TextBox
          ID="Feedback"
          runat="server"
          placeholder="Feedback"
          class="TextBox smallTextBox"
        ></asp:TextBox>
        <div class="ButtonContainer">
          <asp:button
            runat="server"
            Text="Register"
            class="feedbackbutton"
            style="height: 5vh;"
            OnClick="InsertFeedback1"
            ID="register_button2"
          ></asp:button>
          <asp:button
            runat="server"
            OnClick="cancel_button_Click2"
            id="register_cancel_button"
            class="feedbackbutton"
            style="height: 5vh;"
            Text="Cancel"
          ></asp:button>
        </div>
      </asp:Panel>
    </div>
  </div>
</asp:Content>