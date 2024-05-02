package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class RegStepDefs {
    @When("I type {string} to fName field")
    public void iTypeToFNameField(String fName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);
    }

    @When("I type {string} to lName field")
    public void iTypeToLNameField(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lName);
    }

    @And("I type {string} to group field")
    public void iTypeToGroupField(String group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(group);
    }

    @And("I type {string} to confirm password field")
    public void iTypeToConfirmPasswordField(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(password);

    }

    @Then("message {string} should be displayed")
    public void messageShouldBeDisplayed(String expMessage) {
        String actMessage = getDriver().findElement(By.xpath("//h4")).getText();
        System.out.println(actMessage);
        assertThat(actMessage.equals(expMessage)).isTrue();

    }
}
