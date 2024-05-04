package definitions;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.bytebuddy.utility.RandomString;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.assertj.core.api.Assertions;
import support.TestContext;


import static support.TestContext.getDriver;

public class MultipleOtherLeo {
    @Then("I click Other option checkbox")
    public void multiOther() {
        getDriver().findElement(By.xpath("//div[@class='mat-checkbox-inner-container']")).click();
    }

    @Then("I click on the quiz with title {string}")
    public void iClickOnTheQuizWithTitle(String title) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '" + title + "')]")).click();
    }

    @And("I click quiz {string} button {string}")
    public void iClickQuizButton(String title, String btn) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '" + title + "')]/../../..//span[contains(text(),'" + btn + "')]")).click();
    }

    @Then("other option is displayed")
    public void otherOptionIsDisplayed() {

        Assertions.assertThat(getDriver().findElement(By.xpath("//textarea[@placeholder='Other']")).isDisplayed()).isTrue();

    }

    @And("I select option {string} checkbox as a correct option in {string}")
    public void iSelectCheckboxAsACorrectOptionIn(String oNum, String qNum) {
        getDriver().findElement(By.xpath("(//label[@class='mat-checkbox-layout'])[" + oNum + "]")).click();
    }

    @Then("I confirm")
    public void iConfirm() {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
    }

    @When("I type {int} answers")
    public void iTypeAnswers(int numAns) {
        for (int i = 1; i <= numAns; i++) {
            if (i > 2) {
                getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper' and normalize-space()='Add Option']"))
                        .click();
            }
            getDriver().findElement(By.xpath("(//textarea[contains(@id, 'mat-input')])[" + (i + 1) + "]"))
                    .sendKeys(String.valueOf(i));


        }
    }


    @When("I type {int} symbols to {string} field in {string}")
    public void iTypeSymbolsToFieldIn(int iLong, String oNum, String qNum) {
        boolean useLet = true;
        boolean useNum = true;
        String symLong = RandomStringUtils.random(iLong, useLet, useNum);
        String xpath = "//mat-panel-title[contains(text(),'" + qNum + "')]/../../..//*[@placeholder='" + oNum + "']";
        getDriver().findElement(By.xpath(xpath)).sendKeys(symLong);
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String msg) {
//        getDriver().findElement(By.xpath("(//mat-error[contains(text(), 'This field is required')])[1]")).isDisplayed();
        switch (msg) {
            case "This field is required":
                getDriver().findElement(By.xpath("(//mat-error[contains(text(), 'This field is required')])[1]")).isDisplayed();
                break;
            case "*Choose at least one correct answer":
                getDriver().findElement(By.xpath("//div[contains(text(), 'one correct answer')]")).isDisplayed();
                break;

        }
    }
}
