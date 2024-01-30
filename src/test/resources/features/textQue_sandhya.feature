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
      When ss click "Quizzes" menu item
      Then url contains text "quiz" ss
      And ss wait for 1 sec
      When ss click button "Create New Quiz"
      And ss wait for 1 sec
      When ss type "san quiz" into title field
      And ss add a question
      And ss wait for 2 sec

   @textualQue1
   Scenario: Textual Questions-text-1000 character
     When ss select "Textual" question in "Q1"
     And ss type 1000 character into question field of "Q1"
     And ss wait for 1 sec

    @textualQue2
    Scenario: Textual Questions-text-Alphanumeric & Sp. characters
      When ss select "Textual" question in "Q1"
      And ss type "ask';.][123" into question field of "Q1"
      And ss wait for 1 sec

    @textualQue3
    Scenario: Textual Questions-text-1001 character
      When ss select "Textual" question in "Q1"
      And ss type 1001 character into question field of "Q1"
#     This is known issue DEC23-301
#     Then error message should be displayed ss
      And ss wait for 1 sec


    @textualQue4
    Scenario: Textual Questions-text-Error message
      When ss select "Textual" question in "Q1"
      And ss type "ani" into question field of "Q1"
      Then ss clear the " " into question field of "Q1"
#      Then error message "This field is required" is displayed sss
#      And ss wait for 1 sec
#
#    @textualQue4
#    Scenario Outline: Textual Questions-text-Error message
#      And ss type <qNum> into question field of <qText>
#      Then ss clear the <qNum1> into question field of <qText>
#      Then error message <expectedmessage> is displayed sss
#      And ss wait for 1 sec
#      Examples:
#        | qNum | qText | qNum1 | expectedmessage         |
#        | "a " | "Q1"  | " "   | "This field is required"|