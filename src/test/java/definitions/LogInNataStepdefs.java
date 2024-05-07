package definitions;

import io.cucumber.java.en.And;
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


    @Then("{string} field is masked and copy-paste is disabled")
    public void fieldIsMaskedAndCopyPasteIsDisabled(String password) {
        assertThat(getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).getAttribute("type")).isEqualTo(password);
    }

      @And("I should see the Teacher's role of the user")
    public void iShouldSeeTheTeacherSRoleOfTheUser() {
        assertThat(getDriver().findElement(By.xpath("//div[@class='info']")).getText().contains("TEACHER")).isTrue();
    }

    @And("I should see the Student's role of the user")
    public void iShouldSeeTheStudentSRoleOfTheUser() {
        assertThat(getDriver().findElement(By.xpath("//div[@class='info']")).getText().contains("STUDENT")).isTrue();
    }
}
