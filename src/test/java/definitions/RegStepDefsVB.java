package definitions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
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
}
