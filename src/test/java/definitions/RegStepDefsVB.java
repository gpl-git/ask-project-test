package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class RegStepDefsVB {
    @When("I click on link {string}")
    public void iClickOnLink(String forgotPassword) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'forgot')]")).click();
    }

    @Then("{string} window is displayed")
    public void windowIsDisplayed(String expMessage) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(), '"+expMessage+"')]")).isDisplayed());
    }

    @When("I type {int} symbols before @ sign and {string} into email field VB")
    public void iTypeSymblolsBeforeSignAndIntoEmailFieldVB(int numBeforeAt, String restEmail) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(numBeforeAt, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(generatedString + restEmail);
    }

    @When("I type {string} and {int} symbols after @ sign {string} into email field VB")
    public void iTypeAndSymblolsAfrterSignIntoEmailFieldVB(String beforeAt, int numAfterAt, String restEmail) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(numAfterAt, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(beforeAt + generatedString + restEmail);
    }

    @When("I type {string} and {int} symbols after . sign VB")
    public void iTypeAndSymbolsAfterSignVB(String beforeDot, int numAfterDot) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(numAfterDot, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(beforeDot + generatedString);
        System.out.println("created email: " + beforeDot + generatedString);
    }

    @When("I type {int} characters before @ sign, {int} characters after @ sign, . sign and {int} characters after . sign VB")
    public void iTypeCharactersBeforeSignCharactersAfterSignSignAndCharactersAfterSignVB(int numBeforeAt, int numAfterAt, int numAfterDot) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String genStringBeforeAt = RandomStringUtils.random(numBeforeAt, useLetters, useNumbers);
        String genStringAfterAt = RandomStringUtils.random(numAfterAt, useLetters, useNumbers);
        String genStringAfterDot = RandomStringUtils.random(numAfterDot, useLetters, useNumbers);
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(genStringBeforeAt + "@" + genStringAfterAt + "." + genStringAfterDot);
        System.out.println("created email: " + genStringBeforeAt + "@" + genStringAfterAt + "." + genStringAfterDot);
    }

    @And("snack bar {string} is displayed VB")
    public void snackBarIsDisplayedVB(String expError) {
        assertThat(getDriver().findElement(By.xpath("//snack-bar-container[@role='alert']")).isDisplayed()).isTrue();
    }
}
