package definitions;

import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

public class LogInNataStepdefs {

    @Then("I should see the page title as {string}")
    public void iShouldSeeThePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("password error message {string} should be displayed")
    public void passwordErrorMessageShouldBeDisplayed(String errorMessage) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+errorMessage+"')]")).isDisplayed()).isTrue();

    }
}
