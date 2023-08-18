package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class RegLnameArunaStepdefs {

    @When("I type {string} into first name field")
    public void iTypeIntoFirstNameField(String fname) {
        getDriver().findElement(By.xpath("//*[@formcontrolname = 'firstName']")).sendKeys(fname);
    }
    @When("I type {string} into  last name field")
    public void iTypeIntoLastNameField(String lname) {
        getDriver().findElement(By.xpath("//*[@formcontrolname = 'lastName']")).sendKeys(lname);
    }

    @And("I type {string} into group code field")
    public void iTypeIntoGroupCodeField(String grpcode) {
        getDriver().findElement(By.xpath("//*[@formcontrolname = 'group']")).sendKeys(grpcode);
    }

    @Then("I type {string} into confirm password field")
    public void iTypeIntoConfirmPasswordField(String confirmpswd) {
        getDriver().findElement(By.xpath("//*[@formcontrolname = 'confirmPassword']")).sendKeys(confirmpswd);
    }
}