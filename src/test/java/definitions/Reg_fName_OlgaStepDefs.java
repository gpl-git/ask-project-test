package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Reg_fName_OlgaStepDefs {
    @When("I type {string} to firstName field")
    public void iTypeToFirstNameField(String firstName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);
    }

    @Then("I wait for {string} seconds")
    public void iWaitForSeconds(int sec) throws InterruptedException {
        Thread.sleep(sec*1000);
    }

    @And("I click {string} button")
    public void iClickButton(String btnName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+btnName+"')]")).click();
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String expError) {
        String actError = getDriver().findElement(By.xpath("//*[contains(text(),'"+expError+"')]")).getText();
        System.out.println(actError);
        assertThat(actError.equals(expError)).isTrue();
    }


    @Then("bottom error message {string} should be displayed")
    public void btmErrorMessageShouldBeDisplayed(String expBtmError) {
        String actBtmError = getDriver().findElement(By.xpath("//div[@class='cdk-visually-hidden'][1]")).getText();
        System.out.println(actBtmError);
        assertThat(actBtmError.equals(expBtmError)).isTrue();
    }

    @When("I type {int} alphanumeric characters to firstName field")
    public void iTypeAlphanumericCharactersToFirstNameField(int num) {
    boolean useLetters = true;
    boolean useNumbers = true;
    String generatedString = RandomStringUtils.random(num, useLetters, useNumbers);
        System.out.println(generatedString);
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(generatedString);
    }


    @And("I type new email address to email field")
    public void iTypeNewEmailAddressToEmailField() {
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(23, useLetters, useNumbers);
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(generatedString+"@otpku.com");
    }

    @Then("err message {string} should be displayed")
    public void errMessageShouldBeDisplayed(String expMess) {
        String actMess = getDriver().findElement(By.xpath("//simple-snack-bar")).getText();
        System.out.println(actMess);
        assertThat(actMess.equals(expMess)).isTrue();
    }
}
