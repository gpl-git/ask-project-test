package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;



import static support.TestContext.getDriver;

public class WebDriverStepDefs {
    @Given("I navigate to {string}")
    public void iNavigateTo(String url) {
        if (url.equals("google")) {
            getDriver().get("https://www.google.com/");
        } else if (url.equals("bing")) {
            getDriver().get("https://www.bing.com/");
        } else if (url.equals("sample")) {
            getDriver().get("https://skryabin.com/webdriver/html/sample.html");
        } else if (url.equals("converter")) {
            getDriver().get("https://www.unitconverters.net/");
        } else {
            System.out.println("This site is not supported: " + url);
        }
    }

    @Then("I print out page details")
    public void iPrintOutPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandle());
    }

    @And("I go back, forward, and refresh")
    public void iGoBackForwardAndRefresh() throws InterruptedException {
        getDriver().navigate().back();
        Thread.sleep(1000);
        getDriver().navigate().forward();
        Thread.sleep(1000);
        getDriver().navigate().refresh();
        Thread.sleep(1000);
    }
}
