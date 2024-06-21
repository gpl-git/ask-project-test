package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizTitleStepDefs {
    @When("I clear the quiz title")
    public void iClearTheQuizTitle() {
        String quizTitle = getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).getAttribute("value");

        for(int i=0;i < quizTitle.length();i++) {
            getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.BACK_SPACE);
        }
    }

    @And("the quiz {string} should not be displayed on the list of quizzes")
    public void theQuizShouldNotBeDisplayedOnTheListOfQuizzes(String quizTitle) {
        List<WebElement> titles = getDriver().findElements(By.xpath("//mat-panel-title"));
        for (WebElement title: titles) {
            if(title.getText().contains(quizTitle)){
                assertThat(title.isDisplayed()).isFalse();
            }

        }
    }
}
