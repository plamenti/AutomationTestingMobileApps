package base;

import calc.Calc;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.remote.AndroidMobileCapabilityType;
import io.appium.java_client.remote.AutomationName;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import org.openqa.selenium.Platform;
import org.openqa.selenium.ScreenOrientation;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeTest;

import java.io.File;
import java.io.IOException;
import java.net.URL;

public class BaseTest {

    protected AppiumDriver driver;

    // If you want you can hardcode a String value
    private String avd = System.getenv("AVD");

    protected Calc calc;

    @BeforeTest
    public void beforeTests() throws IOException {


        // Start Appium Server (simple)
        // AppiumDriverLocalService service = AppiumDriverLocalService
        //         .buildDefaultService();
        // service.start();

        // Start Appium server (complex)
        AppiumServiceBuilder serviceBuilder = new AppiumServiceBuilder()
                .withLogFile(new File("temp.log"))
                .usingAnyFreePort()
                .withIPAddress("127.0.0.1");
        AppiumDriverLocalService service =
                AppiumDriverLocalService.buildService(serviceBuilder);
        service.start();

        // Start Appium Client

        // Start with already running server
        //URL url = new URL("http://0.0.0.0:4723/wd/hub");

        // Start with service we initialized in lines above:
        URL url = service.getUrl();

        DesiredCapabilities cap = new DesiredCapabilities();

        // cap.setCapability("platformName", "android");
        // cap.setCapability("avd", this.avd);
        // cap.setCapability("deviceName", this.avd);
        // cap.setCapability("app", "https://github.com/dtopuzov/mobile-testing/raw/master/testapps/Calculator_2.0.apk");

        cap.setCapability(MobileCapabilityType.PLATFORM_NAME, Platform.ANDROID);
        cap.setCapability(MobileCapabilityType.AUTOMATION_NAME, AutomationName.ANDROID_UIAUTOMATOR2);

        // Run in emulator called ""
        cap.setCapability(AndroidMobileCapabilityType.AVD, this.avd);

        // To run it on device
        // cap.setCapability(MobileCapabilityType.UDID, "LGM200e653f06f");

        cap.setCapability(MobileCapabilityType.DEVICE_NAME, this.avd);
        cap.setCapability(MobileCapabilityType.APP, "https://github.com/dtopuzov/mobile-testing/raw/master/testapps/Calculator_2.0.apk");

        this.driver = new AppiumDriver(url, cap);

        this.calc = new Calc(this.driver);
    }

    @BeforeMethod
    public void beforeMethod() {
        this.driver.rotate(ScreenOrientation.PORTRAIT);
        this.calc.clean();
    }
}
