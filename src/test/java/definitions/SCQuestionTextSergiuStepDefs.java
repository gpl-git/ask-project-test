package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SCQuestionTextSergiuStepDefs {
    @Then("text {string} should be displayed in the Question field")
    public void textShouldBeDisplayedInTheQuestionField(String text) {
        assertThat(getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + text + "')]/../../..//*[@formcontrolname='question']")).isDisplayed()).isTrue();
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String errMessage) {
        assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();
    }

    @When("I type {int} alphanumeric characters to question field in {string}")
    public void iTypeAlphanumericCharactersAsQuizTitle(int num, String qText) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(num, useLetters, useNumbers);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + qText + "')]/../../..//*[@formcontrolname='question']")).sendKeys(generatedString);
    }
}