package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.opentelemetry.sdk.metrics.ViewBuilder;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import javax.swing.plaf.basic.BasicViewportUI;
import java.util.List;
import java.util.Objects;

import static org.apache.commons.lang3.ObjectUtils.notEqual;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class QuizCreationDefs {

    @Then("I create {int} more quizzes")
    public void iCreateMoreQuizzes(int arg0) throws InterruptedException {
        for (short i=1; i < arg0; i++) {
            getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']/button/span")).click();
            Thread.sleep(1000);

        }
    }

    @Then("I save quiz")
    public void iSaveQuiz() {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']/div/div/button[2]")).click();

    }

    @Then("I check that quiz was not created")
    public void iCheckThatQuizWasNotCreated() {
        String errorMessage = getDriver().findElement(By.xpath("//simple-snack-bar[contains(@class, 'ng-trigger-contentFade')]")).getText();
        assert notEqual(errorMessage, "Quiz is not completed. Check highlighted with \"red\" areas");
    }

    @Then("I create {int} more questions")
    public void iCreateQuestions(int arg0) throws InterruptedException {
        String optionNum = "Option";
        short optionNumber = 1;
        for (short i=1; i <= arg0; i++) {

            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+i+"')]/../../..//*[@formcontrolname='question']")).sendKeys("some question");

            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+i+"')]/../../..//*[@placeholder='"+optionNum + " " + optionNumber+ '*' +"']")).sendKeys("some option");

            optionNumber++;

            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+i+"')]/../../..//*[@placeholder='"+optionNum + " " + optionNumber + '*' +"']")).sendKeys("some second option");

            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+i+"')]/../../..//*[@placeholder='"+optionNum + " " + optionNumber + '*' +"']/../../../../..//mat-radio-button")).click();



            if (i < arg0) {
                getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']/button/span")).click();
                Thread.sleep(1000);
                getDriver().findElement(By.xpath("//mat-radio-group[@class='mat-radio-group ng-untouched ng-pristine ng-invalid']/mat-radio-button[2]")).click();
            }
            optionNumber--;



        }
    }
}
