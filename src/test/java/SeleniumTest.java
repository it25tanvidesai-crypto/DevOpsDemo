import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class SeleniumTest {

    @Test
    public void testHomePage() {

        WebDriver driver = new ChromeDriver();

        driver.get("http://localhost:8081/DevOpsDemo/");

        String title = driver.getTitle();

        assertEquals("DevOps Demo", title);

        driver.quit();
    }
}