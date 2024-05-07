package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;


import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizTitleHelenStepdefs {
//    @Then("error message {string} should be displayed")
//    public void errorMessageShouldBeDisplayed(String errMessage) {
//        String actMessage = getDriver().findElement(By.xpath("//mat-error")).getText();
//        System.out.println(actMessage);
//        assertThat(actMessage.contains(errMessage)).isTrue();
//    }


    @And("I click anywhere next to the field")
    public void iClickAnywhereNextToTheField() {
        getDriver().findElement(By.xpath("//footer[@class='padded']")).click();
    }

    @Then("error message should be displayed")
    public void errorMessageShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();
    }

    @When("I type {int} alphanumeric characters as quiz title")
    public void iTypeAlphanumericCharactersAsQuizTitle(int numTitle) {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(numTitle, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(generatedString);
    }


    @Then("I verify comliance of {int} with Character Limit Requirement")
    public void iVerifyComlianceOfWithCharacterLimitRequirement(int numTitle) {
        if (numTitle < 1) {
            System.out.println("Error: Number of characters must be min 1");
            assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();
            String actMessage = getDriver().findElement(By.xpath("//mat-error")).getText();
            System.out.println("Actual Error message: " + actMessage);
        } else if (numTitle > 1000) {
//            The following step is failing. Known issue MAR24-327
            System.out.println("Error: Number of characters must be max 1000");
            assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();
            String actMessage = getDriver().findElement(By.xpath("//mat-error")).getText();
            System.out.println("Actual Error message: " + actMessage);
        } else {
            assertThat(getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).isDisplayed()).isTrue();
            System.out.println("All clear: character count is within acceptable range. 'Add Question' button is now available");
        }
    }


    @Then("I verify for non-Latin letters and digits in the field")
    public void iVerifyForNonLatinLettersAndDigitsInTheField() {
        String actTitle = getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).getAttribute("value");
        System.out.println("Actual Title: " + actTitle);
        boolean containsOnlyLatinLettersOrDigits = actTitle.matches("[a-zA-Z0-9\\s\\p{Punct}]+");
        if (containsOnlyLatinLettersOrDigits) {
            System.out.println("The title contains Alphanumeric & Sp. characters");
        } else {
//            The following step is failing. Known issue MAR24-464
            System.out.println("Error: The title contains INVALID characters.");
            assertThat(getDriver().findElement(By.xpath("//mat-error")).isDisplayed()).isTrue();
            String actMessage = getDriver().findElement(By.xpath("//mat-error")).getText();
            System.out.println("Actual Error message: " + actMessage);
        }
    }


    }

