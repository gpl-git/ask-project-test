package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.maven.surefire.shared.lang3.RandomStringUtils;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class RomanGroupCodeStepdefs
{
    @Then("error message should show {string}")
    public void errorMessageShouldShow(String expError)
    {
        String actError = getDriver().findElement(By.xpath("//mat-form-field[5]/div[1]/div[3]/div[1]/mat-error")).getText();
        //body[1]/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-registration-page[1]/mat-card[1]/form[1]/mat-form-field[5]/div[1]/div[3]/div[1]/mat-error[1]
        System.out.println(actError);
        assertThat(actError.contains(expError)).isTrue();
    }
    @Given("I go to {string} page ASK QA")
    public void iGoToPageASKQA(String url)
    {
        if (url.contains("login")) {
            getDriver().get("http://ask-qa.portnov.com/#/login");
        } else if (url.contains("Registration")) {
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        } else {
            System.out.println("This site is not supported: " + url);
        }
    }

    @When("I type > 10 characters = {int}")
    public void iEnterAlphanumericCharacters(int number) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(number, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(generatedString);
    }

    @And("I click on register me button for error message to show up")
    public void iClickOnRegisterMeButton()
    {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }
    @Then("error message should appear {string}")
    public void errorMessageShouldAppear(String expError)
        {
            String actError = getDriver().findElement(By.xpath("//*[contains(text(),'"+expError+"')]")).getText();
            System.out.println(actError);
            assertThat(actError.contains(expError)).isTrue();
        }


    @And("I clear Group code field")
    public void iClearGroupCodeField()
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).clear();
    }

    @When("I enter {string}")
    public void iType(String whiteSp)
    {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(whiteSp);
    }

    @Then("Error message should show up {string}")
    public void errorMessageShouldShowUp(String expError)
    {
        String actError = getDriver().findElement(By.xpath("//input[@formcontrolname='group']/../../..//mat-error")).getText();
        System.out.println(actError);
        assertThat(actError.contains(expError)).isTrue();
    }

    @When("I type minimum allowed characters = {int}")
    public void iTypeMinimumAllowedCharacters(int minNumber)
    {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(minNumber, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(generatedString);
    }

    @Then("error message should not appear")
    public void errorMessageShouldNotAppear(boolean expError)
    {
        boolean actError = getDriver().findElement(By.xpath("//input[@placeholder='Group Code']/../../..")).isDisplayed();
//        System.out.println(actError);
    }

    @Then("error message should not appear {string}")
    public void errorMessageShouldNotAppear(String expError)
    {
        String actError = getDriver().findElement(By.xpath("//*[contains(text(),'"+expError+"')]")).getText();
        System.out.println(actError);
        assertThat(actError.contains(expError)).isFalse();
    }

    @Then("error message should not show {string}")
    public void errorMessageShouldNotShow(String expError)
    {
        String actError = getDriver().findElement(By.xpath("//mat-form-field[5]/div[1]/div[3]/div[1]/mat-error")).getText();
       System.out.println(actError);
        assertThat(actError.contains(expError)).isFalse();
    }

    @When("I type maximum allowed characters = {int}")
    public void iTypeMaximumAllowedCharacters(int maxNumber)
    {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(maxNumber, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(generatedString);
    }
}
