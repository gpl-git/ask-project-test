package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizShowStopperDesf {
    @Given("I go to {string} page")
    public void iGoToPage(String url) {
        if (url.contains("login")) {
            getDriver().get("http://ask-qa.portnov.com/#/login");
        } else if (url.contains("registration")) {
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        } else {
            System.out.println("This site is not supported: " + url);
        }
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int sec) throws InterruptedException {
        Thread.sleep(sec * 1000);
    }

    @When("I type {string} to email field")
    public void iTypeToEmailField(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type {string} to password field")
    public void iTypeToPasswordField(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
    }

    @When("I click button {string}")
    public void iClickButton(String btnName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'" + btnName + "')]")).click();
    }

    @When("I click {string} menu item")
    public void iClickMenuItem(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'" + menuItem + "')]")).click();
    }

    @When("I type {string} as a quiz title")
    public void iTypeAsAQuizTitle(String quizTitle) {
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

    @And("I type {string} to question field in {string}")
    public void iTypeToQuestionFieldIn(String qText, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[@formcontrolname='question']")).sendKeys(qText);
    }

    @When("I type {string} to {string} field in {string}")
    public void iTypeToFieldIn(String oText, String oNum, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[@placeholder='" + oNum + "']")).sendKeys(oText);
    }

    @And("I select {string} as a correct option in {string}")
    public void iSelectAsACorrectOptionIn(String oNum, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[@placeholder='" + oNum + "']/../../../../..//mat-radio-button")).click();

    }

    @Then("I click {string} question in {string}")
    public void iClickQuestionIn(String qType, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[contains(text(),'" + qType + "')]")).click();
    }

    @Then("quiz {string} should be displayed on the list of quizzes")
    public void quizShouldBeDisplayedOnTheListOfQuizzes(String quizTitle) {
        List<WebElement> titles = getDriver().findElements(By.xpath("//mat-panel-title"));
        for (WebElement title : titles) {
            if (title.getText().contains(quizTitle)) {
                assertThat(title.isDisplayed()).isTrue();
            }
        }
    }
    @Then("I click on the quiz with title {string}")
    public void iClickOnTheQuizWithTitle(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+title+"')]")).click();
    }

    @And("I click quiz {string} button {string}")
    public void iClickQuizButton(String title, String btnName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+title+"')]/../../..//span[contains(text(),'"+btnName+"')]")).click();
    }

    @Then("Show-Stopper Question is displayed")
    public void showStopperQuestionIsDisplayed() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//p[contains(text(),'Show-Stopper Question')]")).isDisplayed()).isTrue();
    }

    @And("I delete quiz {string} from the list of quizzes")
    public void iDeleteQuizFromTheListOfQuizzes(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizTitle + "')]/../../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(100);
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
    }
}