package definitions;

import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.hamcrest.Matchers.containsString;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class MoiseiStepDefs {
    @And("I select Show-Stopper option")
    public void iSelectShowStopperOption() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Show-Stopper')]")).click();
    }

    @And("I verify that Show-Stopper option is present")
    public void iVerifyThatShowStopperOptionIsPresent() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Preview')]")).click();

        String showstopper = getDriver().findElement(By.xpath("//p[contains(text(), 'Show-Stopper Question')]")).getText();
        assertThat(showstopper.contains(showstopper)).isTrue();

        getDriver().findElement(By.xpath("//span[contains(text(), 'Close')]")).click();
    }

    @And("I select second Show-Stopper option")
    public void iSelectSecondShowStopperOption() {
        getDriver().findElement(By.xpath("(//span[@class='bold'])[2]")).click();
    }

    @And("I verify that second Show-Stopper option is present")
    public void iVerifyThatSecondShowStopperOptionIsPresent() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Preview')]")).click();

        String showstopper2 = getDriver().findElement(By.xpath("//p[@class='show-stopper ng-star-inserted']")).getText();
        assertThat(showstopper2.contains(showstopper2)).isTrue();

        getDriver().findElement(By.xpath("//span[contains(text(), 'Close')]")).click();
    }

//    @And("I verify that Show-Stopper option is present MP")
//    public void iVerifyThatShowStopperOptionIsPresentMP() {
//        WebElement q1Element = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), 'Q1*')]"));
//
//        String q1Text = q1Element.getText();
//
//        assertThat("Star is not found near Q1*", q1Text, containsString("*").matches());
//    }
}

