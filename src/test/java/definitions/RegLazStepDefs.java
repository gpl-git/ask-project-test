package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class RegLazStepDefs {
    @When("I type {string} into first name field ls")
    public void iTypeIntoFirstNameField(String fName) {
       getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(fName);
    }

    @And("I type {string} into last name field ls")
    public void iTypeIntoLastNameField(String lName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lName);
    }

    @And("I type {string} into group field ls")
    public void iTypeIntoGroupField(String group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(group);
    }

    @And("I type {string} into confirm password field ls")
    public void iTypeIntoConfirmPasswordField(String confPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confPassword);
    }
}

