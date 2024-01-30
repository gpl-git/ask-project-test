package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;
public class SignStepdefs {
    @Given("ss type {string} page")
    public void ssTypePage(String url) {
        if (url.equals("login")) {
            getDriver().get("http://ask-qa.portnov.com/#/login");
        } else if (url.equals("registration")) {
            getDriver().get("http://ask-qa.portnov.com/#/registration");
        } else {
            System.out.println("This website is not supported" +url);
        }
    }

    @And("ss wait for {int} sec")
    public void ssWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(1000);
    }

    @When("ss type {string} into email field")
    public void ssTypeIntoEmailField(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("ss type {string} in password field")
    public void ssTypeInPasswordField(String password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);
    }

    @And("ss click {string} button")
    public void ssClickButton(String btnName) {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]" )).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'"+btnName+"')]")).click();
    }

    @Then("user role {string} is displayed ss")
    public void userRoleIsDisplayedSs(String role) {
        String actRole = getDriver().findElement(By.xpath("//div[@class = 'info']")).getText();
//        System.out.println(actRole);
        assertThat(actRole.contains(actRole)).isTrue();
    }

    @Then("error message {string} is displayed ss")
    public void errorMessageIsDisplayedSs(String expError) {
        String actError = getDriver().findElement(By.xpath("//mat-error")).getText();
        assertThat(actError.equals(expError)).isTrue();
    }
}