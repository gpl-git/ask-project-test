package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class TextQueStepdefs {
    @When("ss click {string} menu item")
    public void ssClickMenuItem(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+ menuItem+"')]")).click();
    }

    @Then("url contains text {string} ss")
    public void urlContainsTextSs(String text) {
        String curUrl = getDriver().getCurrentUrl();
        assertThat(curUrl.contains(text)).isTrue();

    }

    @When("ss click button {string}")
    public void ssClickButton(String btnName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+btnName+"')]")).click();
    }

    @When("ss type {string} into title field")
    public void ssTypeIntoTitleField(String quizTitle) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(quizTitle);
    }

    @And("ss add a question")
    public void ssAddAQuestion() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).click();
    }

    @When("ss select {string} question in {string}")
    public void ssSelectQuestionIn(String qNum, String qType) {
       getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qType+"')]/../../..//*[contains(text(),'"+qNum+"')]")).click();
//        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), 'Q1')]/../../..//*[contains(text(), 'Textual')]")).click();

    }


    @And("ss type {int} character into question field of {string}")
    public void ssTypeIntoQuestionFieldOf(int number, String qNum) {
        boolean useletters = true;
        boolean usenumbers = true;
        String generatedStrings = RandomStringUtils.random(number,usenumbers,useletters);
        System.out.println(generatedStrings);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//*[@formcontrolname='question']")).sendKeys(generatedStrings);

    }

    @Then("error message should be displayed ss")
    public void errorMessageShouldBeDisplayedSs() {
        assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();

    }

    @And("ss type {string} into question field of {string}")
    public void ssTypeIntoQuestionFieldOf(String qNum, String qText) {
//        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//*[@formcontrolname='question']")).sendKeys(qText);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), 'Q1')]/../../..//*[contains(text(), 'Textual')]")).click();
    }


}


