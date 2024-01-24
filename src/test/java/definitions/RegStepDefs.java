package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class RegStepDefs {
    @When("I type {string} into first name field")
    public void iTypeIntoFirstNameField(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);
    }

    @And("I type {string} into last name field")
    public void iTypeIntoLastNameField(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lName);
    }

    @And("I type {string} into group field")
    public void iTypeIntoGroupField(String group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(group);
    }

    @And("I type {string} into confirm password field")
    public void iTypeIntoConfirmPasswordField(String confPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confPassword);
    }

    @Then("confirmation message {string} is displayed")
    public void confirmationMessageIsDisplayed(String expMessage) {
        String actMessage = getDriver().findElement(By.xpath("//h4")).getText();
        assertThat(actMessage.equals(expMessage)).isTrue();
    }

    @Then("error message {string} is displayed")
    public void errorMessageIsDisplayed(String expError) {
        String actError = getDriver().findElement(By.xpath("//mat-error")).getText();
        System.out.println(actError);
        assertThat(actError.equals(expError)).isTrue();

    }
}
