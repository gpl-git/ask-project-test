package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class DmitryTextualStepdefs {



    @And("I verify {string} should appear in the question field")
    public void iVerifyShouldAppearInTheQuestionField(String QuestionName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + QuestionName + "')]"));
    }

    @And("I delete my quiz {string} from the list of quizzes")
    public void iDeleteMyQuizFromTheListOfQuizzes(String quizzTitle){
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizzTitle + "')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'" + quizzTitle + "')]/../../..//*[contains(text(),'Delete')]")).click();

    }

    @Then("Error message {string} under text field should appear")
    public void errorUnderTextFieldShouldAppear(String error) {
        getDriver().findElement(By.xpath("//mat-error[contains(text(),'" + error + "')]"));
    }
}
