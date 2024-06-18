package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class RegStepDefs {
    @When("I type {string} into first name field")
    public void iTypeIntoFirstNameField(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);
    }

    @When("I type {string} into last name field")
    public void iTypeIntoLastNameField(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lName);
    }

    @And("I type {string} into group field")
    public void iTypeIntoGroupField(String group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(group);

    }

    @When("I type {string} into confirmPassword field")
    public void iTypeIntoConfirmPasswordField(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(password);
    }

    @Then("confirmation message {string} should be displayed")
    public void confirmationMessageShouldBeDisplayed(String expMessage) {
        String confirmation = getDriver().findElement(By.xpath("//h4")).getText();
        assertThat(confirmation.contains(expMessage)).isTrue();
    }
}
