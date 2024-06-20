package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;

public class SingleChoiceQuestionText_TatyanaStepDefs {

    WebDriverWait wait = new WebDriverWait(getDriver(), Duration.ofSeconds(5));

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String expErrorMessage) {
        String actErrorMessage = getDriver().findElement(By.xpath("//mat-error[contains(text(),'This field is required')]/../..")).getText();
        System.out.println(actErrorMessage);
        assertThat(actErrorMessage.contains(expErrorMessage)).isTrue();
    }

    @And("I wait for the {string} button to be displayed")
    public void iWaitForTheButtonToBeDisplayed(String buttonName) {
        By byXpath = By.xpath("//span[contains(text(),'" + buttonName + "')]");
        wait.until(ExpectedConditions.visibilityOfElementLocated(byXpath));

        assertThat(getDriver().findElement(byXpath).isDisplayed()).isTrue();
    }

    @And("I click {string} in the list of quizzes")
    public void iClickInTheListOfQuizzes(String quizTitle) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]")).click();
    }

    @Then("{string} should not be displayed on the list of quizzes")
    public void shouldBeDisplayedOnTheListOfQuizzes(String quizTitle) {
        List<WebElement> titles = getDriver().findElements(By.xpath("//mat-panel-title"));
        for (WebElement title: titles) {
            if(title.getText().contains(quizTitle)){
                assertThat(title.isDisplayed()).isFalse();
            }
        }
    }

    @When("I add up to {int} options in {string}")
    public void iAddUpToOptionsIn(int num, String qNum) {
        for (int i = 3; 1 <= num ; i++) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+qNum+"')]/../../..//span[contains(text(),'AddOption')]]")).click();
            getDriver().findElement(By.xpath(""));

        }
    }
}
