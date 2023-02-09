

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
            
        };

        // An array to store the user's answers
        string[] answers = new string[5];

        protected void Page_Load(object sender, EventArgs e)
        {
            // If the page is not being posted back to the server (first time the page is being loaded)
            if (!Page.IsPostBack)
            {
                // Show the first question

            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {

        }


        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Store the user's answer
            //answers.Add(GetSelectedAnswer());

            // Calculate the score
            int score = 0;
            for (int i = 0; i < questions.Length; i++)
            {
                if (answers[i] == questions[i].CorrectAnswer)
                {
                    score++;
                }
            }
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

    }
}





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

//       

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

