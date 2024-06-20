package definitions;

import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static support.TestContext.getDriver;

public class QuizTitleStepDefs {
    @When("I clear the quiz title")
    public void iClearTheQuizTitle() {
        String quizTitle = getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).getAttribute("value");

        for(int i=0;i < quizTitle.length();i++) {
            getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.BACK_SPACE);
        }
    }
}
