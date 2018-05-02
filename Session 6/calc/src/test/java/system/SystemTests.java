package system;

import base.BaseTest;
import org.openqa.selenium.ScreenOrientation;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.time.Duration;

public class SystemTests extends BaseTest {

    @Test
    public void runInBackground() {
        // We've just performed some operations
        this.calc.clickNumber("2");
        this.calc.performOperation("plus");
        this.calc.clickNumber("2");

        // Run the app in background
        this.driver.runAppInBackground(Duration.ofSeconds(10));

        // Verify text is still visible
        Assert.assertEquals(this.calc.getResult(), "2+2"
                , "Result is not visible after run in background.");
    }

    @Test
    public void rotate() {
        // We've just performed some operations
        this.calc.clickNumber("2");
        this.calc.performOperation("plus");
        this.calc.clickNumber("2");

        // Run in landscape
        this.driver.rotate(ScreenOrientation.LANDSCAPE);

        // Verify text is still visible
        Assert.assertEquals(this.calc.getResult(), "2+2"
                , "Result is not visible after rotation.");

        // Run in portrait
        this.driver.rotate(ScreenOrientation.PORTRAIT);

        // Verify text is still visible
        Assert.assertEquals(this.calc.getResult(), "2+2"
                , "Result is not visible after rotation.");
    }
}
