@textualQue
  Feature: Textual Questions-text

    Background:
      Given ss type "login" page
      When ss type "jbigpud@gmailwe.com" into email field
      And ss type "12345" in password field
      And ss click "Sign In" button
      And ss wait for 1 sec
      Then user role "Teacher" is displayed ss
      And ss wait for 2 sec

   @textualQue1
   Scenario: Textual Questions-text
     When ss click "Quizzes" menu item
     Then url contains text "quiz" ss
     And ss wait for 1 sec
     When ss click button "Create New Quiz"
     And ss wait for 1 sec
     When ss type "san quiz" into title field
     And ss add a question
     And ss wait for 2 sec
     When ss select "Textual" question in "Q1"
     And ss type 100 character into question field of "Q1"
#     This is known issue DEC23-301
#     Then error message should be displayed ss
     And ss wait for 1 sec


