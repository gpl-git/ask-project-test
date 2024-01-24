package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Quiz_JoseDiazStepdefs {
    @Given("I open {string} for assignment control")
    public void iOpenForAssignmentControl(String myurl) {
        if(myurl.equals("login")){
            getDriver().get("http://ask-qa.portnov.com/#/login");
        }else if (myurl.equals("registration")){
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        }else {
            System.out.println("This website is not supported: " +myurl);
        }
    }

    @When("I click button {string} I must be as a Teacher")
    public void iClickButtonIMustBeAsATeacher(String arg0) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+arg0+"')]")).click();

    }

    @When("I click {string} menu item for creating a quiz")
    public void iClickMenuItemForCreatingAQuiz(String m_item) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+ m_item+"')]")).click();
        //getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @Then("url contains part of the text {string}")
    public void urlContainsPartOfTheText(String arg0) {
        String curUrl = getDriver().getCurrentUrl();
        assertThat(curUrl.contains(arg0)).isTrue();
    }

    @When("I click {string} in the Quizzes Page")
    public void iClickInTheQuizzesPage(String arg0) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+arg0+"')]")).click();
        //span[contains(text(),'Create New Quiz')]
      //  getDriver().findElement(By.xpath("//*[text()='Create New Quiz']")).click();
    }

    @When("I type {string} into title field for a Quiz")
    public void iTypeIntoTitleFieldForAQuiz(String arg0) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(arg0);

    }


    @And("I add a question to my quiz")
    public void iAddAQuestionToMyQuiz() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).click();
    }

    @When("I select {string} question in {string} for my Quiz")
    public void iSelectQuestionInForMyQuiz(String arg0, String arg1) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+arg1+"')]/../../..//*[contains(text(),'"+arg0+"')]")).click();

    }

    @And("I type {string} into question field of {string} for my Quiz")
    public void iTypeIntoQuestionFieldOfForMyQuiz(String arg0, String arg1) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+arg1+"')]/../../..//*[@formcontrolname='question']")).sendKeys(arg0);
    }

    @When("I type {string} into {string} of {string} for my Quiz")
    public void iTypeIntoOfForMyQuiz(String arg0, String arg1, String arg2) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+arg2+"')]/../../..//*[@placeholder='"+arg1+"']")).sendKeys(arg0);

    }


    @When("I select {string} as a correct option in {string} for my Quiz")
    public void iSelectAsACorrectOptionInForMyQuiz(String arg0, String arg1) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+arg1+"')]/../../..//*[@placeholder='"+arg0+"']/../../../../..//mat-radio-button")).click();

    }

    @Then("quiz {string} is displayed on the list of my quizzes")
    public void quizIsDisplayedOnTheListOfMyQuizzes(String arg0) {
        List<WebElement> titles = getDriver().findElements(By.xpath("//mat-panel-title"));
        for (WebElement element : titles) {
            if (element.getText().contains(arg0)) {
                assertThat(element.isDisplayed()).isTrue();
            }
        }
    }

    @And("I delete {string} from the list of my quizzes")
    public void iDeleteFromTheListOfMyQuizzes(String arg0) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+arg0+"')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+arg0+"')]/../../..//span[text()='Delete']")).click();
        getDriver().findElement(By.xpath("//ac-modal-confirmation/..//span[text()='Delete']")).click();

    }


//    @And("I select {string} for my Quiz")
//    public void iSelectForMyQuiz(String arg0) {
//        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-2-input']"));
//    }
} // Final

