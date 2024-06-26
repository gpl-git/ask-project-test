package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class QuizStepDefs {
    @Given("I open {string} page")
    public void iOpenPage(String url) {
        if (url.equals("login")) {
            getDriver().get("http://ask-qa.portnov.com/#/login");
        } else if (url.equals("registration")) {
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        } else {
            System.out.println("This site is not supported: " + url);
        }

    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(sec * 1000);
    }

    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type {string} into password field")
    public void iTypeIntoPasswordField(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
    }

    @When("I click {string} button")
    public void iClickButton(String btnName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'" + btnName + "')]")).click();
    }

    @Then("user role {string} should be displayed")
    public void userRoleShouldBeDisplayed(String expRole) {
        String actRole = getDriver().findElement(By.xpath("//div[@class ='info']")).getText();
        System.out.println(actRole);
        assertThat(actRole.contains(expRole)).isTrue();
    }

    @When("I click {string} menu item")
    public void iClickMenuItem(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'" + menuItem + "')]")).click();
    }

    @When("I type {string} as quiz title")
    public void iTypeAsQuizTitle(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizTitle);
    }

    @And("I add a question")
    public void iAddAQuestion() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).click();
    }

    @When("I select {string} question in {string}")
    public void iSelectQuestionIn(String qType, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[contains(text(),'" + qType + "')]")).click();
    }

    @When("I type {string} into question filed of {string}")
    public void iTypeIntoQuestionFiledOf(String qText, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[@formcontrolname='question']")).sendKeys(qText);

    }

    @And("I type {string} into {string} field of {string}")
    public void iTypeIntoFieldOf(String oText, String oNum, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[@placeholder='" + oNum + "']")).sendKeys(oText);
    }

    @When("I select {string} as a correct option in {string}")
    public void iSelectAsACorrectOptionIn(String oNum, String qNum) {
       getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']/../../../../..//mat-radio-button")).click();
    }

    @Then("{string} should be displayed on the list of quizzes")
    public void shouldBeDisplayedOnTheListOfQuizzes(String quizTitle) {
        List < WebElement> titles = getDriver().findElements(By.xpath("//mat-panel-title"));
        for (WebElement title: titles) {
            if(title.getText().contains(quizTitle)){
                assertThat(title.isDisplayed()).isTrue();
            }

        }
    }

    @And("I delete {string} from the list of quizzes")
    public void iDeleteFromTheListOfQuizzes(String quizTitle) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//ac-modal-confirmation/..//*[text()='Delete']")).click();

    }
}
