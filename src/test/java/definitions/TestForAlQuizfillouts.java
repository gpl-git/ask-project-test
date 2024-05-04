package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class TestForAlQuizfillouts {


    @Then("I select {int} question\\(s) and fill out all the fields")
    public void iSelectQuestionSAndFillOutAllTheFields(int numberOfAddedQuestions) throws InterruptedException {
        for (int i = 1; i <=numberOfAddedQuestions; i++) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + i + "')]")).isDisplayed();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + i + "')]")).click();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + i + "')]/../../..//*[contains(text(),'Textual')]")).isDisplayed();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q" + i + "')]/../../..//*[contains(text(),'Textual')]")).click();
            Thread.sleep(500);
//            assertThat(getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q"+i+"')]/../../..//*[@formcontrolname='question']")).isDisplayed()).isTrue();
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q"+i+"')]/../../..//*[@formcontrolname='question']")).click();
            Thread.sleep(500);
           getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q"+i+"')]/../../..//*[@formcontrolname='question']")).sendKeys("test");

        }
//        for (int i = 1; i <= numberOfAddedQuestions; i++) {
//            getDriver().findElement(By.xpath("//mat-panel-title//../../..//*[contains(text(),'Textual')]")).click();
//            getDriver().findElement(By.xpath("//mat-panel-title/../../..//*[@formcontrolname='question']")).sendKeys("test");
//
//
//        }
    }

    @Then("Element with expath should be present")
    public void elementWithExpathShouldBePresent() {
        getDriver().findElement(By.xpath("//button[@mat-raised-button]/..//*[contains(text(),'Save')]"));

    }

    @And("I click save")
    public void iClickSave() {
        getDriver().findElement(By.xpath("//button[@mat-raised-button]/..//*[contains(text(),'Save')]")).click();
    }
}
