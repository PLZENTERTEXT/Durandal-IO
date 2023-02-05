

using System;

namespace DURANDAL_IO
{
    public partial class HoF : System.Web.UI.Page
    {
        // Keep track of the current question
        int currentQuestion = 0;

        // An array to store the questions
        Question[] questions = new Question[]
        {
            new Question("What kind of damage does Herrscher of Flamescion deals?", "Fire", "Ice", "Lightning", "Physical", "Fire"),
            new Question("What is the recommended weapon for Herrscher of Flamescion?", "Judgment of Shamash", "Fenghuang Pinions", "Domain of the Void", "Domain of Incandescence", "Domain of Incandescence"),
            new Question("How much HP does Herrscher Form activation costs?", "10%", "15%", "20%", "25%", "15%"),
            new Question("When your HP is below 60%, how much more Fire DMG does Herrscher of Flamescion deals?", "15%", "25%", "35%", "45%", "35%"),
            new Question("What can Herrscher of Flamescion's ultimate do?", "Pauses buff, debuff and stage timer", "Heals Flamescion if her HP is low", "Dealing 2150% Fire DMG", "All of the above", "All of the above"),
        };

        // An array to store the user's answers
        string[] answers = new string[5];

        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page is not being posted back to the server (first time the page is being loaded)
            if (!Page.IsPostBack)
            {
                // Show the first question
                ShowQuestion(0);
            }

            Console.WriteLine(currentQuestion + "pageloaddddddddddddddddddddddddddddddddddddddddddddd");
        }

        public class Question
        {
            public string Text { get; set; }
            public string Option1 { get; set; }
            public string Option2 { get; set; }
            public string Option3 { get; set; }
            public string Option4 { get; set; }
            public string CorrectAnswer { get; set; }

            public Question(string text, string option1, string option2, string option3, string option4, string correctAnswer)
            {
                Text = text;
                Option1 = option1;
                Option2 = option2;
                Option3 = option3;
                Option4 = option4;
                CorrectAnswer = correctAnswer;
            }
        }

        private void ShowQuestion(int index)
        {
            // Show the current question
            QuestionLabel.Text = questions[index].Text;
            Option1.Text = questions[index].Option1;
            Option2.Text = questions[index].Option2;
            Option3.Text = questions[index].Option3;
            Option4.Text = questions[index].Option4;

            // Update the completion bar
            CompletionLabel.Text = (index + 1) + "/" + questions.Length;

            // Show or hide the Next button
            if (index < questions.Length - 1)
            {
                NextButton.Visible = true;
            }
            else
            {
                NextButton.Visible = false;
            }

            // Show or hide the Submit button
            if (index == questions.Length - 1)
            {
                SubmitButton.Visible = true;
            }
            else
            {
                SubmitButton.Visible = false;
            }

            // Show or hide the Back button
            if (index > 0)
            {
                BackButton.Visible = true;
            }
            else
            {
                BackButton.Visible = false;
            }

            // Select the user's previous answer, if any
            //if (answers[index] != null)
            //{
            //    switch (answers[index])
            //    {
            //        case "Option1":
            //            Option1.Checked = true;
            //            break;
            //        case "Option2":
            //            Option2.Checked = true;
            //            break;
            //        case "Option3":
            //            Option3.Checked = true;
            //            break;
            //        case "Option4":
            //            Option4.Checked = true;
            //            break;
            //    }
            //}
        }

        protected void NextButton_Click(object sender, EventArgs e)
        {
            currentQuestion++;
            ShowQuestion(currentQuestion);

            Console.WriteLine(currentQuestion + "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
        }
    }
}


//        

//        protected void NextButton_Click(object sender, EventArgs e)
//        {
//            // Store the user's answer
//            answers[currentQuestion] = GetSelectedAnswer();
//            // answers[0] = "";

//            Console.WriteLine(currentQuestion);
//            Console.WriteLine(answers);

//            // Show the next question
//            currentQuestion++;
//            ShowQuestion(currentQuestion);
//        }

//        protected void BackButton_Click(object sender, EventArgs e)
//        {
//            // Show the previous question
//            currentQuestion--;
//            ShowQuestion(currentQuestion);
//        }

//        protected void SubmitButton_Click(object sender, EventArgs e)
//        {
//            // Store the user's answer
//            //answers.Add(GetSelectedAnswer());

//            // Calculate the score
//            int score = 0;
//            for (int i = 0; i < questions.Length; i++)
//            {
//                if (answers[i] == questions[i].CorrectAnswer)
//                {
//                    score++;
//                }
//            }

//            // Show the score
//            ScoreLabel.Text = "Score: " + score + "/" + questions.Length;
//            ScoreLabel.Visible = true;
//            //QuizPanel.Visible = false;
//        }

//        Takes an index as an argument and displays the question, options, and completion bar
//        private void ShowQuestion(int index)
//        {
//            // Show the current question
//            QuestionLabel.Text = questions[index].Text;
//            Option1.Text = questions[index].Option1;
//            Option2.Text = questions[index].Option2;
//            Option3.Text = questions[index].Option3;
//            Option4.Text = questions[index].Option4;

//            // Update the completion bar
//            CompletionLabel.Text = (index + 1) + "/" + questions.Length;

//            // Show or hide the Next button
//            if (index < questions.Length - 1)
//            {
//                NextButton.Visible = true;
//            }
//            else
//            {
//                NextButton.Visible = false;
//            }

//            // Show or hide the Submit button
//            if (index == questions.Length - 1)
//            {
//                SubmitButton.Visible = true;
//            }
//            else
//            {
//                SubmitButton.Visible = false;
//            }

//            // Show or hide the Back button
//            if (index > 0)
//            {
//                BackButton.Visible = true;
//            }
//            else
//            {
//                BackButton.Visible = false;
//            }

//            // Select the user's previous answer, if any
//            //if (answers[index] != null)
//            //{
//            //    switch (answers[index])
//            //    {
//            //        case "Option1":
//            //            Option1.Checked = true;
//            //            break;
//            //        case "Option2":
//            //            Option2.Checked = true;
//            //            break;
//            //        case "Option3":
//            //            Option3.Checked = true;
//            //            break;
//            //        case "Option4":
//            //            Option4.Checked = true;
//            //            break;
//            //    }
//            //}
//        }

//        private string GetSelectedAnswer()
//        {
//            if (Option1.Checked)
//            {
//                return "Option1";
//            }
//            else if (Option2.Checked)
//            {
//                return "Option2";
//            }
//            else if (Option3.Checked)
//            {
//                return "Option3";
//            }
//            else if (Option4.Checked)
//            {
//                return "Option4";
//            }
//            else
//            {
//                return null;
//            }
//        }
//    }

