package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class StudentChangeNameStepdefs {


    @When("I type {string} in to name field")
    public void iTypeInToNameField(String newName) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-7']")).sendKeys(newName);
    }


}
