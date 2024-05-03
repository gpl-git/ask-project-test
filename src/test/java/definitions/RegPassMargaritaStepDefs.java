package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static javax.swing.text.html.CSS.getAttribute;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class RegPassMargaritaStepDefs {
    @And("I type {string} into confirm password field")
    public void iTypeIntoConfirmPasswordField(String confPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confPassword);
    }


    @Then("error message under confirm password field should be displayed")
    public void errorMessageUnderConfirmPasswordFieldShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']/../../..//mat-error")).isDisplayed()).isTrue();
    }

    @And("error message under confirm password field should be as {string}")
    public void errorMessageUnderConfirmPasswordFieldShouldBeAs(String expectedConfError) {
        String actualConfError = getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']/../../..//mat-error")).getText();
        System.out.println(actualConfError);
        assertThat(actualConfError.equals(expectedConfError)).isTrue();
    }


    @And("registration is not processed")
    public void registrationIsNotProcessed() {
        assertThat(getDriver().findElement(By.xpath("//h4[contains(text(),'Registration')]")).isDisplayed()).isTrue();
    }

    @Then("error message under password field should be displayed")
    public void errorMessageUnderPasswordFieldShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//input[@formcontrolname='password']/../../..//mat-error")).isDisplayed()).isTrue();
    }

    @And("error message under password field should be as {string}")
    public void errorMessageUnderPasswordFieldShouldBeAs(String expectedPassError) {
        String actualPassError = getDriver().findElement(By.xpath("//input[@formcontrolname='password']/../../..//mat-error")).getText();
        System.out.println(actualPassError);
        assertThat(actualPassError.equals(expectedPassError)).isTrue();
    }


    @Then("password field is masked and copy-paste is disabled")
    public void fieldIsMaskedAndCopyPasteIsDisabled() {
        assertThat(getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).getAttribute("type")).isEqualTo("password");
    }

    @Then("confirm password field is masked")
    public void fieldIsMasked() {
        assertThat(getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).getAttribute("type")).isEqualTo("password");
    }
}
