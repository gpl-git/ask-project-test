package definitions;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

public class RegEmailStepDefs {
    @Then("email error should be displayed")
    public void emailErrorShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();
    }
}
