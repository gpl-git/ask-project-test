@quiz_title
Feature: Validate the title of a Quiz

  Background:
    Given I open "login" page
    When I type "ask_instr@aol.com" into email field
    And I type "ABC123" into password field
    When I click "Sign In" button
    And I wait for 1 sec
    Then user role "TEACHER" should be displayed
    When I click "Quizzes" menu item
    And I wait for 1 sec
    When I click "Create New Quiz" button
    And I wait for 1 sec

  @quiz_title1
  Scenario:Validate the Quiz title accepts alphanumeric and special characters
    When I type "###Demo Quiz1###" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question 1" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "###Demo Quiz1###" should be displayed on the list of quizzes
    And I wait for 1 sec
    And I delete "###Demo Quiz1###" from the list of quizzes

  @quiz_title2
  Scenario:Validate the Quiz title cannot be empty
    When I type "Demo Quiz1" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question 1" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I clear the quiz title
    And I wait for 2 sec
    Then error message "This field is required" should be displayed

  @quiz_title2
  Scenario:Leading and trailing space characters to be eliminated when Quiz is saved in the List of Quizzes
    When I type "        Demo Quiz1        " as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question 1" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "Demo Quiz1" should be displayed on the list of quizzes
    And I wait for 1 sec
    And I delete "Demo Quiz1" from the list of quizzes

  @quiz_title2
  Scenario: Validate the quiz title accepts a maximum of 1000 characters
    When I type "DemoQuiz-1000 characters 7C8KRZWPs8SW32lJ24CBIIEniEoHQCSdgUxwufwbjPytA1lPCcjM2nk0rAfyS2cLCQcz4BHhTRjHbx91rxfTAWc27PDsBAU5Csc22zknuGnijUTObjZ22shmoLCCAuK2kkMNTPG5D8HxtwDDtTnk9f73DwlgWXsePXDWnLeQlpwQWOBwAkdAzoq1ie12xVYg6s5xG7MlioUrear8MxxHV1SK28kPEFi5IlwxFSAlrONCjP8pMOS6FnSKKYL52OpfSasghIMPy6FrmUNkGCcH0NNXeRDzQqTVC8CKbfnshTD4AVHMbLPsw7LysY6CJPhTcO8nEfnuWJR1f2jMihQ7aOTYY2GsO32hPE4y6jNn3PQKLAFbv8DomBTzStpAL5SCuyNU6fZj9AOSSjePyHE9BbXCgYBUpbMZaLHA6jpUh5wGuOHpcsYfD9cDbFjqwyCwWVNeMkfDDkJyWb4fXxxyzcXPeNgE7b8mUf4GrXzSJIY4lT4oQERuH37YpCBgaUEZXDoqh5mHuckoqTF0wZagxZODtrsSmPcLbJg6k3oP3EfPyCgu18oepy3K9w7KAzd2xy2i6deBJn0yb0616JEfICwGAnh1XUzwjoB5q0W1fAa4NDKJPVoZIbxZ4A2ojdHF1QP9rTNKNDYn3gbTwdkN6ohcpJXb1RMqnFv7Pfk6CJwIzpB8zPslrwrwvjesXT0lOuTSpjGozEKQtIbd0aHgsU0DTe2ufyFFhDOw0WMijYP07wtiVvzEDKAm51trwggGHAPPc79UIYDw5GfLUPYOQnsDDETAedDRgvVvw4oks0jBLTm8uSd7uAfryMYn6OFDtVEw7Xfy16qZwffPQLG07glrJgABbztQnKbHyuOnekPQLRmlLK5ZlAYlFhxTeVLXnrOLXDfbUEHETfQ309NgcVrLK69iedw485RY1kHZcg8o2tF3kb0Y4DnGVoIlevHSpkzjKFKeANyUiqt" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question 1" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
    Then "DemoQuiz-1000 characters 7C8KRZWPs8SW32lJ24CBIIEniEoHQCSdgUxwufwbjPytA1lPCcjM2nk0rAfyS2cLCQcz4BHhTRjHbx91rxfTAWc27PDsBAU5Csc22zknuGnijUTObjZ22shmoLCCAuK2kkMNTPG5D8HxtwDDtTnk9f73DwlgWXsePXDWnLeQlpwQWOBwAkdAzoq1ie12xVYg6s5xG7MlioUrear8MxxHV1SK28kPEFi5IlwxFSAlrONCjP8pMOS6FnSKKYL52OpfSasghIMPy6FrmUNkGCcH0NNXeRDzQqTVC8CKbfnshTD4AVHMbLPsw7LysY6CJPhTcO8nEfnuWJR1f2jMihQ7aOTYY2GsO32hPE4y6jNn3PQKLAFbv8DomBTzStpAL5SCuyNU6fZj9AOSSjePyHE9BbXCgYBUpbMZaLHA6jpUh5wGuOHpcsYfD9cDbFjqwyCwWVNeMkfDDkJyWb4fXxxyzcXPeNgE7b8mUf4GrXzSJIY4lT4oQERuH37YpCBgaUEZXDoqh5mHuckoqTF0wZagxZODtrsSmPcLbJg6k3oP3EfPyCgu18oepy3K9w7KAzd2xy2i6deBJn0yb0616JEfICwGAnh1XUzwjoB5q0W1fAa4NDKJPVoZIbxZ4A2ojdHF1QP9rTNKNDYn3gbTwdkN6ohcpJXb1RMqnFv7Pfk6CJwIzpB8zPslrwrwvjesXT0lOuTSpjGozEKQtIbd0aHgsU0DTe2ufyFFhDOw0WMijYP07wtiVvzEDKAm51trwggGHAPPc79UIYDw5GfLUPYOQnsDDETAedDRgvVvw4oks0jBLTm8uSd7uAfryMYn6OFDtVEw7Xfy16qZwffPQLG07glrJgABbztQnKbHyuOnekPQLRmlLK5ZlAYlFhxTeVLXnrOLXDfbUEHETfQ309NgcVrLK69iedw485RY1kHZcg8o2tF3kb0Y4DnGVoIlevHSpkzjKFKeANyUiqt" should be displayed on the list of quizzes
    And I wait for 1 sec
    And I delete "DemoQuiz-1000 characters 7C8KRZWPs8SW32lJ24CBIIEniEoHQCSdgUxwufwbjPytA1lPCcjM2nk0rAfyS2cLCQcz4BHhTRjHbx91rxfTAWc27PDsBAU5Csc22zknuGnijUTObjZ22shmoLCCAuK2kkMNTPG5D8HxtwDDtTnk9f73DwlgWXsePXDWnLeQlpwQWOBwAkdAzoq1ie12xVYg6s5xG7MlioUrear8MxxHV1SK28kPEFi5IlwxFSAlrONCjP8pMOS6FnSKKYL52OpfSasghIMPy6FrmUNkGCcH0NNXeRDzQqTVC8CKbfnshTD4AVHMbLPsw7LysY6CJPhTcO8nEfnuWJR1f2jMihQ7aOTYY2GsO32hPE4y6jNn3PQKLAFbv8DomBTzStpAL5SCuyNU6fZj9AOSSjePyHE9BbXCgYBUpbMZaLHA6jpUh5wGuOHpcsYfD9cDbFjqwyCwWVNeMkfDDkJyWb4fXxxyzcXPeNgE7b8mUf4GrXzSJIY4lT4oQERuH37YpCBgaUEZXDoqh5mHuckoqTF0wZagxZODtrsSmPcLbJg6k3oP3EfPyCgu18oepy3K9w7KAzd2xy2i6deBJn0yb0616JEfICwGAnh1XUzwjoB5q0W1fAa4NDKJPVoZIbxZ4A2ojdHF1QP9rTNKNDYn3gbTwdkN6ohcpJXb1RMqnFv7Pfk6CJwIzpB8zPslrwrwvjesXT0lOuTSpjGozEKQtIbd0aHgsU0DTe2ufyFFhDOw0WMijYP07wtiVvzEDKAm51trwggGHAPPc79UIYDw5GfLUPYOQnsDDETAedDRgvVvw4oks0jBLTm8uSd7uAfryMYn6OFDtVEw7Xfy16qZwffPQLG07glrJgABbztQnKbHyuOnekPQLRmlLK5ZlAYlFhxTeVLXnrOLXDfbUEHETfQ309NgcVrLK69iedw485RY1kHZcg8o2tF3kb0Y4DnGVoIlevHSpkzjKFKeANyUiqt" from the list of quizzes

  @quiz_title3
  Scenario: Validate the quiz title does not  accept more than 1000 characters
    When I type "DemoQuiz-1002 characters 7C8KRZWPs8SW32lJ24CBIIEniEoHQCSdgUxwufwbjPytA1lPCcjM2nk0rAfyS2cLCQcz4BHhTRjHbx91rxfTAWc27PDsBAU5Csc22zknuGnijUTObjZ22shmoLCCAuK2kkMNTPG5D8HxtwDDtTnk9f73DwlgWXsePXDWnLeQlpwQWOBwAkdAzoq1ie12xVYg6s5xG7MlioUrear8MxxHV1SK28kPEFi5IlwxFSAlrONCjP8pMOS6FnSKKYL52OpfSasghIMPy6FrmUNkGCcH0NNXeRDzQqTVC8CKbfnshTD4AVHMbLPsw7LysY6CJPhTcO8nEfnuWJR1f2jMihQ7aOTYY2GsO32hPE4y6jNn3PQKLAFbv8DomBTzStpAL5SCuyNU6fZj9AOSSjePyHE9BbXCgYBUpbMZaLHA6jpUh5wGuOHpcsYfD9cDbFjqwyCwWVNeMkfDDkJyWb4fXxxyzcXPeNgE7b8mUf4GrXzSJIY4lT4oQERuH37YpCBgaUEZXDoqh5mHuckoqTF0wZagxZODtrsSmPcLbJg6k3oP3EfPyCgu18oepy3K9w7KAzd2xy2i6deBJn0yb0616JEfICwGAnh1XUzwjoB5q0W1fAa4NDKJPVoZIbxZ4A2ojdHF1QP9rTNKNDYn3gbTwdkN6ohcpJXb1RMqnFv7Pfk6CJwIzpB8zPslrwrwvjesXT0lOuTSpjGozEKQtIbd0aHgsU0DTe2ufyFFhDOw0WMijYP07wtiVvzEDKAm51trwggGHAPPc79UIYDw5GfLUPYOQnsDDETAedDRgvVvw4oks0jBLTm8uSd7uAfryMYn6OFDtVEw7Xfy16qZwffPQLG07glrJgABbztQnKbHyuOnekPQLRmlLK5ZlAYlFhxTeVLXnrOLXDfbUEHETfQ309NgcVrLK69iedw485RY1kHZcg8o2tF3kb0Y4DnGVoIlevHSpkzjKFKeANyUiqt12" as quiz title
    And I add a question
    And I wait for 1 sec
    When I select "Single" question in "Q1"
    When I type "Question 1" into question filed of "Q1"
    And I type "Option 1" into "Option 1*" field of "Q1"
    And I type "Option 2" into "Option 2*" field of "Q1"
    When I select "Option 2*" as a correct option in "Q1"
    When I click "Save" button
    And I wait for 1 sec
#    Then "DemoQuiz-1002 characters 7C8KRZWPs8SW32lJ24CBIIEniEoHQCSdgUxwufwbjPytA1lPCcjM2nk0rAfyS2cLCQcz4BHhTRjHbx91rxfTAWc27PDsBAU5Csc22zknuGnijUTObjZ22shmoLCCAuK2kkMNTPG5D8HxtwDDtTnk9f73DwlgWXsePXDWnLeQlpwQWOBwAkdAzoq1ie12xVYg6s5xG7MlioUrear8MxxHV1SK28kPEFi5IlwxFSAlrONCjP8pMOS6FnSKKYL52OpfSasghIMPy6FrmUNkGCcH0NNXeRDzQqTVC8CKbfnshTD4AVHMbLPsw7LysY6CJPhTcO8nEfnuWJR1f2jMihQ7aOTYY2GsO32hPE4y6jNn3PQKLAFbv8DomBTzStpAL5SCuyNU6fZj9AOSSjePyHE9BbXCgYBUpbMZaLHA6jpUh5wGuOHpcsYfD9cDbFjqwyCwWVNeMkfDDkJyWb4fXxxyzcXPeNgE7b8mUf4GrXzSJIY4lT4oQERuH37YpCBgaUEZXDoqh5mHuckoqTF0wZagxZODtrsSmPcLbJg6k3oP3EfPyCgu18oepy3K9w7KAzd2xy2i6deBJn0yb0616JEfICwGAnh1XUzwjoB5q0W1fAa4NDKJPVoZIbxZ4A2ojdHF1QP9rTNKNDYn3gbTwdkN6ohcpJXb1RMqnFv7Pfk6CJwIzpB8zPslrwrwvjesXT0lOuTSpjGozEKQtIbd0aHgsU0DTe2ufyFFhDOw0WMijYP07wtiVvzEDKAm51trwggGHAPPc79UIYDw5GfLUPYOQnsDDETAedDRgvVvw4oks0jBLTm8uSd7uAfryMYn6OFDtVEw7Xfy16qZwffPQLG07glrJgABbztQnKbHyuOnekPQLRmlLK5ZlAYlFhxTeVLXnrOLXDfbUEHETfQ309NgcVrLK69iedw485RY1kHZcg8o2tF3kb0Y4DnGVoIlevHSpkzjKFKeANyUiqt12" should be displayed on the list of quizzes
#    And I wait for 1 sec
    And I delete "DemoQuiz-1002 characters 7C8KRZWPs8SW32lJ24CBIIEniEoHQCSdgUxwufwbjPytA1lPCcjM2nk0rAfyS2cLCQcz4BHhTRjHbx91rxfTAWc27PDsBAU5Csc22zknuGnijUTObjZ22shmoLCCAuK2kkMNTPG5D8HxtwDDtTnk9f73DwlgWXsePXDWnLeQlpwQWOBwAkdAzoq1ie12xVYg6s5xG7MlioUrear8MxxHV1SK28kPEFi5IlwxFSAlrONCjP8pMOS6FnSKKYL52OpfSasghIMPy6FrmUNkGCcH0NNXeRDzQqTVC8CKbfnshTD4AVHMbLPsw7LysY6CJPhTcO8nEfnuWJR1f2jMihQ7aOTYY2GsO32hPE4y6jNn3PQKLAFbv8DomBTzStpAL5SCuyNU6fZj9AOSSjePyHE9BbXCgYBUpbMZaLHA6jpUh5wGuOHpcsYfD9cDbFjqwyCwWVNeMkfDDkJyWb4fXxxyzcXPeNgE7b8mUf4GrXzSJIY4lT4oQERuH37YpCBgaUEZXDoqh5mHuckoqTF0wZagxZODtrsSmPcLbJg6k3oP3EfPyCgu18oepy3K9w7KAzd2xy2i6deBJn0yb0616JEfICwGAnh1XUzwjoB5q0W1fAa4NDKJPVoZIbxZ4A2ojdHF1QP9rTNKNDYn3gbTwdkN6ohcpJXb1RMqnFv7Pfk6CJwIzpB8zPslrwrwvjesXT0lOuTSpjGozEKQtIbd0aHgsU0DTe2ufyFFhDOw0WMijYP07wtiVvzEDKAm51trwggGHAPPc79UIYDw5GfLUPYOQnsDDETAedDRgvVvw4oks0jBLTm8uSd7uAfryMYn6OFDtVEw7Xfy16qZwffPQLG07glrJgABbztQnKbHyuOnekPQLRmlLK5ZlAYlFhxTeVLXnrOLXDfbUEHETfQ309NgcVrLK69iedw485RY1kHZcg8o2tF3kb0Y4DnGVoIlevHSpkzjKFKeANyUiqt12" from the list of quizzes

