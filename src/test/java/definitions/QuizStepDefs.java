package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class QuizStepDefs {
    @Given("I open {string} page")
    public void iOpenPage(String url) {
        if(url.equals("login")){
            getDriver().get("http://ask-qa.portnov.com/#/login");
        }else if (url.equals("registration")){
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        }else {
            System.out.println("This website is not supported: " +url);
        }
    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(sec*1000);
    }

    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type {string} into password field")
    public void iTypeIntoPasswordFiled(String password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);
    }

    @When("I click button {string}")
    public void iClickButton(String btnName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+btnName+"')]")).click();
    }

    @Then("user role {string} is displayed")
    public void userRoleIsDisplayed(String expRole) {
        String actRole = getDriver().findElement(By.xpath("//div[@class ='info']")).getText();
//        System.out.println(actRole);
        assertThat(actRole.contains(actRole)).isTrue();


    }

    @When("I click {string} menu item")
    public void iClickMenuItem(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+ menuItem+"')]")).click();
    }

    @Then("url contains text {string}")
    public void urlContainsText(String text) {
        String curUrl = getDriver().getCurrentUrl();
        assertThat(curUrl.contains(text)).isTrue();
    }

    @When("I type {string} into title field")
    public void iTypeIntoTitleField(String quizTitle) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(quizTitle);
    }

    @And("I add a question")
    public void iAddAQuestion() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).click();
    }

    @When("I select {string} question in {string}")
    public void iSelectQuestionIn(String qType, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//*[contains(text(),'"+qType+"')]")).click();
    }

    @And("I type {string} into question field of {string}")
    public void iTypeIntoQuestionFieldOf(String qText, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//*[@formcontrolname='question']")).sendKeys(qText);
    }

    @When("I type {string} into {string} of {string}")
    public void iTypeIntoOf(String oText, String oNum, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//*[@placeholder='"+oNum+"']")).sendKeys(oText);
    }

    @When("I select {string} as a correct option in {string}")
    public void iSelectAsACorrectOptionIn(String oNum, String qNum) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//*[@placeholder='"+oNum+"']/../../../../..//mat-radio-button")).click();
    }

    @Then("quiz {string} is displayed on the list of quizzes")
    public void quizIsDisplayedOnTheListOfQuizzes(String title) {
      List < WebElement> titles = getDriver().findElements(By.xpath("//mat-panel-title"));
        for (WebElement element:titles){
            if (element.getText().contains(title)){
                assertThat(element.isDisplayed()).isTrue();
            }


        }
    }

    @And("I delete {string} from the list of quizzes")
    public void iDeleteFromTheListOfQuizzes(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+title+"')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+title+"')]/../../..//span[text()='Delete']")).click();
        getDriver().findElement(By.xpath("//ac-modal-confirmation/..//span[text()='Delete']")).click();
    }

}
